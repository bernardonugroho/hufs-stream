package ProjectEX1;
public class ProductLine {
	private int id;
	private String process;
	private String machine;
	
	public ProductLine(int SelectID, String SelectActivity, String SelectMachine){
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
	
	
}
