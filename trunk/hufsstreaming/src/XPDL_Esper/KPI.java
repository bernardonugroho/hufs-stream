package XPDL_Esper;

import com.espertech.esper.client.EventBean;

public class KPI {
	
	EventBean[] event;
	
	public KPI(EventBean[] event2){
		this.event = event2;
	}
	
	public void getValue(){
		event[1].get("Process");
		System.out.println(event[1].get("Process"));
	}
}
