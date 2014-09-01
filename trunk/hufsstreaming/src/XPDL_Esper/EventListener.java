package XPDL_Esper;

import java.util.*;

import com.espertech.esper.client.EventBean;
import com.espertech.esper.client.UpdateListener;

import java.sql.*;

public class EventListener implements UpdateListener{

	public String[] proc = new String[50];
	public StringBuilder pr = new StringBuilder();
	public StringBuilder notifContainer = new StringBuilder();

	public EventListener(StringBuilder notifContainer){
		this.notifContainer = notifContainer;
	}
	
	@Override
	public void update(EventBean[] newEvents, EventBean[] oldEvents) {
		
		Connection conn = null;   
		String url = "jdbc:mysql://203.253.70.34:3306/bpi";        
		String id = "cmpteam";                                                   
		String pw = "!cmpteam";                                                
		String Data_label = "";
		Statement stmt = null;
		       
		try{

			Class.forName("com.mysql.jdbc.Driver");                

		conn=DriverManager.getConnection(url,id,pw);              

		stmt = conn.createStatement();
		
		
		int message = 0;
		
    	EventBean[] event = new EventBean[newEvents.length];
    	
    	for(int i=0; i<newEvents.length; i++){
    		event[i] = newEvents[i];
    	}
		
    	//System.out.println(event1);
		
		for(int i =0; i<newEvents.length; i++){
			
		String caseid = String.valueOf(event[i].get("productID"));
		String activity = (String) event[i].get("process");
		String machine = (String) event[i].get("machine");
		String time = (String) event[i].get("time");
		
		String query_str = "insert into bpi.manuf (caseid, activity, machine, time) values ('"+caseid+"','"+activity+"', '"+machine+"','"+time+"')";
		
		message = stmt.executeUpdate(query_str);

		
		
		pr.append(event[i].get("process"));
		String out = " -- productID : "+event[i].get("productID")+
				"    process : "+event[i].get("process") + 
				"	 Machine : "+event[i].get("machine") + 
				"    Time : " + event[i].get("time");
//		System.out.println("productID : "+event[i].get("productID")+
//							"    process : "+event[i].get("process") + 
//							"	 Machine : "+event[i].get("machine") + 
//							"    Time : " + event[i].get("time"));
		notifContainer.append(out);
		
		}
	     stmt.close();
	     conn.close();
		
		}catch(Exception e){                                                    

			e.printStackTrace();

			}
		
		}
		
    	
	}
	
	

