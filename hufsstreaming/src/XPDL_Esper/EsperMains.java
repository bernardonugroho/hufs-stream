package XPDL_Esper;

import com.espertech.esper.client.Configuration;
import com.espertech.esper.client.EPServiceProvider;
import com.espertech.esper.client.EPServiceProviderManager;
import com.espertech.esper.client.EPStatement;


public class EsperMains {
	//public static void main(String[] args){
	public String[] proc = new String[50000];
	public String name ;
	String Path;
	
	//this will contain the string notifications from the beginning of the running time
	public StringBuilder notifContainer;
	
	public void EsperMains(String Path){
		
		this.Path = Path;
		
		Configuration config = new Configuration();
		config.addEventTypeAutoName("XPDL_Esper");
		
		EPServiceProvider epService = EPServiceProviderManager.getDefaultProvider(config);
		
		String epl = "select * from FactoryLine ";//  output all every 2 seconds
		EPStatement statement = epService.getEPAdministrator().createEPL(epl);
		
		notifContainer = new StringBuilder();
		EventListener listener = new EventListener(notifContainer);
		
		statement.addListener(listener);
		
		//this.proc[0] = listener.proc[0];
		
		
		//Runnable r1 = new ThreadX(epService);
		Runnable r2 = new ThreadY(epService, Path);
		Thread t1= new Thread(r2);
		t1.start();
		//name = t1.getName();
		
		new Thread(new Runnable() {
			public void run() {
				while(true)
				try {
					Thread.sleep(1000);
					System.out.println(" �ӢӢӢӢӢ� "+notifContainer.toString());
					Thread.currentThread().getName();
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}).start();
		
	}
	
	public String getNotifContainer()
	{

		return notifContainer.toString();
	}
	
}
