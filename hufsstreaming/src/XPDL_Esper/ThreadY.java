package XPDL_Esper;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;

import com.espertech.esper.client.EPServiceProvider;
import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.Multimap;


public class ThreadY implements Runnable{
	private EPServiceProvider epService;
//	private StringBuilder notifContainer;
	
	Multimap<String, String> Activity = ArrayListMultimap.create();
	Multimap<String, String> ActivityTime = ArrayListMultimap.create();
	Multimap<String, String> ActivityMachine = ArrayListMultimap.create();

	Multimap<String, String> Machine = ArrayListMultimap.create();
	Multimap<String, String> Process = ArrayListMultimap.create();
	
	//Multimap<String, String> ProcessMap = ArrayListMultimap.create();
	//Multimap<String, String> MachineMap = ArrayListMultimap.create();
	
	Multimap<Integer, String> ProIDProcess = ArrayListMultimap.create();
	Multimap<Integer, String> MachineProcess = ArrayListMultimap.create();
	
	ArrayList StartPoint = new ArrayList();
	ArrayList CheckDuplicationPID = new ArrayList();
	
	public ThreadY(EPServiceProvider epService/*, StringBuilder notifContainer*/){
		this.epService = epService;
//		this.notifContainer = notifContainer;
		
		SAXParserData SAXParsing = new SAXParserData();
		
		SAXParsing.ReadData();
		
		Activity = SAXParsing.getActivity();
		ActivityTime = SAXParsing.getActivityTime();
		ActivityMachine = SAXParsing.getActivityMachine();
		
		Machine = SAXParsing.getMachine();
		Process = SAXParsing.getProcess();
		
		StartPoint = SAXParsing.getStartPoint();
		System.out.println(Machine);
		
	}
		
	@Override
	public void run() {
				
		while(true){
			try{
				String SelectProcess = null;
				String SelectMachine = null;
				
				//제품 번호 랜덤 10개까지
				Random rand = new Random();
				int RandomProductID = rand.nextInt(10)+1;
				
				if(!CheckDuplicationPID.contains(RandomProductID)){
					CheckDuplicationPID.add(RandomProductID);
									
					int RandomStartPoint = rand.nextInt(StartPoint.size());
					SelectProcess = (String) StartPoint.get(RandomStartPoint);
					
					
					
					ProIDProcess.put(RandomProductID, SelectProcess);
										
					Set<String> keys = Machine.keySet();
					
					int RandomMachine;
					
					for (String key : keys) {
						if(key.equals(StartPoint.get(RandomStartPoint))){
							
							RandomMachine = rand.nextInt(Machine.get(key).size());
							
							ArrayList ToArrayMachine = new ArrayList();
							
							ToArrayMachine.addAll(Machine.get(key));
							SelectMachine =  (String) ToArrayMachine.get(RandomMachine);
							
							MachineProcess.put(RandomProductID, SelectMachine);
							
							
							break;
						}
					}
								
					SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY hh:mm:ss");
					Date nowDate = new Date();
					String Time = sdf.format(nowDate);
					
					Set<String> Act = Activity.keySet();
										
					for (String ActKey : Act) {
						if(ActKey.equals(SelectProcess)){
							ArrayList SelectActivity = new ArrayList();
							
							SelectActivity.addAll(Activity.get(ActKey));
							SelectProcess = (String) SelectActivity.get(0);						
							break;
						}
					}
					
					Set<String> Mach = Machine.keySet();
					
					for (String MachKey : Mach) {
						if(MachKey.equals(SelectMachine)){
							ArrayList SelectMachineKey = new ArrayList();
							
							SelectMachineKey.addAll(Activity.get(MachKey));
							SelectMachine = (String) SelectMachineKey.get(0);						
							break;
						}
					}
					
					FactoryLine event = new FactoryLine(RandomProductID, SelectProcess, SelectMachine, Time);
//					notifContainer.append(event.getProductID()).append(" | ");
//					notifContainer.append(event.getProcess()).append(" | ");
//					notifContainer.append(event.getMachine()).append(" | ");
//					notifContainer.append(event.getTime()).append("\n +!+!");
					epService.getEPRuntime().sendEvent(event);
					
				}
				
				else{
					
					//process
					
					Set<String> keys = Process.keySet();
					int RandomProcess;
					
					ArrayList CheckBeforeProcess = new ArrayList();

					for (String key : keys) {
						
						CheckBeforeProcess.addAll(ProIDProcess.get(RandomProductID));
											
						if(key.equals(CheckBeforeProcess.get(CheckBeforeProcess.size()-1))){
							
							RandomProcess = rand.nextInt(Process.get(key).size());
		
							ArrayList ToArrayProcess = new ArrayList();
							ToArrayProcess.addAll(Process.get(key));
							
							SelectProcess =  (String) ToArrayProcess.get(RandomProcess);
						
							ProIDProcess.put(RandomProductID, SelectProcess);
							
							break;
						}
						
					}
					
					//machine
					Set<String> keys2 = ActivityMachine.keySet();
					
					int RandomMachine;
					
					for (String key : keys2) {
						if(key.equals(SelectProcess)){
							
							RandomMachine = rand.nextInt(ActivityMachine.get(key).size());
							
							ArrayList ToArrayMachine = new ArrayList();
							
							ToArrayMachine.addAll(ActivityMachine.get(key));
							SelectMachine =  (String) ToArrayMachine.get(RandomMachine);
							
							MachineProcess.put(RandomProductID, SelectMachine);
							
							
							break;
						}
					}
					
					
					
					if(SelectProcess!=null ){//&& SelectMachine!=null
											
						SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY hh:mm:ss");
						Date nowDate = new Date();
						String Time = sdf.format(nowDate);
						
						Set<String> Act = Activity.keySet();
						
						for (String ActKey : Act) {
							if(ActKey.equals(SelectProcess)){
								ArrayList SelectActivity = new ArrayList();
								
								SelectActivity.addAll(Activity.get(ActKey));
								SelectProcess = (String) SelectActivity.get(0);						
								break;
							}
						}
						
						Set<String> Mach = Machine.keySet();
						
						for (String MachKey : Mach) {
							if(MachKey.equals(SelectMachine)){
								ArrayList SelectMachineKey = new ArrayList();
								
								SelectMachineKey.addAll(Machine.get(MachKey));
								SelectMachine = (String) SelectMachineKey.get(0);						
								break;
							}
						}
						
						FactoryLine event = new FactoryLine(RandomProductID, SelectProcess, SelectMachine, Time);
						epService.getEPRuntime().sendEvent(event);
						
					}
				}
				
				/*}
				
				else{
					break;
				}*/
					/*for(int i=0; i<4; i++){
						if(ProIDProcess.get(i)==null){
							if(ProIDProcess.get(i-1).equals("D")){
								
								break;
							}
							
							else{
								
							}
							}
							switch (Machine[RandomProductID][i-1]) {
								case "M1" : ProIDProcess[RandomProductID][i] = "B" ;
										break;
								case "M2" : ProIDProcess[RandomProductID][i] = "B";
								break;
								case "M3" : ProIDProcess[RandomProductID][i] = "C";
								break;
								case "M4" : ProIDProcess[RandomProductID][i] = "C";
								break;
								case "M5" : ProIDProcess[RandomProductID][i] = "D";
								break;
								case "M6" : ProIDProcess[RandomProductID][i] = "D";
								break;
								default : System.out.println("Error");
							}
							
							SelectProcess = ProIDProcess[RandomProductID][i];
														
							switch (SelectProcess) {
							case "B" : Machine[RandomProductID][i] = "M3";
								SelectMachine = "M3";
								break;
							case "C" : 
								int RandomMahcineNum = rand.nextInt(2)+5;
								SelectMachine = "M" + RandomMahcineNum;
								Machine[RandomProductID][i] = SelectMachine;
								break;
							case "D" :
								SelectMachine = "X";
								break;
							default : System.out.println("Error");
							}
							
							SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY hh:mm:ss");
							Date nowDate = new Date();
							String Time = sdf.format(nowDate);
							
							FactoryLine event = new FactoryLine(RandomProductID, SelectProcess, SelectMachine, Time);
							epService.getEPRuntime().sendEvent(event);
							
							break;
						}
					}
				}*/
															
				Thread.sleep(300);
				
			}
			catch(Exception e){
				
				e.printStackTrace();
			}
		}
		
	}

}
