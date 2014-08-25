<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page language="java" import="XPDL_Esper.*, java.sql.*, java.util.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<input type="button" value="OK">
<jsp:useBean id="esp" class="XPDL_Esper.EsperMains"></jsp:useBean>
<%
esp.EsperMains();

Connection conn = null; 
String url = "jdbc:mysql://203.253.70.34:3306/bpi";        
String id = "cmpteam";                                                   
String pw = "!cmpteam";                                                
String Data_label = "";
  
Statement stmt = null;

//esp.getNotifContainer();
/* final String notif = esp.getNotifContainer();
 new Thread(new Runnable(){
	@Override
	public void run(){
		//esp.getNotifContainer();
		try {
		out.println("%#%@#$@ "+notif);
		while(true)
			out.println("abc");
	} catch (Exception e) {
	}
		
	}
});   */

//if(true)
//{
//System.out.println("%%%%"+esp.getNotifContainer());
//}//


try{

		Class.forName("com.mysql.jdbc.Driver");   
		conn=DriverManager.getConnection(url,id,pw);              

		stmt = conn.createStatement();

		String query_str = "delete from bpi.manuf"; 
		
		stmt.executeUpdate(query_str);
		
        stmt.close();
        conn.close();
		
		}catch(Exception e){                                                    

			e.printStackTrace();
        }

		try{

		                
		Class.forName("com.mysql.jdbc.Driver");   
		conn=DriverManager.getConnection(url,id,pw);              

		stmt = conn.createStatement();
		
		//System.out.println(event1);
		
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
			<% 
        }
		rs.close();

	     stmt.close();
	     conn.close();
		
		}catch(Exception e){                                                    

			e.printStackTrace();

		}

%>
<textarea name="abc" value="">



</textarea>
</body>
</html>