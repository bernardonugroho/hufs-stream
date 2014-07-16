package ProjectEX2;

import com.espertech.esper.client.Configuration;
import com.espertech.esper.client.EPServiceProvider;
import com.espertech.esper.client.EPServiceProviderManager;
import com.espertech.esper.client.EPStatement;

public class EsperMain {
	public static void main(String[] args){
	
		Configuration config = new Configuration();
		config.addEventTypeAutoName("ProjectEX2");
		
		EPServiceProvider epService = EPServiceProviderManager.getDefaultProvider(config);
		String epl = "select productID,process,machine from FactoryLine.win:time(30 sec)";
		EPStatement statement = epService.getEPAdministrator().createEPL(epl);
				
		EventListener listener = new EventListener();
		statement.addListener(listener);
		
		Runnable r1 = new ThreadX(epService);
		Runnable r2 = new ThreadY(epService);
		Thread t1= new Thread(r2);
		t1.start();
				
	}
}
