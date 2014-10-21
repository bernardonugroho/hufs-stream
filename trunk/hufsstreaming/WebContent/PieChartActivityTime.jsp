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
	ArrayList Act = new ArrayList();
	StringBuffer dataUtil = new StringBuffer();


	try{

	    
		Class.forName("com.mysql.jdbc.Driver");   
		conn=DriverManager.getConnection(url,id,pw);              

		stmt = conn.createStatement();
		
		
		//data initialization
		if (data.length() > 0) {
	     data.append(',');
	 }
	 	data.append('[').append("'Activity'").append(',').append("'Time'").append(']').append(',');
	 	//out.println("******* "+ data);

		
		
		
String q = "Select distinct activity from bpi.manuf"; // q 에 엑티비티들을 따온다
		
		ResultSet rs2 =  stmt.executeQuery(q); 
		
		while(rs2.next()){
			Act.add(rs2.getString("activity")); // 어레이 리스트에 각각 엑티비티들을 넣어준다 Act(i)=rs2
		}
		
		
		////////////// 어레이리스트에 저장한다 activity 들을 그리고 불러올수 있게 준비함 
		
	    String q2 = "Select TIMESTAMPDIFF(SECOND,MIN(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s')),MAX(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s'))) AS TotalactTime FROM bpi.manuf1 "; 
				
	 	ResultSet rs4 = stmt.executeQuery(q2);
	 	int TotalActTime =0;
	 	while(rs4.next()){
		TotalActTime = rs4.getInt("TotalactTime");  // 쿼리문 써서 게산 
	 	//out.println("TotalActTime is "+TotalActTime);
	 	}
	 	
	 	int num = 0;
		System.out.println(Act.size());
		//준비된 어레이리스트를 사용해서 넣어준다 
		for (int j =0 ; j<Act.size() ;j++){
			/* -> 어레이리스트의 길이만큼 반복시킨다 왜 ? 쿼리문을 돌리기위해 */
		String query_str1 = "SELECT  a.caseid ,a.activity, ";

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
		
		query_str1+="having activity = '"+ Act.get(j) +"'";
		
		ResultSet rs1 = stmt.executeQuery(query_str1);
		
		int ValueTime = 0;
		int TotalTime = 0;
		
		
		while(rs1.next()){
			ValueTime = rs1.getInt("TimeDiff");
			
			TotalTime = TotalTime + ValueTime;
		}
		rs1.close();
		
		
		int countNum=0;
		String q5 = "Select time from bpi.manuf where activity = '"+Act.get(j)+"'";
		ResultSet rs5 = stmt.executeQuery(q5);
		while(rs5.next()){
			countNum++;
		}
		
		int TotalTime2 = TotalTime/countNum;
		
		int util = TotalTime2*100/TotalActTime;
		
		
		
		Integer.toString(TotalTime2);
		dataList.add(TotalTime2);
		
		
		if (num==0)
		{
			dataUtil.append('[').append("'Activity'").append(',').append("'Value'").append(']');
			num++;
		}
		dataUtil.append(',').append('[').append("'").append(Act.get(num++-1));
		num--;
		dataUtil.append("'").append(',').append(dataList.get(num++-1)).append(']');
		
		
		
		
	     
		
		 
		}
		
	 
		
		rs2.close();
		rs4.close(); 
		
		for(int k=0;k<Act.size();k++){
		//out.println(Act.get(k)+" 's Averagetime is = "+dataList.get(k)+""+"<BR>");
		data.append('[').append("'").append(Act.get(k)).append("'").append(',').append(dataList.get(k)).append(']').append(',');
		}
		stmt.close();
	    conn.close();
	    
	   // out.println("1");
	   
		}//for loop 이까지
		
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
          title: 'Activity time'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
<div id="piechart" style="width: 550px; height: 350px;"></div>
  </body>
</html>