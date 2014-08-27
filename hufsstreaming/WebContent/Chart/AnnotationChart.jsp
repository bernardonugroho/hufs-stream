<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.sql.*, java.util.*"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1','packages':['annotationchart']}]}"></script>
    <script type='text/javascript'>
      google.load('visualization', '1', {'packages':['annotationchart']});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('date', 'Date');
        data.addColumn('number', 'Kepler-22b mission');
        data.addColumn('string', 'Kepler title');
        data.addColumn('string', 'Kepler text');
        data.addColumn('number', 'Gliese 163 mission');
        data.addColumn('string', 'Gliese title');
        data.addColumn('string', 'Gliese text');
        data.addRows([
          [new Date(2314, 2, 15), 12400, undefined, undefined,
                                  10645, undefined, undefined],
          [new Date(2314, 2, 16), 24045, 'Lalibertines', 'First encounter',
                                  12374, undefined, undefined],
          [new Date(2314, 2, 17), 35022, 'Lalibertines', 'They are very tall',
                                  15766, 'Gallantors', 'First Encounter'],
          [new Date(2314, 2, 18), 12284, 'Lalibertines', 'Attack on our crew!',
                                  34334, 'Gallantors', 'Statement of shared principles'],
          [new Date(2314, 2, 19), 8476, 'Lalibertines', 'Heavy casualties',
                                  66467, 'Gallantors', 'Mysteries revealed'],
          [new Date(2314, 2, 20), 0, 'Lalibertines', 'All crew lost',
                                  79463, 'Gallantors', 'Omniscience achieved']
        ]);

        var chart = new google.visualization.AnnotationChart(document.getElementById('chart_div'));

        var options = {
          displayAnnotations: true
        };

        chart.draw(data, options);
      }
      
      
    </script>
  </head>

  <body>
    <div id='chart_div' style='width: 900px; height: 500px;'></div>
    
<%
Connection conn = null; 
String url = "jdbc:mysql://203.253.70.34:3306/bpi";        
String id = "cmpteam";                                                   
String pw = "!cmpteam";                                                
String Data_label = "";
  
Statement stmt = null;

try{

    
	Class.forName("com.mysql.jdbc.Driver");   
	conn=DriverManager.getConnection(url,id,pw);              

	stmt = conn.createStatement();
	
	//System.out.println(event1);
	//------------------------------------
		String query_str1 = "select count(*) from bpi.manuf where activity='Activity A'";
		ResultSet rs1=stmt.executeQuery(query_str1);
		String countA = null;
		if(rs1.next()){
			countA= rs1.getString(1);
		}
		
		out.println("Activity A:"+countA);
		
		rs1.close();
		//-------------------------------------
		//------------------------------------
		query_str1 = "select count(*) from bpi.manuf where activity='Activity B'";
		rs1=stmt.executeQuery(query_str1);
		int countB =0;
		if(rs1.next()){
			countB= rs1.getInt(1);
		}
		
		out.println("Activity B:"+countB);
		
		rs1.close();
		//-------------------------------------	
		//------------------------------------
		query_str1 = "select count(*) from bpi.manuf where activity='Activity C'";
		rs1=stmt.executeQuery(query_str1);
		int countC =0;
		if(rs1.next()){
			countC= rs1.getInt(1);
		}
		
		out.println("Activity C:"+countC);
		
		rs1.close();
		//-------------------------------------
	String query_str = "select caseid, activity, machine, time from bpi.manuf"; 
	
	ResultSet rs=stmt.executeQuery(query_str);
	
	while(rs.next())  
    {  
		%>
		
		<tr>
		<td><%=rs.getString("caseid") %>	</td>
		<td><%=rs.getString("activity") %>	</td>
		<td><%=rs.getString("machine") %>	</td>
		<td><%=rs.getString("time") %>	</td>
		</tr>
		<br/>
		<% 
		}
	rs.close();

	
    stmt.close();
    conn.close();
}catch(Exception e)
{

	e.printStackTrace();

}
		%>

  </body>
</html>