package ProjectEX1;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import com.espertech.esper.client.EventBean;
import com.espertech.esper.client.UpdateListener;


public class EventListener implements UpdateListener{

	@Override
	public void update(EventBean[] newEvents, EventBean[] oldEvents) {
		Calendar cal = Calendar.getInstance();
    	cal.getTime();
    	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY HH:mm:ss");
    	
		EventBean event1 = newEvents[0];
		System.out.println("ID : "+event1.get("productID")+
							"    Process : "+event1.get("process") + 
							"    Machine : "+event1.get("machine") +
							"    Current Time : " + sdf.format(cal.getTime()));
				
	}
}

