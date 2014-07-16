package pack;

import com.espertech.esper.client.EventBean;
import com.espertech.esper.client.UpdateListener;


public class EventListener implements UpdateListener{

	@Override
	public void update(EventBean[] newEvents, EventBean[] oldEvents) {
		EventBean event1 = newEvents[0];
		System.out.println("symbol : "+event1.get("symbolName")+
							" price : "+event1.get("price")+
							" volume : "+event1.get("vol"));
				
	}
}

