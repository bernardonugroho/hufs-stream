package ProjectEX1;
import java.util.Random;


import com.espertech.esper.client.EPServiceProvider;


public class ThreadA implements Runnable{

	private EPServiceProvider epService;
	
	public ThreadA(EPServiceProvider epService){
		this.epService = epService;
		
	}
	
	@Override
	public void run() {
		int i = 1;
		int[] count = new int[100];
		String[][] ArrayIDvalue = new String[100][6];
		while(true){
			try{
				
				Random rand = new Random();
				int RandomID = rand.nextInt(5)+i;
				int RandomActivityNum = rand.nextInt(6);
				int RandomMachineNum = 0;
				
				String[] Activity = new String[6];
				Activity[0] = "A";
				Activity[1] = "B";
				Activity[2] = "C";
				Activity[3] = "D";
				Activity[4] = "E";
				Activity[5] = "F";
	
				String SelectActivity = Activity[RandomActivityNum];
				
				
				String[] Machine = new String[16];
				for(int j =0; j<16;j++){
					Machine[j] = "M"+(j);
				}
				
				if(SelectActivity.equals("A")){
					RandomMachineNum = rand.nextInt(3)+1;
				}
				else if(SelectActivity.equals("B")){
					RandomMachineNum = 4;
				}
				else if(SelectActivity.equals("C")){
					RandomMachineNum = rand.nextInt(5)+5;
				}
				else if(SelectActivity.equals("D")){
					RandomMachineNum = 5;
				}
				else if(SelectActivity.equals("E")){
					RandomMachineNum = rand.nextInt(3)+11;
				}
				else if(SelectActivity.equals("F")){
					RandomMachineNum = rand.nextInt(2)+14;
				}
				
				String SelectMachine = Machine[RandomMachineNum];
				
				ArrayIDvalue[RandomID][RandomActivityNum] = SelectActivity;
					
				count[RandomID] = count[RandomID] + 1;
					
				if(count[RandomID] == 5){
					i++;					
				}
					
				ProductLine event = new ProductLine(RandomID, SelectActivity, SelectMachine);
					
				epService.getEPRuntime().sendEvent(event);
				
				
				Thread.sleep(500);
			}
			
			catch (Exception e){
				e.printStackTrace();
			}
		}
		
	}

}
