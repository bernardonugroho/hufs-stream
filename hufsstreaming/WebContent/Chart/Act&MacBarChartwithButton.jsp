<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, java.util.*,java.util.ArrayList.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <HEAD>
        <TITLE>Bar Chart</TITLE>
    </HEAD>
    
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
ArrayList<String> name = new ArrayList<String>();
try{

  
	Class.forName("com.mysql.jdbc.Driver");   
	conn=DriverManager.getConnection(url,id,pw);              

	stmt = conn.createStatement();
	
	
	//data initialization
	if (data.length() > 0) {
   data.append(',');
}
	data.append('[').append("'Activity & Machine'").append(',').append("'Frequency'").append(']').append(',');
	//out.println("******* "+ data);
  
	
	
	//Find the activity
	 	//SELECT distinct activity from manuf
	 	String query_str1 = "select distinct activity from bpi.manuf";
		ResultSet rs1=stmt.executeQuery(query_str1);
		
		
		int k=0;
		%>
		<select name="activity">
		<%
		while(rs1.next())
		{
			name.add(rs1.getString("activity"));
			//out.println("arraylist : "+name.get(k));
			%>
			<option value="<%=name.get(k)%>" ><%=name.get(k) %></option>
			<%
			k++;
		}

		rs1.close();

		%>
		</select>
		
	
				<%
				String act = ((String) request.getParameter("activity"));
				out.print(act);
	
	
	data.append('[').append("'").append(act).append(" & ").append(rs3.getString(3)).append("'").append(',').append(rs3.getString(1)).append(']').append(',');
	
	
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


		
		
		

	
	
	data.append('[').append("'").append(rs3.getString(2)).append(" & ").append(rs3.getString(3)).append("'").append(',').append(rs3.getString(1)).append(']').append(',');
}



        %>
    

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
   google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      var datajs = [data.toString()];
      alert(datajs);
      function drawChart() {

        var data = google.visualization.arrayToDataTable(datajs);

        var options = {
          title: 'My Daily Activities & Machines'
        };

        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<div id="chart_div" style="width: 900px; height: 500px;"></div>


  </body>
</html>