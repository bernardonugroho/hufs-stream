package ESper;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import com.espertech.esper.client.EPServiceProvider;


public class ThreadY implements Runnable{
	private EPServiceProvider epService;
	String[][] data = new String[20][20];
	
	public ThreadY(EPServiceProvider epService){
		this.epService = epService;
		DataInput IO = new DataInput();
		IO.DoRead();
		data=IO.getData();
			
	}
	
	
	@Override
	public void run() {
		String ProIDProcess[][] = new String[11][4];//비효율적
		String Machine[][] = new String[11][3];
		while(true){
			try{
				
				Random rand = new Random();
				int RandomProductID = rand.nextInt(10)+1;
				
				
				String SelectProcess = null;
				String SelectMachine = null;
				
				//This is first Process
				if(ProIDProcess[RandomProductID][0]==null){
										
					ProIDProcess[RandomProductID][0] = "A";
					SelectProcess = "A";
					
					int RandomMahcineNum = rand.nextInt(3)+1;
					SelectMachine = "M" + RandomMahcineNum;
					
					Machine[RandomProductID][0] = SelectMachine;
					
					SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY hh:mm:ss");
					Date nowDate = new Date();
					String Time = sdf.format(nowDate);
					
					FactoryLine event = new FactoryLine(RandomProductID, SelectProcess, SelectMachine, Time);
					epService.getEPRuntime().sendEvent(event);
					
				}
				
				//이건 첫번째 후 두번 째 부터 프로세스야.
				else{
					for(int i=0; i<4; i++){
						if(ProIDProcess[RandomProductID][i]==null){
							if(ProIDProcess[RandomProductID][i-1].equals("D")){
								
								break;
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
				}
				
											
				Thread.sleep(300);
				
			}
			catch(Exception e){
				e.printStackTrace();
			}
		}
		
	}

}
