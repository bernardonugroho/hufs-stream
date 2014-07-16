package ProjectEX2;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;

import com.espertech.esper.client.EPServiceProvider;


public class ThreadX implements Runnable{
	private EPServiceProvider epService;
	String[][] data = new String[20][20];
	
	public ThreadX(EPServiceProvider epService){
		this.epService = epService;
		DataInput IO = new DataInput();
		IO.DoRead();
		data=IO.getData();
			
	}
	
	
	@Override
	public void run() {
		String ProIDProcess[][] = new String[11][4];//비효율적
		Calendar cal = Calendar.getInstance();
    	
		
    	
		while(true){
			try{
				
				Random rand = new Random();
				int RandomProductID = rand.nextInt(10)+1;
				int SelectProcessNum = 0;
				String SelectProcess = null;
				
				//This is first Process
				if(ProIDProcess[RandomProductID][0]==null){
										
					ProIDProcess[RandomProductID][0] = "A";
					SelectProcess = "A";
					
					FactoryLine event = new FactoryLine(RandomProductID, SelectProcess, SelectProcess);
					epService.getEPRuntime().sendEvent(event);
					
				}
				
				//이건 첫번째 후 두번 째 부터 프로세스야.
				else{
					for(int i=0; i<4; i++){
						if(ProIDProcess[RandomProductID][i]==null){
							if(ProIDProcess[RandomProductID][i-1].equals("D")){
								break;
							}
							
							int CaseNum = 0;
							String Case[] = new String[5];//비효율적
							
							for(int j=0; j<data.length; j++){
								if(ProIDProcess[RandomProductID][i-1].equals(data[j][0])){
									Case[CaseNum] = data[j][1];
									CaseNum++;
								}
							}
							
							SelectProcessNum = rand.nextInt(CaseNum);
							ProIDProcess[RandomProductID][i] = Case[SelectProcessNum];
							SelectProcess = Case[SelectProcessNum];
							
							FactoryLine event = new FactoryLine(RandomProductID, SelectProcess, SelectProcess);
							epService.getEPRuntime().sendEvent(event);
							
							break;
						}
					}
				}
								
				Thread.sleep(500);
				
			}
			catch(Exception e){
				e.printStackTrace();
			}
		}
		
	}

}
