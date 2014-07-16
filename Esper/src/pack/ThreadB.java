package pack;
import java.util.Random;

import com.espertech.esper.client.EPServiceProvider;


public class ThreadB implements Runnable{

	private EPServiceProvider epService;
	
	public ThreadB(EPServiceProvider epService){
		this.epService = epService;
	}
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		long volume =0;
		while(true){
			try{
				Random rand = new Random();
				int rFactor=rand.nextInt();
				PriceEvent event = new PriceEvent("USD9Z", 10*rFactor,volume);
				epService.getEPRuntime().sendEvent(event);
				volume++;
				Thread.sleep(700);
				
			}
			catch (Exception e){
				e.printStackTrace();
			}
		
		}
	}
	
	
}
