
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.sql.*, java.util.*" %>
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


StringBuffer data = new StringBuffer();
try{

		                
		Class.forName("com.mysql.jdbc.Driver");   
		conn=DriverManager.getConnection(url,id,pw);              

		stmt = conn.createStatement();
		
		//data initialization
		if (data.length() > 0) {
	     data.append(',');
	 }
	 	data.append('[').append("'Activity'").append(',').append("'Frequency'").append(']').append(',');
	 	out.println("******* "+ data);
		
		
		//--------------------------------------------
		
		
		String query_str1 = "select count(*) from bpi.manuf where activity = 'Activity A'";
		ResultSet rs1=stmt.executeQuery(query_str1);
		int countA = 0;
		if(rs1.next()){
			 countA =rs1.getInt(1);
		}
		
		out.println("Activity A : "+countA);
		rs1.close();
		data.append('[').append("'Activity A'").append(',').append(countA).append(']').append(',');
		//----------------------------------------------------------
		query_str1 = "select count(*) from bpi.manuf where activity='Activity B'";
		rs1=stmt.executeQuery(query_str1);
		int countB=0;
		if(rs1.next()){
			countB =rs1.getInt(1);	
		}
		
		out.println(" Activity B :"+countB);
		rs1.close();
		data.append('[').append("'Activity B'").append(',').append(countB).append(']').append(',');
    //------------------------------
    //----------------------------------------------------------
		query_str1 = "select count(*) from bpi.manuf where activity='Activity C'";
		rs1=stmt.executeQuery(query_str1);
		int countC=0;
		if(rs1.next()){
			countC =rs1.getInt(1);	
		}
		
		out.println(" Activity C :"+countC);
		rs1.close();
		
		data.append('[').append("'Activity C'").append(',').append(countC).append(']').append(',');		
//------------------------------
		query_str1 = "select count(*) from bpi.manuf where activity='Activity D'";
		rs1=stmt.executeQuery(query_str1);
		int countD=0;
		if(rs1.next()){
			countD =rs1.getInt(1);	
		}
		
		out.println(" Activity D :"+countD);
		rs1.close();
		
		data.append('[').append("'Activity D'").append(',').append(countD).append(']');		
//------------------------------
		query_str1 = "select count(*) from bpi.manuf where activity='Start'";
		rs1=stmt.executeQuery(query_str1);
		int countStart=0;
		if(rs1.next()){
			countStart =rs1.getInt(1);	
		}
		
		out.println(" Start :"+countStart);
		rs1.close();
		
		data.append('[').append("'Start'").append(',').append(countStart).append(']');		
//------------------------------
		query_str1 = "select count(*) from bpi.manuf where activity='End'";
		rs1=stmt.executeQuery(query_str1);
		int countEnd=0;
		if(rs1.next()){
			countEnd =rs1.getInt(1);	
		}
		
		out.println(" End :"+countEnd);
		rs1.close();
		
		data.append('[').append("'End'").append(',').append(countEnd).append(']');		
//------------------------------
		//----------------------------------------------------------
	out.println(data);
		//------------
	String query_str = "select caseid, activity, machine, time from bpi.manuf"; 
	ResultSet rs=stmt.executeQuery(query_str);
	
	
	while(rs.next())  
    {  
		%>
		<tr>
		<td><%=rs.getString("caseid") %>	</td>
		<td><%=rs.getString("activity") %>	</td>
		<td><%=rs.getString("machine") %>	</td>
		<td><%=rs.getString("time") %>	</td></br>
		</tr>
		<% 
    }
	rs.close();
				
		
	     stmt.close();
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
          title:  'My Daily Activities',
          vAxis: {title: 'Activities',  titleTextStyle: {color: 'red'}}
        };

        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<div id="chart_div" style="width: 900px; height: 500px;"></div>


  </body>
</html>