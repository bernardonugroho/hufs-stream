package ProjectEX2;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.Reader;

public class DataInput {
	String[][] data = new String[20][20];
		
	public void DoRead(){
		try{
			
			Reader read = new FileReader("C:\\Users\\WS\\Desktop\\Factory.txt");
			BufferedReader br = new BufferedReader(read);
			String[] readStr = new String[20];
						
			int i = 0;
			br.readLine();
			
			while(true){
				//System.out.println(br.readLine());
				readStr[i] = br.readLine();
				if(readStr[i] == null)
					break;
				
				for(int j=0; j<2; j++){
					String[] spilitStr = readStr[i].split(" ");
					data[i][j] = spilitStr[j].trim();
					//System.out.print(data[i][j]+" ");
				}
				
				//System.out.println();
				i++;
								
				}
				
			}
			catch(Exception ex){
				ex.printStackTrace();
			}
	}
	
	public String[][] getData(){
		return data;	
	}
		
	/*public void MakeProcess(){
		String[] FromProcess = new String[20];
		String[][] ToProcess = new String[20][20];
		boolean isDifferent = true;
		//FromProcess[0] = data[0][0];
		
		int i = 0;
		int j = 0;
		
		while(true){
			for(int k=0;k<FromProcess.length;k++){
				if(FromProcess[k].equals(data[i][0])){
					isDifferent = false;
					break;
				}
			}
			
			if(isDifferent==true){
				FromProcess[j] = data[i][0];
				ToProcess[j][0] = data[i][1];
				j++;
				i++;
			}
			
			else{
				ToProcess[j]
			}
		}*/
}


