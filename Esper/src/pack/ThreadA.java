package pack;
import java.util.Random;

import com.espertech.esper.client.EPServiceProvider;


public class ThreadA implements Runnable{

	private EPServiceProvider epService;
	
	public ThreadA(EPServiceProvider epService){
		this.epService = epService;
		
	}
	
	@Override
	public void run() {
		long volume=0;
		while(true){
			try{
				Random rand = new Random();
				int rFactor = rand.nextInt();
				PriceEvent event = new PriceEvent("F9Z",10*rFactor,volume);
				epService.getEPRuntime().sendEvent(event);
				volume++;
				Thread.sleep(500);
			}
			catch (Exception e){
				e.printStackTrace();
			}
		}
		
	}

}
