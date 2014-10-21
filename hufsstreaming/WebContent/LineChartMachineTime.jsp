<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.sql.*, java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	int i=70;
%>


<body>

	<%
		Connection conn = null; 
	String url = "jdbc:mysql://203.253.70.34:3306/bpi";        
	String id = "cmpteam";                                                   
	String pw = "!cmpteam";                                                
	String Data_label = "";
	  
	Statement stmt = null;

	StringBuffer data = new StringBuffer();
	List dataList = new ArrayList();
	ArrayList Mac = new ArrayList();
	StringBuffer dataUtil = new StringBuffer();


	try{

	    
		Class.forName("com.mysql.jdbc.Driver");   
		conn=DriverManager.getConnection(url,id,pw);              

		stmt = conn.createStatement();
		
		
		//data initialization
		if (data.length() > 0) {
	     data.append(',');
	 }
	 	data.append('[').append("'Machine'").append(',').append("'Time'").append(']').append(',');
	 	//out.println("******* "+ data);

		
		//System.out.println(event1);
		
String q = "Select distinct machine from bpi.manuf"; // q �� ��Ƽ��Ƽ���� ���´�
		
		ResultSet rs2 =  stmt.executeQuery(q); 
		
		while(rs2.next()){
			Mac.add(rs2.getString("machine")); // ��� ����Ʈ�� ���� ��Ƽ��Ƽ���� �־��ش� Act(i)=rs2
		}
		
		//System.out.println(Act);
		////////////// ��̸���Ʈ�� �����Ѵ� activity ���� �׸��� �ҷ��ü� �ְ� �غ��� 
		
	    String q2 = "Select TIMESTAMPDIFF(SECOND,MIN(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s')),MAX(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s'))) AS TotalactTime FROM bpi.manuf "; 
				
	 	ResultSet rs4 = stmt.executeQuery(q2);
	 	int TotalActTime =0;
	 	while(rs4.next()){
		TotalActTime = rs4.getInt("TotalactTime");  // ������ �Ἥ �Ի� 
	 	//out.println("TotalActTime is "+TotalActTime);
	 	}
	 	
	 	int num = 0;
		System.out.println(Mac.size());
		//�غ�� ��̸���Ʈ�� ����ؼ� �־��ش� 
		for (int j =0 ; j<Mac.size() ;j++){
			/* -> ��̸���Ʈ�� ���̸�ŭ �ݺ���Ų�� �� ? �������� ���������� */
		String query_str1 = "SELECT  a.caseid ,a.machine, ";

		query_str1+="STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') as 1stTime, ";
		        
		query_str1+="MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) as 2nd, ";
		        
		query_str1+="case ";  

		query_str1+="when MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) = null then STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="end as 2ndTime, ";

		query_str1+="TIMESTAMPDIFF(SECOND,(STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s')),MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s'))) AS TimeDiff ";

		query_str1+="FROM    bpi.manuf as a ";

		query_str1+="LEFT JOIN bpi.manuf as b ";

		query_str1+="ON a.caseid = b.caseid ";

		query_str1+="AND STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s') > STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="GROUP BY a.caseid, a.activity, STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";
		
		query_str1+="having machine = '"+ Mac.get(j) +"'";
		//System.out.println(Mac.get(j));
		ResultSet rs1 = stmt.executeQuery(query_str1);
		
		int ValueTime = 0;
		int TotalTime = 0;
		
		
		while(rs1.next()){
			ValueTime = rs1.getInt("TimeDiff");
			//out.println(ValueTime);
			TotalTime = TotalTime + ValueTime;
		}
		rs1.close();
		
		
		int countNum=0;
		String q5 = "Select time from bpi.manuf where machine = '"+Mac.get(j)+"'";
		ResultSet rs5 = stmt.executeQuery(q5);
		while(rs5.next()){
			countNum++;
		}
		//out.println(countNum+"/");
		//out.println(TotalTime+"/");
		int TotalTime2 = TotalTime/countNum;
		//out.println(TotalTime2+"/");
		//out.println(TotalActTime);
		int util = TotalTime2*100/TotalActTime;
		
		// mean �̿� or median �̿�
		// mean ��ձ��ϴ°�  
		// median �߽ɰ� ���ϴ°� 
		
		Integer.toString(TotalTime2);
		dataList.add(TotalTime2);
		//first label
		
		if (num==0)
		{
			dataUtil.append('[').append("'Machine'").append(',').append("'Value'").append(']');
			num++;
		}
		dataUtil.append(',').append('[').append("'").append(Mac.get(num++-1));
		num--;
		dataUtil.append("'").append(',').append(dataList.get(num++-1)).append(']');
		//data label
		
		
		/* //use arraylist
		//data.append('[').append("'Activity'").append(',').append("'Time'").append(']').append(',');
		data.append('[').append(Act.get(j)+"(%)Util +").append(',').append(util).append(']');
	 	//out.println("Activity B - Utilisation "+ data+"%");
	 	out.println(data);
	 	out.println(" ");
		dataList.add(data); */
		
		 
		//rs2.close(); //******
	     
		
		 
		}
		
	 
		
		rs2.close();
		rs4.close(); 
		
		for(int k=0;k<Mac.size();k++){
		//out.println(Mac.get(k)+" 's Averagetime is = "+dataList.get(k)+""+"<BR>");
		data.append('[').append("'").append(Mac.get(k)).append("'").append(',').append(dataList.get(k)).append(']').append(',');
		}
		stmt.close();
	    conn.close();
	    
	   // out.println("1");
	   
		}//for loop �̱���
		
	catch(Exception e){                                                    

			e.printStackTrace();

		}
	//out.println(dataUtil);
	
	
	
	%>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
   google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      var datajs = [<%=data.toString()%>];
      alert(datajs);
      function drawChart() {

        var data = google.visualization.arrayToDataTable(datajs);

        var options = {
          title: 'Machine time'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<div id="chart_div" style="width: 550px; height: 350px;"></div>
</body>
</html>