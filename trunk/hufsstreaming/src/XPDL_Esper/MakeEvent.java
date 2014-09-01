package XPDL_Esper;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.Multimap;

public class MakeEvent {

	Multimap<String, String> Activity = ArrayListMultimap.create();
	Multimap<String, String> ActivityTime = ArrayListMultimap.create();
	Multimap<String, String> ActivityMachine = ArrayListMultimap.create();

	Multimap<String, String> Machine = ArrayListMultimap.create();
	Multimap<String, String> Process = ArrayListMultimap.create();

	ArrayList StartPoint = new ArrayList();
	
	int ProductID;
	String SelectProcess;
	String SelectMachine;
	String ProcessTime;
	
	static double PT;
	static String CheckMachine;
	static String CheckProcess;
	
	Random rand = new Random();
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY hh:mm:ss");
	

	Timer timer;
	String Path;
	
	public MakeEvent(int RandomProductID, String Path) {
		this.Path = Path;
		
		SAXParserData SAXParsing = new SAXParserData(Path);

		SAXParsing.ReadData();

		Activity = SAXParsing.getActivity();
		ActivityTime = SAXParsing.getActivityTime();
		ActivityMachine = SAXParsing.getActivityMachine();

		Machine = SAXParsing.getMachine();
		Process = SAXParsing.getProcess();

		StartPoint = SAXParsing.getStartPoint();
		
		ProductID = RandomProductID;
	}

	public FactoryLine getStart() {
		
		Date nowDate = new Date();
		
		SelectProcess = null;
		SelectMachine = null;
		
		
		int RandomStartPoint = rand.nextInt(StartPoint.size());
		SelectProcess = (String) StartPoint.get(RandomStartPoint);
		ThreadY.ProIDProcess.put(ProductID, SelectProcess);
		
		//System.out.println(ProIDProcess);
		Set<String> keys = Machine.keySet();
		int RandomMachine;
		for (String key : keys) {
			if (key.equals(StartPoint.get(RandomStartPoint))) {
				RandomMachine = rand.nextInt(Machine.get(key).size());
				ArrayList ToArrayMachine = new ArrayList();
				ToArrayMachine.addAll(Machine.get(key));
				SelectMachine = (String) ToArrayMachine.get(RandomMachine);
				ThreadY.MachineProcess.put(ProductID, SelectMachine);
				break;
			}
		}

		Set<String> AT = ActivityTime.keySet();
		for (String key : AT) {
			if (key.equals(SelectProcess)) {

				ArrayList ATList = new ArrayList();

				ATList.addAll(ActivityTime.get(key));
				// System.out.println(ATList.get(0));
				ProcessTime = (String) ATList.get(0);

				break;
			}
		}

		Set<String> Act = Activity.keySet();
		for (String ActKey : Act) {
			if (ActKey.equals(SelectProcess)) {
				ArrayList SelectActivity = new ArrayList();

				SelectActivity.addAll(Activity.get(ActKey));
				SelectProcess = (String) SelectActivity.get(0);
				break;
			}
		}

		Set<String> Mach = Machine.keySet();
		for (String MachKey : Mach) {
			if (MachKey.equals(SelectMachine)) {
				ArrayList SelectMachineKey = new ArrayList();

				SelectMachineKey.addAll(Activity.get(MachKey));
				SelectMachine = (String) SelectMachineKey.get(0);
				break;
			}
		}

		String Time = sdf.format(nowDate);
		FactoryLine event = new FactoryLine(ProductID, SelectProcess,
				SelectMachine, Time);
		return event;
	}

	public FactoryLine getProcessing() {
		
		Date nowDate = new Date();
		
		SelectProcess = null;
		SelectMachine = null;
			
		Set<String> keys = Process.keySet();
		int RandomProcess;

		ArrayList CheckBeforeProcess = new ArrayList();

		for (String key : keys) {

			CheckBeforeProcess.addAll(ThreadY.ProIDProcess.get(ProductID));
			if (key.equals(CheckBeforeProcess.get(CheckBeforeProcess.size() - 1))) {
				RandomProcess = rand.nextInt(Process.get(key).size());
				ArrayList ToArrayProcess = new ArrayList();
				ToArrayProcess.addAll(Process.get(key));

				SelectProcess = (String) ToArrayProcess.get(RandomProcess);

				ThreadY.ProIDProcess.put(ProductID, SelectProcess);

				break;
			}

		}

		// System.out.println(SelectProcess);
		Set<String> AT = ActivityTime.keySet();

		for (String key : AT) {
			if (key.equals(SelectProcess)) {

				ArrayList ATList = new ArrayList();

				ATList.addAll(ActivityTime.get(key));
				//System.out.println("Time " + ATList.get(0));
				ProcessTime = (String) ATList.get(0);
				PT = Double.parseDouble(ProcessTime);
				break;
			}
		}

		// machine
		Set<String> keys2 = ActivityMachine.keySet();

		int RandomMachine;

		for (String key : keys2) {
			if (key.equals(SelectProcess)) {
				RandomMachine = rand.nextInt(ActivityMachine.get(key).size());
				ArrayList ToArrayMachine = new ArrayList();
				ToArrayMachine.addAll(ActivityMachine.get(key));
				SelectMachine = (String) ToArrayMachine.get(RandomMachine);
				ThreadY.MachineProcess.put(ProductID, SelectMachine);
				break;
			}
		}

		if (SelectProcess != null) {// && SelectMachine!=null

			Set<String> Act = Activity.keySet();
			for (String ActKey : Act) {
				if (ActKey.equals(SelectProcess)) {
					ArrayList SelectActivity = new ArrayList();
					SelectActivity.addAll(Activity.get(ActKey));
					SelectProcess = (String) SelectActivity.get(0);
					break;
				}
			}

			Set<String> Mach = Machine.keySet();
			for (String MachKey : Mach) {
				if (MachKey.equals(SelectMachine)) {
					ArrayList SelectMachineKey = new ArrayList();
					SelectMachineKey.addAll(Machine.get(MachKey));
					SelectMachine = (String) SelectMachineKey.get(0);
					break;
				}
			}
			
			CheckProcess = SelectProcess;
			CheckMachine = SelectMachine;
			
			String Time = sdf.format(nowDate);
			FactoryLine event = new FactoryLine(ProductID, SelectProcess,
					SelectMachine, Time);
			return event;
		}
		return null;
	}
}
