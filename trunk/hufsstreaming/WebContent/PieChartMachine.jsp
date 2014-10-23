<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, java.util.*,java.util.ArrayList.*"%>

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
 	data.append('[').append("'Machine'").append(',').append("'Frequency'").append(']').append(',');
 	//out.println("******* "+ data);

 	
 	
 	//Find the machine
 	//SELECT distinct machine from manuf
 	String query_str1 = "select distinct machine from bpi.manuf";
	ResultSet rs1=stmt.executeQuery(query_str1);
	
	ArrayList<String> name = new ArrayList<String>();
	int k=0;
	while(rs1.next())
	{
		name.add(rs1.getString("machine"));
		//out.println("arraylist : "+name.get(k));
		k++;
	}

	rs1.close();
	for (String mac : name)
	{
	String q = "select count(*) from bpi.manuf where machine='"+mac+"'";
	//out.println(q);
	ResultSet rs2=stmt.executeQuery(q);
	int countA=0;
	if(rs2.next()){
		countA =rs2.getInt(1);	
	}
	
	//out.println(mac+" : "+countA);
	rs2.close();
	String a = "null";
	if(mac.equals(a)){
		continue;
	}
	else{
	data.append('[').append("'").append(mac).append("'").append(',').append(countA).append(']').append(',');
	}
	}
	//out.println(data.toString());
	
	//------------------------------		
	 //------------------------------
	// out.println(data);
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
          title: 'My Daily Machines'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
<div id="piechart" style="width: 550px; height: 350px;"></div>
  </body>
</html>