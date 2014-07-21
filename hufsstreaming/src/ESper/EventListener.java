package ESper;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import com.espertech.esper.client.EventBean;
import com.espertech.esper.client.UpdateListener;

public class EventListener implements UpdateListener{

	@SuppressWarnings("null")
	@Override
	public void update(EventBean[] newEvents, EventBean[] oldEvents) {
		Calendar cal = Calendar.getInstance();
    	cal.getTime();
    	//SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY hh:mm:ss");
    	
    	EventBean[] event = new EventBean[newEvents.length];
    	
    	for(int i=0; i<newEvents.length; i++){
    		event[i] = newEvents[i];
    	}
		
		
		//System.out.println(event1);
		
		for(int i =0; i<5; i++){
		System.out.println("productID : "+event[i].get("productID")+
							"    process : "+event[i].get("process") + 
							"	 Machine : "+event[i].get("machine") + 
							"    Time : " + event[i].get("time"));
		}
		
	}

}
