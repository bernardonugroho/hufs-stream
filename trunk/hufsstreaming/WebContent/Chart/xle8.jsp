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
int countid = 0;
int i = 0;
ArrayList<String> n = new ArrayList<String>();

/* options = {
		  chart: { interpolateNulls: true }
		}
 */
try{	

    
	Class.forName("com.mysql.jdbc.Driver");   
	conn=DriverManager.getConnection(url,id,pw);              

	stmt = conn.createStatement();
	
 	String query_str2 = "select distinct caseid from bpi.manuf1";
 	ResultSet rs2=stmt.executeQuery(query_str2);
 	%>
 	<div>
 	<form action="xle8.jsp">  
 	 
    <% while(rs2.next()){ %>
    
        <input type="checkbox" name="chex" value="<%=rs2.getInt(1)%>"><%=rs2.getInt(1)%> </input></br>
        <%} rs2.beforeFirst(); %>
        <input type="submit" value="ok">
        <%String chkbox[] = request.getParameterValues("chex");
        out.println(request.getParameter("chex")+"iiii");
        out.println("<BR>"); %>
        </form>
        </div>
        
        
 	 <%
 	try{
        
			for( int z = 0; z < chkbox.length; z++ )
			{
			out.println(chkbox[z]);
			
			}
			 out.println("<BR>");
			 out.println(chkbox.length+"<<< is length");
			 out.println("<BR>");
		      
			if(request.getParameter("chex") == null )
	    	{
				out.println("empty");
				out.println(chkbox[0]);
	    	}else{
	    		
	    		while(rs2.next()){
 		  countid++;
 		  out.println(rs2.getInt(1));
 		  out.println("<BR>");
 		  n.add(rs2.getString(1));
	}rs2.close();
 	out.println("how many caseid? : " +countid);
 	 out.println("<BR>");
 	int count =0;
 	 
 		 for ( int z = 0; z < chkbox.length; z++ )
 		 {
 	 ResultSet ci1;
		String query_strc1 = "select * from bpi.manuf1 where caseid= '"+chkbox[z]+"' order by time asc ";	
	 ci1=stmt.executeQuery(query_strc1); 	
	 
	 //1.  select each case
	 //2. put in the stringbuffer
	 //3. if there are some data in DB, then put in the stringbuffer
	 //4. if there is no data (until 10), then write undefined	
	
while(ci1.next())
	{
		int Da=ci1.getInt(1);
		if(count >0 )
		{
			data1.append(',');
		}
		//date
		date = ci1.getString("time");
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		Date date1 = sdf.parse(date);
		Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
		calendar.setTime(date1);
		out.println("Caseid "+Da+ " ");
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
		
                    String s = "new Date("+Y+","+M+","+D+","+H+","+MM+","+S+")";
                    out.println(s);
                    out.println("<BR>");
		data1.append('[').append(s).append(',');
		
		for(int sup=0;sup<z;sup++)
		{		
		data1.append("null").append(',');
		//case
		//data.append("'").append(caseid).append("'").append(',');
		//activity
		data1.append("undefined").append(',');
		//machine
		data1.append("undefined").append(',');
		}
		
		//quantity
		quantity = ci1.getInt("quantity");
		data1.append(quantity).append(',');
		//case
		//caseid = rs1.getString("caseid");
		//data.append("'").append(caseid).append("'").append(',');
		//activity
		activity = ci1.getString("activity");
		data1.append("'").append(activity).append("'").append(',');
		//data1.append(" '").append("abc").append("'").append(',');
		//machine
		machine = ci1.getString("machine");
		data1.append("'").append(machine).append("'");
		//data1.append(" '").append("def").append( "'").append(']');

		 for(int sup=z;sup<chkbox.length-1;sup++)
		{
		data1.append(',');
		data1.append("null").append(',');
		//case
		//data.append("'").append(caseid).append("'").append(',');
		//activity
		data1.append("undefined").append(',');
		//machine
		data1.append("undefined");
		}
		data1.append(']'); 
		//data1.append(" '").append("def").append( "'").append(']');
		count++;
		  //out.println("<BR>");
	}

	ci1.close();

	} // this if the close of FOR LOOPS
	
	
	// out.println(data1);

	//--------------------------

     stmt.close();
     conn.close();
	
        	}
			}catch(Exception e){                                                    

		e.printStackTrace();

	}


%>

    <script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1','packages':['annotationchart']}]}"></script>
    <script type='text/javascript'>
      google.load('visualization', '1', {'packages':['annotationchart']});
      google.setOnLoadCallback(drawChart);
      var datajs = [<%=data1.toString()%>];
      var countids = <%=countid%>;
      var msi= <%=chkbox.length%>;     
      var ii=0;
     
     

      function drawChart() {    
    	  var data = new google.visualization.DataTable();
          data.addColumn('datetime', 'Date');
          while(ii<msi){
          data.addColumn('number', 'Quantity');
          data.addColumn('string', 'Activity');
          data.addColumn('string', 'Machine');
          ii++;  
    	 }
          
          
           data.addRows(datajs);
        var chart = new google.visualization.AnnotationChart(document.getElementById('chart_div'));

        var options = {
                displayAnnotations: true,
                chart: { interpolateNulls: true }
              };
        chart.draw(data, options);
      }<%
}
catch(Exception e){ }%>
      
      
    </script>
  </head>

  <body>
    <div id='chart_div' style='width: 900px; height: 500px;'></div>
    <center>
    
     

</center>
  </body>
</html>