package pack;
import com.espertech.esper.client.Configuration;
import com.espertech.esper.client.EPServiceProvider;
import com.espertech.esper.client.EPServiceProviderManager;
import com.espertech.esper.client.EPStatement;


public class Espermain {
	public static void main(String[] args){
		Configuration config = new Configuration();
		config.addEventTypeAutoName("pack");
		EPServiceProvider epService = EPServiceProviderManager.getDefaultProvider(config);
		String epl = "select symbolName,price,vol from PriceEvent.win:time(30 sec)";
		EPStatement statement = epService.getEPAdministrator().createEPL(epl);
		System.out.println("1");
		EventListener listener = new EventListener();
		statement.addListener(listener);
		Runnable r1 = new ThreadA(epService);
		Runnable r2 = new ThreadB(epService);
		Thread t1=new Thread(r1);
		Thread t2=new Thread(r2);
		t1.start();
		t2.start();
				
	}
}
