<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.sql.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Timeline CSS -->
<link href="css/plugins/timeline.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="css/plugins/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>


<%
String FileName = (String) session.getAttribute("FileName");

String Database = FileName;
String activity = "activty";
String caseid = "caseid";
String machine = "machine";
String time = "time";

		String[] check = request.getParameterValues("checkbox1");
		for (int i = 0; i < check.length; i++) {
			out.println("CaseID -"+check[i]+"-"+" ,");
		}
		out.println("'s Productivity based on product Quantity ");
	%>
	
		<%
		Connection conn9 = null; 
	String url9 = "jdbc:mysql://203.253.70.34:3306/bpi";        
	String id9 = "cmpteam";                                                   
	String pw9 = "!cmpteam";                                                
	String Data_label9 = "";
	  
	Statement stmt9 = null;

	StringBuffer data9 = new StringBuffer();
	List dataList9 = new ArrayList();
	List dataList29 = new ArrayList();
	ArrayList caseid9 = new ArrayList();
	StringBuffer dataUtil9 = new StringBuffer();
	

	try{

	    
		Class.forName("com.mysql.jdbc.Driver");   
		conn9=DriverManager.getConnection(url9,id9,pw9);              

		stmt9 = conn9.createStatement();
		
		
		
		
		//System.out.println(event1);
		
	
		String q9 = "Select distinct caseid from "+Database+""; // q 에 엑티비티들을 따온다
		
		ResultSet rs29 =  stmt9.executeQuery(q9); 
		
		while(rs29.next()){
			caseid9.add(rs29.getInt("caseid")); // 어레이 리스트에 각각 엑티비티들을 넣어준다 Act(i)=rs2
		}
		rs29.close();
		
		//System.out.println(Act);
		////////////// 어레이리스트에 저장한다 activity 들을 그리고 불러올수 있게 준비함 
		
	   
	 
	 	ResultSet rs19=null;
	 	ResultSet rs39=null;
	 	int num9 = 0;
		float capastart=0,capaend=0;
		float caparate=0,sumcaparate=0;
		//준비된 어레이리스트를 사용해서 넣어준다 
		for (int j9 =0 ; j9<check.length ;j9++){
			/* -> 어레이리스트의 길이만큼 반복시킨다 왜 ? 쿼리문을 돌리기위해 */
					
		String query_str19 = "Select quantity as quantity1 from "+Database+" where caseid='"+check[j9]+"'and activity ='Start' ";
		String query_str29 = "Select quantity as quantity2 from "+Database+" where caseid='"+check[j9]+"'and activity ='End' ";
		
		rs19 = stmt9.executeQuery(query_str19);
		while(rs19.next()){
			capastart = rs19.getInt("quantity1");
		}
		
		//out.println("caseid "+ caseid.get(j)+ " 's start capa is"+capastart);
		//out.println();
		rs19.close();
		rs39 = stmt9.executeQuery(query_str29);
	
	
		rs19.close();
		while(rs39.next()){
		capaend= rs39.getInt("quantity2");
		}
		//out.println("caseid "+ caseid.get(j)+ " 's end capa is"+capaend);
		//out.println();
		rs39.close();
		
		caparate = capaend/capastart;
		
		sumcaparate=sumcaparate+caparate;
		//out.println("caseid "+ caseid.get(j)+ " 's end caparate is"+caparate);
		//out.println("caseid "+ caseid.get(j)+ " 's sumcaparate is"+sumcaparate);
		
		dataList29.add(caparate*100);
		dataList9.add(sumcaparate);
		//System.out.println(dataList9);
	
		
		//first label
		
		if (num9 == 0) {
					dataUtil9.append('[').append("'caseid'").append(',')
							.append("'Value'").append(']');
					num9++;
				}
				dataUtil9.append(',').append('[').append("'")
						.append("Case ID ="+check[num9++ - 1]);
				num9--;
				dataUtil9.append("'").append(',')
						.append(dataList29.get(num9++ - 1)).append(']');
		float capautil = sumcaparate;
		
		
		}
		/* for(int k9=0;k9<caseid9.size();k9++){
		out.println("Case id = "+caseid9.get(k9)+" 's caparate(End Quantity/Start Quantity) is = "+dataList29.get(k9)+"%"+"<BR>");
		}  */
		stmt9.close();
	    conn9.close();
	    
	
	    
	}
	   // out.println("1");
	   
		//for loop 이까지
		
	catch(Exception e){                                                    

			e.printStackTrace();

		}
	//out.println(dataUtil9);
	%>
	
	
<html>

<head>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
      google.load("visualization", "1", {packages:["gauge"]});
      google.setOnLoadCallback(drawChart9);
      var data199 = [<%=dataUtil9%>];
      function drawChart9() {

    	 <%-- for(var i=0; i<<%=dataList.size()%>; i++){ --%>
        var data99 = google.visualization.arrayToDataTable(data199);
                                                          
    	 
          
          <%-- 
          ['<%=Act.get(0)%>', <%=dataList.get(0) %>],
          ['<%=Act.get(1)%>, <%=dataList.get(1) %>],
          ['<%=Act.get(2)%>, <%=dataList.get(2) %>],
          ['<%=Act.get(3)%>, <%=dataList.get(3) %>],
           --%>
        //);
    	  
        var options = {
          width: 700, height: 300,
          redFrom: 0, redTo: 20,
          yellowFrom:20, yellowTo: 80,
          greenFrom:80, greenTo: 100,
          minorTicks: 5
        };

        var chart = new google.visualization.Gauge(document.getElementById('chart_div99'));

        chart.draw(data99, options);

       /*  setInterval(function() {
          data.setValue(0, 1, 40 + Math.round(60 * Math.random()));
          chart.draw(data, options);
        }, 13000);
        setInterval(function() {
          data.setValue(1, 1, 40 + Math.round(60 * Math.random()));
          chart.draw(data, options);
        }, 5000);
        setInterval(function() {
          data.setValue(2, 1, 60 + Math.round(20 * Math.random()));
          chart.draw(data, options);
        }, 26000); */
    	 }
    </script>
								<div id="chart_div99" style="width: 800px; height: 250px;"></div>

</body>
</html>