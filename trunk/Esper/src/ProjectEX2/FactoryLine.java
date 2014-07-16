package ProjectEX2;

import java.text.SimpleDateFormat;

public class FactoryLine {
	private int id;
	private String process;
	private String machine;
	private SimpleDateFormat time;
	
	public FactoryLine(int SelectID, String SelectActivity, String SelectMachine){
		this.id = SelectID;
		this.process = SelectActivity;
		this.machine = SelectMachine;
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
	
	public SimpleDateFormat getTime(){
		return time;
	}
}
