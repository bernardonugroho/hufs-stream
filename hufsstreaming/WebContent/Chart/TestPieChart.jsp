<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    
  </head>
  <body>
    
    
    <% 
    Connection conn = null; 
String url = "jdbc:mysql://203.253.70.34:3306/bpi";        
String id = "cmpteam";                                                   
String pw = "!cmpteam";                                                
String Data_label = "";
  
Statement stmt = null;
Statement stmt1 = null;

StringBuffer data = new StringBuffer();

try{

    
	Class.forName("com.mysql.jdbc.Driver");   
	conn=DriverManager.getConnection(url,id,pw);              

	stmt = conn.createStatement();
	
	//data initialization
	if (data.length() > 0) {
     data.append(',');
 }
 	data.append('[').append("'CaseID'").append(',').append("'Frequency'").append(']').append(',');
 	out.println("******* "+ data);

	//--------Activity A--------------
	String query_str1 = "select count(*) from bpi.manuf where caseid='1'";
	ResultSet rs1=stmt.executeQuery(query_str1);
	int count1=0;
	if(rs1.next()){
		count1 =rs1.getInt(1);	
	}
	
	out.println(" CaseID 1 :"+count1);
	rs1.close();
	data.append('[').append("'CaseID 1'").append(',').append(count1).append(']').append(',');
	//------------------------------
	query_str1 = "select count(*) from bpi.manuf where caseid='2'";
	rs1=stmt.executeQuery(query_str1);
	int count2=0;
	if(rs1.next()){
		count2 =rs1.getInt(1);	
	}
	
	out.println(" CaseID 2 :"+count2);
	rs1.close();
	data.append('[').append("'CaseID 2'").append(',').append(count2).append(']').append(',');
	//------------------------------
	query_str1 = "select count(*) from bpi.manuf where caseid='3'";
	rs1=stmt.executeQuery(query_str1);
	int count3=0;
	if(rs1.next()){
		count3 =rs1.getInt(1);	
	}
	
	out.println(" CaseID 3 :"+count3);
	rs1.close();
	data.append('[').append("'CaseID 3'").append(',').append(count3).append(']').append(',');
	//------------------------------
	query_str1 = "select count(*) from bpi.manuf where caseid='4'";
	rs1=stmt.executeQuery(query_str1);
	int count4=0;
	if(rs1.next()){
		count4 =rs1.getInt(1);	
	}
	
	out.println(" CaseID 4 :"+count4);
	rs1.close();
	data.append('[').append("'CaseID 4'").append(',').append(count4).append(']').append(',');
	//------------------------------
	query_str1 = "select count(*) from bpi.manuf where caseid='5'";
	rs1=stmt.executeQuery(query_str1);
	int count5=0;
	if(rs1.next()){
		count5 =rs1.getInt(1);	
	}
	
	out.println(" CaseID 5 :"+count5);
	rs1.close();
	data.append('[').append("'CaseID 5'").append(',').append(count5).append(']').append(',');
	//------------------------------
	query_str1 = "select count(*) from bpi.manuf where caseid='6'";
	rs1=stmt.executeQuery(query_str1);
	int count6=0;
	if(rs1.next()){
		count6 =rs1.getInt(1);	
	}
	
	out.println(" CaseID 6 :"+count6);
	rs1.close();
	data.append('[').append("'CaseID 6'").append(',').append(count6).append(']').append(',');
	//------------------------------
	query_str1 = "select count(*) from bpi.manuf where caseid='7'";
	rs1=stmt.executeQuery(query_str1);
	int count7=0;
	if(rs1.next()){
		count7 =rs1.getInt(1);	
	}
	
	out.println(" CaseID 7 :"+count7);
	rs1.close();
	data.append('[').append("'CaseID 7'").append(',').append(count7).append(']').append(',');
	//------------------------------
	query_str1 = "select count(*) from bpi.manuf where caseid='8'";
	rs1=stmt.executeQuery(query_str1);
	int count8=0;
	if(rs1.next()){
		count8 =rs1.getInt(1);	
	}
	
	out.println(" CaseID 8 :"+count8);
	rs1.close();
	data.append('[').append("'CaseID 8'").append(',').append(count8).append(']').append(',');
	//------------------------------
	query_str1 = "select count(*) from bpi.manuf where caseid='9'";
	 rs1=stmt.executeQuery(query_str1);
	int count9=0;
	if(rs1.next()){
		count9 =rs1.getInt(1);	
	}
	
	out.println(" CaseID 9 :"+count9);
	rs1.close();
	data.append('[').append("'CaseID 9'").append(',').append(count9).append(']').append(',');
	//------------------------------
	query_str1 = "select count(*) from bpi.manuf where caseid='10'";
	rs1=stmt.executeQuery(query_str1);
	int count10=0;
	if(rs1.next()){
		count1 =rs1.getInt(1);	
	}
	
	out.println(" CaseID 10 :"+count10);
	rs1.close();
	data.append('[').append("'CaseID 10'").append(',').append(count10).append(']').append(',');
	//------------------------------
	 //------------------------------
	 out.println(data);
	//--------------------------
	String query_str = "select caseid, activity, machine, time from bpi.manuf"; 
	
	ResultSet rs=stmt.executeQuery(query_str);
	
	
	while(rs.next())  
    {  
		%>
		<br/>
		<tr>
		<td><%=rs.getString("caseid") %>	</td>
		<td><%=rs.getString("activity") %>	</td>
		<td><%=rs.getString("machine") %>	</td>
		<td><%=rs.getString("time") %>	</td>
		</tr>
		</br>
		<% 
    }
	
	rs.close();
	

     stmt.close();
     stmt1.close();
     conn.close();
	
	}catch(Exception e){                                                    

		e.printStackTrace();

	}


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
          title: 'My Daily CaseID'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
<div id="piechart" style="width: 900px; height: 500px;"></div>
  </body>
</html>