<%@ page import="java.io.*,java.util.*, java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="ESper.EventListener" %>
<%@ page import="java.sql.*,java.util.Calendar,
    java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
 

   <% 
    Connection conn = null; 
String url = "jdbc:mysql://203.253.70.34:3306/bpi";        
String id = "cmpteam";                                                   
String pw = "!cmpteam";                                                
String Data_label = "";
  
Statement stmt = null;
Statement stmt1 = null;

StringBuffer data1 = new StringBuffer();

String date=null;
String caseid =null;
String activity = null;
String machine = null;
int quantity = 0;


try{	

    
	Class.forName("com.mysql.jdbc.Driver");   
	conn=DriverManager.getConnection(url,id,pw);              

	stmt = conn.createStatement();
	
	//data initialization
	/* if (data.length() > 0) {
     data.append(',');
 }
 	data.append('[').append("'Activity'").append(',').append("'Frequency'").append(']').append(',');
 	out.println("******* "+ data); */

 	
 	
 	String query_str2 = "select distinct caseid from bpi.manuf";
 	ResultSet rs2=stmt.executeQuery(query_str2);
 	int countid =0;
 	while(rs2.next()){
 		countid++;
 	}
 	out.println("how many caseid? : " +countid);
	//--------Case 1--------------
	ResultSet rs1;
	

	String query_str1 = "select * from bpi.manuf where caseid='4'or caseid='6'";
	 rs1=stmt.executeQuery(query_str1);
	//data1.append('[');
	int count =0;
	while(rs1.next())
	{
		if(count >0 )
		{
			data1.append(',');
		}
		//date
		date = rs1.getString("time");
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		Date date1 = sdf.parse(date);
		Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
		calendar.setTime(date1);
		//out.println(calendar.get(Calendar.YEAR));
		int timessss= count+1;
		out.println("                ");
		out.println("Times"+timessss);
		int Y=calendar.get(Calendar.YEAR);
		out.println( Y+"/");
		int M=calendar.get(Calendar.MONTH)+1;
		out.println(M+"/");
		int D=calendar.get(Calendar.DATE);
		out.println(D+"/");
		int S=calendar.get(Calendar.SECOND);
		out.println(S+":");
		int H=calendar.get(Calendar.HOUR);
		out.println( H+":");	
		int MM=calendar.get(Calendar.MINUTE);
		out.println( MM);
		out.println("                ");
		
		
		//out.println(date);
		
		//Calendar calendar = new GregorianCalendar(2013,1,28,13,24,56);

		//Date datea = sdf.parse(date);
		/*data.addRows([
                      [new Date(2314, 2, 15), 15768, undefined, undefined],
                      [new Date(2314, 2, 16), 24045, 'Lalibertines', 'First encounter'],
                      [new Date(2314, 2, 17), 35022, 'Lalibertines', 'They are very tall'],
                      [new Date(2314, 2, 18), 12284, 'Lalibertines', 'Attack on our crew!'],
                      [new Date(2314, 2, 19), 8476, 'Lalibertines', 'Heavy casualties'],
                      [new Date(2314, 2, 20), 0, 'Lalibertines', 'All crew lost']
                    ]);  */
		//Date datea = new Date(2314, 2, 20);	
                    String s = "new Date("+Y+","+M+","+D+","+H+","+MM+","+S+")";
                    out.println(s);
		data1.append('[').append(s).append(',');
		//quantity
		quantity = rs1.getInt("quantity");
		data1.append(quantity).append(',');
		//case
		//caseid = rs1.getString("caseid");
		//data.append("'").append(caseid).append("'").append(',');
		//activity
		activity = rs1.getString("activity");
		data1.append("'").append(activity).append("'").append(',');
		//data1.append(" '").append("abc").append("'").append(',');
		//machine
		machine = rs1.getString("machine");
		data1.append("'").append(machine).append("'").append(']');
		//data1.append(" '").append("def").append("'").append(']');
		count++;
	}
	//data1.append(']');
	//System.out.println(new Date(2001,9,9));
	rs1.close();
	/* int countA=0;
	if(rs1.next()){
		countA =rs1.getInt(1);	
	}
	
	out.println(" Activity A :"+countA);
	rs1.close();
	data.append('[').append("'Activity A'").append(',').append(countA).append(']').append(',');
	//------------------------------
	//--------Activity B--------------
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
	//--------Activity C--------------
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
	//--------Activity D--------------
				query_str1 = "select count(*) from bpi.manuf where activity='Activity D'";
				rs1=stmt.executeQuery(query_str1);
				int countD=0;
				if(rs1.next()){
					countD =rs1.getInt(1);	
				}
				
				out.println(" Activity D :"+countD);
				rs1.close();
				
				data.append('[').append("'Activity D'").append(',').append(countD).append(']');		
	 //------------------------------ */
	 out.println(data1);
	//--------------------------

     stmt.close();
     //stmt1.close();
     conn.close();
	
	}catch(Exception e){                                                    

		e.printStackTrace();

	}


%>
    <script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1','packages':['annotationchart']}]}"></script>
    <script type='text/javascript'>
      google.load('visualization', '1', {'packages':['annotationchart']});
      google.setOnLoadCallback(drawChart);
      var datajs = [<%=data1.toString()%>];
      //alert(datajs);
      alert(new Date(2314,2,15));
      function drawChart() {
    	  
    	  
    	  var data = new google.visualization.DataTable();
          data.addColumn('datetime', 'Date');
          data.addColumn('number', 'Quantity');
          data.addColumn('string', 'Activity');
          data.addColumn('string', 'Machine');
          
          
           data.addRows(datajs);
           
        /* var data = new google.visualization.DataTable();
        data.addColumn('date', 'Date');
        data.addColumn('number', 'Kepler-22b mission');
        data.addColumn('string', 'Kepler title');
        data.addColumn('string', 'Kepler text');
        data.addColumn('number', 'Gliese 163 mission');
        data.addColumn('string', 'Gliese title');
        data.addColumn('string', 'Gliese text');*/
        
         /*data.addRows([
                      [new Date(2314, 2, 15), 15768, undefined, undefined],
                      [new Date(2314, 2, 16), 24045, 'Lalibertines', 'First encounter'],
                      [new Date(2314, 2, 17), 35022, 'Lalibertines', 'They are very tall'],
                      [new Date(2314, 2, 18), 12284, 'Lalibertines', 'Attack on our crew!'],
                      [new Date(2314, 2, 19), 8476, 'Lalibertines', 'Heavy casualties'],
                      [new Date(2314, 2, 20), 0, 'Lalibertines', 'All crew lost']
                    ]);  */
        /* data.addRows([
          [new Date(2314, 2, 15), 15768, undefined, undefined,
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
        ]);  */

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
    <center>

 

</center>
  </body>
</html>