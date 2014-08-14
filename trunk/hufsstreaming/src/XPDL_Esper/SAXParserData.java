package XPDL_Esper;

import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.Multimap;

public class SAXParserData {
	
	ArrayList<String> ActivityTimeList = new ArrayList();
	ArrayList StartPoint = new ArrayList();

	Multimap<String, String> Activity = ArrayListMultimap.create();
	Multimap<String, String> ActivityTime = ArrayListMultimap.create();
	Multimap<String, String> ActivityMachine = ArrayListMultimap.create();

	Multimap<String, String> Machine = ArrayListMultimap.create();
	Multimap<String, String> Process = ArrayListMultimap.create();
	
	public void ReadData() {

		try {
			SAXParserFactory parserFactor = SAXParserFactory.newInstance();
			SAXParser parser = parserFactor.newSAXParser();
			SAXHandler handler = new SAXHandler();
			parser.parse("Diagram1.xpdl", handler);
			// parser.parse(ClassLoader.getSystemResourceAsStream("xml/employee.xml"),
			// handler);

			// Printing the list of employees obtained from XML
			

			for (Time emp : handler.TimeList) {
				ActivityTimeList.add(emp.ActivityTime);
			}

			int i = 0;
			for (Activity emp : handler.ActivityList) {
				Activity.put(emp.Id, emp.act);
				if (!emp.act.equalsIgnoreCase("Start") && !emp.act.equalsIgnoreCase("End")) {
					ActivityMachine.putAll(emp.Id, emp.machine);
					ActivityTime.put(emp.Id, ActivityTimeList.get(i));
					i++;
				}
			}
			
			for (Machine emp : handler.MachineList) {
				Machine.put(emp.Id, emp.Machine);
			}

			for (Transition emp : handler.TransitionList) {
				Process.put(emp.From, emp.To);
				if (!StartPoint.contains(emp.From))
					StartPoint.add(emp.From);
			}

			for (int j = 0; j < Process.values().size(); j++) {
				for (int j1 = 0; j1 < StartPoint.size(); j1++) {
					if (Process.containsValue(StartPoint.get(j1)) == true) {
						StartPoint.remove(StartPoint.get(j1));
					}
				}
			}
			
		} catch (Exception ex) {
			
			ex.printStackTrace();
		}
	}
	
	public Multimap getActivity(){
		return Activity;
	}
	
	public Multimap getActivityTime(){
		return ActivityTime;
	}
	
	public Multimap getActivityMachine(){
		return ActivityMachine;
	}
	
	public Multimap getMachine(){
		return Machine;
	}
	
	public Multimap getProcess(){
		return Process;
	}
	
	public ArrayList getStartPoint(){
		return StartPoint;
	} 
	
	/**
	 * The Handler for SAX Events.
	 */
	class SAXHandler extends DefaultHandler {

		List<Activity> ActivityList = new ArrayList<>();
		List<Machine> MachineList = new ArrayList<>();
		List<Time> TimeList = new ArrayList<>();
		List<Transition> TransitionList = new ArrayList<>();

		Activity proc = null;
		Machine mach = null;
		Time ProcTime = null;
		Transition Tran = null;

		String content = null;
		String NullCheck;

		@Override
		// Triggered when the start of tag is found.
		public void startElement(String uri, String localName, String qName,
				Attributes attributes) throws SAXException {

			switch (qName) {
			// Create a new Employee object when the start tag is found
			case "Activity":
				proc = new Activity();
				proc.Id = attributes.getValue("Id");
				proc.act = attributes.getValue("Name");
				break;
			case "Participant":
				mach = new Machine();
				mach.Id = attributes.getValue("Id");
				mach.Machine = attributes.getValue("Name");
				break;
			case "ExtendedAttribute":
				NullCheck = attributes.getValue("Value");

				if (NullCheck != null) {
					ProcTime = new Time();
					ProcTime.ActivityTime = NullCheck;
				}
				break;
			case "Transition":
				Tran = new Transition();
				Tran.From = attributes.getValue("From");
				Tran.To = attributes.getValue("To");
				break;
			}

		}

		@Override
		public void endElement(String uri, String localName, String qName)
				throws SAXException {
			switch (qName) {
			// Add the employee to list once end tag is found
			case "Activity":
				ActivityList.add(proc);
				break;
			// For all other end tags the employee has to be updated.
			case "Performer":
				proc.machine.add(content);
				break;
			case "Participant":
				MachineList.add(mach);
				break;
			case "ExtendedAttribute":
				if (NullCheck != null) {
					TimeList.add(ProcTime);
				}
				break;
			case "Transition":
				TransitionList.add(Tran);
				break;
			/*
			 * case "name": proc.name = content; break; case "gender":
			 * proc.gender = content; break; case "role": proc.role = content;
			 * break;
			 */
			}
		}

		@Override
		public void characters(char[] ch, int start, int length)
				throws SAXException {
			content = String.copyValueOf(ch, start, length).trim();
		}
		
		
	}
}
