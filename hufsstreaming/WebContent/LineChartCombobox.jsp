<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, java.util.*,java.util.ArrayList.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <HEAD>
        <TITLE>Line Chart</TITLE>
    </HEAD>
    
  </head>
  
	<script>
	  function Send(frm){
		  frm.action="LineChartCombobox.jsp";
		  frm.method="post";
		  frm.submit();
	  }
	  </script>
  
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
	data.append('[').append("'Activity & Machine'").append(',').append("'Frequency'").append(']');
	//out.println("******* "+ data);
  
	
	
	
	  // select activity input to graph
  String activity=request.getParameter("activity");
  //System.out.println(activity+"가 선택되었습니다");
  //out.println(activity+"가 선택되었습니다");
  
   String q = "select count(*), activity, machine from bpi.manuf where activity = '"+activity+"' group by activity, machine";
	ResultSet rs3=stmt.executeQuery(q);
	while(rs3.next())
	{
		//out.println(" This is count "+rs3.getString(1));
		//out.println(" between "+rs3.getString(3));
		//out.println(" and "+activity + " /////////// ");
		data.append(',').append('[').append("'").append(activity).append(" & ").append(rs3.getString(3)).append("'").append(',').append(rs3.getString(1)).append(']');
	}
	//out.println();
	rs3.close();
	//out.println(" data : --- "+data.toString());

	
		//Find the activity
	 	//SELECT distinct activity from manuf
	 	String query_str1 = "select distinct activity from bpi.manuf";
		ResultSet rs1=stmt.executeQuery(query_str1);
		int k=0;
		%>
		<form name="act1">
		<select name="activity" onchange="Send(act1)">
		<%
		while(rs1.next())
		{
			name.add(rs1.getString("activity"));
			//out.println("arraylist : "+name.get(k));
			if(activity==null){
				%>
				<option value="<%=name.get(k)%>" ><%=name.get(k) %></option>
				<%
				
			}
			if(activity!=null){
				if(activity.equals(rs1.getString("activity"))){
					%>
					<option value="<%=name.get(k)%>" selected><%=name.get(k) %></option>
					<%	
				}
				else{
					%>
					<option value="<%=name.get(k)%>" ><%=name.get(k) %></option>
					<%
				}
				
			}
			
			
			k++;
		}
		rs1.close();
		%>
		</select>
		</form>
		
	
				<%

		//--------------------------
		

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
          title: 'My Daily Activities'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<div id="chart_div" style="width: 550px; height: 350px;"></div>
  </body>
</html>