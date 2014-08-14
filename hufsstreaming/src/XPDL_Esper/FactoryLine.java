package XPDL_Esper;

import java.text.SimpleDateFormat;

public class FactoryLine {
	private int id;
	private String process;
	private String machine;
	private String time;
	
	public FactoryLine(int SelectID, String SelectActivity, String SelectMachine, String Time){
		this.id = SelectID;
		this.process = SelectActivity;
		this.machine = SelectMachine;
		this.time = Time;
	}
	
	public int getProductID(){
		return id;
	}
	
	public String getProcess(){
		return process;
	}
	
	public String getMachine(){
		return machine;
	}
	
	public String getTime(){
		return time;
	}
}
