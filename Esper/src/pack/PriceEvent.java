package pack;
public class PriceEvent {
	private String symbolName;
	private int price;
	private long vol;
	
	public PriceEvent(String symbolName,int price, long vol){
		this.symbolName = symbolName;
		this.price = price;
		this.vol = vol;
	}
	
	public String getSymbolName(){
		return symbolName;
	}
	
	public int getPrice(){
		return price;
	}
	
	public long getVol(){
		return vol;
	}
	
}
