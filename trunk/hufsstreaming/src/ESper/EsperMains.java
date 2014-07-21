package ESper;

import com.espertech.esper.client.Configuration;
import com.espertech.esper.client.EPServiceProvider;
import com.espertech.esper.client.EPServiceProviderManager;
import com.espertech.esper.client.EPStatement;

public class EsperMains {
	public static void main(String[] args){
	
		Configuration config = new Configuration();
		config.addEventTypeAutoName("ProjectEX2");
		
		EPServiceProvider epService = EPServiceProviderManager.getDefaultProvider(config);
		String epl = "select * from FactoryLine output all every 2 seconds";
		EPStatement statement = epService.getEPAdministrator().createEPL(epl);
		
		
		EventListener listener = new EventListener();
		statement.addListener(listener);
			
		Runnable r2 = new ThreadY(epService);
		Thread t1= new Thread(r2);
		t1.start();
				
	}
}
