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
		
		
		
		
		//System.out.println(event1);
		
		String query_str = "select caseid, activity, machine, time from bpi.manuf"; 
		
		ResultSet rs = stmt.executeQuery(query_str);
		
		while(rs.next())  
	    {
	%>
	<!--  <tr>
		<td><%=rs.getString("caseid")%>	</td>
		<td><%=rs.getString("activity")%>	</td>
		<td><%=rs.getString("machine")%>	</td>
		<td><%=rs.getString("time")%>	</td>
		</tr>
		</br>
		</br>  -->



	<%
		}
		rs.close();
		
		String q = "Select distinct activity from manuf"; // q �� ��Ƽ��Ƽ���� ���´�
		
		ResultSet rs2 =  stmt.executeQuery(q); 
		
		while(rs2.next()){
			Act.add(rs2.getString("activity")); // ��� ����Ʈ�� ���� ��Ƽ��Ƽ���� �־��ش� Act(i)=rs2
		}
		
		//System.out.println(Act);
		////////////// ��̸���Ʈ�� �����Ѵ� activity ���� �׸��� �ҷ��ü� �ְ� �غ��� 
		
	    String q2 = "Select TIMESTAMPDIFF(SECOND,MIN(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s')),MAX(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s'))) AS TotalactTime FROM manuf "; 
				
	 	ResultSet rs4 = stmt.executeQuery(q2);
	 	int TotalActTime =0;
	 	while(rs4.next()){
		TotalActTime = rs4.getInt("TotalactTime");  // ������ �Ἥ �Ի� 
	 	//out.println("TotalActTime is "+TotalActTime);
	 	}
	 	
	 	int num = 0;
		System.out.println(Act.size());
		//�غ�� ��̸���Ʈ�� ����ؼ� �־��ش� 
		for (int j =0 ; j<Act.size() ;j++){
			/* -> ��̸���Ʈ�� ���̸�ŭ �ݺ���Ų�� �� ? �������� ���������� */
		String query_str1 = "SELECT  a.caseid ,a.activity, ";

		query_str1+="STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') as 1stTime, ";
		        
		query_str1+="MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) as 2nd, ";
		        
		query_str1+="case ";  

		query_str1+="when MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) = null then STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="end as 2ndTime, ";

		query_str1+="TIMESTAMPDIFF(SECOND,(STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s')),MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s'))) AS TimeDiff ";

		query_str1+="FROM    manuf as a ";

		query_str1+="LEFT JOIN manuf as b ";

		query_str1+="ON a.caseid = b.caseid ";

		query_str1+="AND STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s') > STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="GROUP BY a.caseid, a.activity, STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";
		
		query_str1+="having activity = '"+ Act.get(j) +"'"; //��� ����Ʈ �̸��� i �� �༭ ��� ���ư��� �Ѵ�
		//System.out.println(Act.get(j));
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
		String q5 = "Select time from manuf where activity = '"+Act.get(j)+"'";
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
		
		Integer.toString(util);
		dataList.add(util);
		//first label
		
		if (num==0)
		{
		dataUtil.append('[').append("'Activity'").append(',').append("'Value'").append(']');
		num++;
		}
		dataUtil.append(',').append('[').append("'").append(Act.get(num++-1));
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
		
		for(int k=0;k<Act.size();k++){
		out.println(Act.get(k)+" 's Utilisation is = "+dataList.get(k)+"%"+"<BR>");
		}
		stmt.close();
	    conn.close();
	    
	   // out.println("1");
	   
		}//for loop �̱���
		
	catch(Exception e){                                                    

			e.printStackTrace();

		}
	out.println(dataUtil);
	%>
	
	<div id="chart_div" style="width: 800px; height: 250px;"></div>
	</body>
<html>

<head>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
      google.load("visualization", "1", {packages:["gauge"]});
      google.setOnLoadCallback(drawChart);
      var data1 = [<%=dataUtil%>];
      function drawChart() {

    	 <%-- for(var i=0; i<<%=dataList.size()%>; i++){ --%>
        var data = google.visualization.arrayToDataTable(data1);
                                                          
         
          
          <%-- 
          ['<%=Act.get(0)%>', <%=dataList.get(0) %>],
          ['<%=Act.get(1)%>, <%=dataList.get(1) %>],
          ['<%=Act.get(2)%>, <%=dataList.get(2) %>],
          ['<%=Act.get(3)%>, <%=dataList.get(3) %>],
           --%>
        //);
    	  
        var options = {
          width: 900, height: 350,
          redFrom: 0, redTo: 20,
          yellowFrom:20, yellowTo: 80,
          greenFrom:80, greenTo: 100,
          minorTicks: 5
        };

        var chart = new google.visualization.Gauge(document.getElementById('chart_div'));

        chart.draw(data, options);

       /*  setInterval(function() {
          data.setValue(0, 1, 40 + Math.round(60 * Math.random()));
          chart.draw(data, options);
        }, 13000);
        setInterval(function() {
          data.setValue(1, 1, 40 + Math.round(60 * Math.random()));
          chart.draw(data, options);
        }, 5000);
        setInterval(function() {
          data.setValue(2, 1, 60 + Math.round(20 * Math.random()));
          chart.draw(data, options);
        }, 26000); */
      }
    </script>
</head>

</html>