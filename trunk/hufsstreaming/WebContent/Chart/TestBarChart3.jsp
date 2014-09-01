<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, java.util.*,java.util.ArrayList.*, java.util.concurrent.*,java.util.HashSet.*,java.util.Collections.*, java.util.Set.*,java.util.Map.*,java.util.TreeMap.* "%>

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
 	data.append('[').append("'Activity'").append(',').append("'Frequency'").append(']').append(',');
 	out.println("******* "+ data);

 	
 	
 	//Find the activity
 	//SELECT distinct activity from manuf
 	String query_str1 = "select distinct activity from bpi.manuf";
	ResultSet rs1=stmt.executeQuery(query_str1);
	
	ArrayList<String> name = new ArrayList<String>();
	while(rs1.next())
	{
		out.println(rs1.getString("activity"));
		//name.add(rs1.getString("activity"));
	}
	Collections.addAll(name,rs1.getString("activity"));
	rs1.close();
 	
	
	//count 1
	Set<String> uniqueSet = new HashSet<String>(name);
	for (String temp : uniqueSet) {
		System.out.println(temp + ": " + Collections.frequency(name, temp));
	}
	
	
	
	
	
	/*
	//count 2
	Map<String, Integer> map = new HashMap<String, Integer>();
	 
	for (String temp : name) {
		Integer count = map.get(temp);
		map.put(temp, (count == null) ? 1 : count + 1);
	}
	printMap(map);
 
	
	
	//count3
 Map<String, Integer> treeMap = new TreeMap<String, Integer>(map);
	printMap(treeMap);
	
	
	
	
	
	public static void printMap(Map<String, Integer> map){
		 
		for (Map.Entry<String, Integer> entry : map.entrySet()) {
			System.out.println("Key : " + entry.getKey() + " Value : "
				+ entry.getValue());
		*/

  

 	
	
	//data.append('[').append("'Activity A'").append(',').append(i).append(']').append(',');
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
          title: 'My Daily Activities'
        };

        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<div id="chart_div" style="width: 900px; height: 500px;"></div>
  </body>
</html>