<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.sql.*, java.util.*"%>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script>
	
</script>
</head>

<body>


	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">SB Admin v2.0</a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i
						class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-messages">
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem ipsum dolor sit amet, consectetur adipiscing
									elit. Pellentesque eleifend...</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem ipsum dolor sit amet, consectetur adipiscing
									elit. Pellentesque eleifend...</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem ipsum dolor sit amet, consectetur adipiscing
									elit. Pellentesque eleifend...</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>Read
									All Messages</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-messages --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-tasks">
						<li><a href="#">
								<div>
									<p>
										<strong>Task 1</strong> <span class="pull-right text-muted">40%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">
											<span class="sr-only">40% Complete (success)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 2</strong> <span class="pull-right text-muted">20%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
											style="width: 20%">
											<span class="sr-only">20% Complete</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 3</strong> <span class="pull-right text-muted">60%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-warning"
											role="progressbar" aria-valuenow="60" aria-valuemin="0"
											aria-valuemax="100" style="width: 60%">
											<span class="sr-only">60% Complete (warning)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 4</strong> <span class="pull-right text-muted">80%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100" style="width: 80%">
											<span class="sr-only">80% Complete (danger)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>See
									All Tasks</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-tasks --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="#">
								<div>
									<i class="fa fa-comment fa-fw"></i> New Comment <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
										class="pull-right text-muted small">12 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-envelope fa-fw"></i> Message Sent <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-tasks fa-fw"></i> New Task <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>See
									All Alerts</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-alerts --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i> User
								Profile</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
						</li>
						<li class="divider"></li>
						<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
								Logout</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" placeholder="Search...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div> <!-- /input-group -->
						</li>
						<li><a class="active" href="index(main).jsp"><i
								class="fa fa-table fa-fw"></i> Home</a></li>
						<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
								Dashboard<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="01_BasicChart.jsp">Bar Charts</a></li>
								<li><a href="02_Utilization.jsp">Utilization Charts</a></li>
								<li><a href="03_Annotation.jsp">Annotation Charts</a></li>
							</ul> <!-- /.nav-second-level --> <!-- <a href="dashboard.jsp"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a> -->
						</li>
						<li><a href=" "><i class="fa fa-table fa-fw"></i> Machine
								Network</a></li>
						<li><a href=" "><i class="fa fa-table fa-fw"></i> Process
								Views</a></li>

					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Flot</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                
                </div>
                
                
                
                
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Chart
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="flot-chart">
                            
                       <script>
                      function graph()  { </script><%
                    	  String[] subject= request.getParameterValues("chex");
                      String FileName = (String) session.getAttribute("FileName");
          			String manuf = FileName;
                      String activity = "activity";
                      String machine = "machine";
                      String caseid = "caseid";
                      String time = "time";
                    	/* fequency combobox   */
                    	  try{
                    	   if(subject[0].equals("Activity") && subject[1].equals("Machine") && subject[2].equals("Frequency") && subject[3].equals("Bar Chart"))
                      
                    	   { %><script>
                    	   function Send(frm){
                 			  frm.action="01_BasicChart.jsp?chex=Activity&chex=Machine&chex=Frequency&chex=Bar+Chart";
                 			  frm.method="post";
                 			  frm.submit();
                 		  }
                 		  </script>
                 	  
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
String act = request.getParameter(activity);
//System.out.println(activity+"가 선택되었습니다");
//out.println(activity+"가 선택되었습니다");

String q = "select count(*), activity, machine from "+manuf+" where "+activity+" = '"+act+"' group by "+activity+", "+machine;
	ResultSet rs3=stmt.executeQuery(q);
	while(rs3.next())
	{
		//out.println(" This is count "+rs3.getString(1));
		//out.println(" between "+rs3.getString(3));
		//out.println(" and "+activity + " /////////// ");
		String a = "null";
		if(rs3.getString(3).equals(a)){
			continue;
		}
		else{
		data.append(',').append('[').append("'").append(act).append(" & ").append(rs3.getString(3)).append("'").append(',').append(rs3.getString(1)).append(']');
	}
	}
	//out.println();
	rs3.close();
	//out.println(" data : --- "+data.toString());

	
		//Find the activity
	 	//SELECT distinct activity from manuf
	 	String query_str1 = "select distinct "+activity+" from "+manuf;
		ResultSet rs1=stmt.executeQuery(query_str1);
		int k=0;
		%>
		<form name="act1">
		<select name="activity" onchange="Send(act1)">
		<%
		while(rs1.next())
		{
			name.add(rs1.getString(activity));
			//out.println("arraylist : "+name.get(k));
			if(activity==null){
				%>
				<option value="<%=name.get(k)%>" ><%=name.get(k) %></option>
				<%
				
			}
			if(activity!=null){
				if(activity.equals(rs1.getString(activity))){
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
       title: 'Activities & Machines'
     };

     var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

     chart.draw(data, options);
   }
 </script>
<div id="chart_div" style="width: 900px; height: 380px;"></div>
							<%} }catch(Exception e){ }%>
							
							
							
							 <%try{
                    	   if(subject[0].equals("Activity") && subject[1].equals("Machine") && subject[2].equals("Frequency") && subject[3].equals("Pie Chart"))
                      
                    	   {   %><script>
                    	   function Send(frm){
                    			  frm.action="01_BasicChart.jsp?chex=Activity&chex=Machine&chex=Frequency&chex=Pie+Chart";
                    			  frm.method="post";
                    			  frm.submit();
                    		  }
                    		  </script>
                    	  
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
  String act = request.getParameter(activity);
  //System.out.println(activity+"가 선택되었습니다");
  //out.println(activity+"가 선택되었습니다");
  
   String q = "select count(*), activity, machine from "+manuf+" where "+activity+" = '"+act+"' group by "+activity+", "+machine;
	ResultSet rs3=stmt.executeQuery(q);
	while(rs3.next())
	{
		//out.println(" This is count "+rs3.getString(1));
		//out.println(" between "+rs3.getString(3));
		//out.println(" and "+activity + " /////////// ");
		String a = "null";
		if(rs3.getString(3).equals(a)){
			continue;
		}
		else{
		data.append(',').append('[').append("'").append(act).append(" & ").append(rs3.getString(3)).append("'").append(',').append(rs3.getString(1)).append(']');
	}
	}
	//out.println();
	rs3.close();
	//out.println(" data : --- "+data.toString());

	
		//Find the activity
	 	//SELECT distinct activity from manuf
	 	String query_str1 = "select distinct "+activity+" from "+manuf;
		ResultSet rs1=stmt.executeQuery(query_str1);
		int k=0;
		%>
		<form name="act1">
		<select name="activity" onchange="Send(act1)">
		<%
		while(rs1.next())
		{
			name.add(rs1.getString(activity));
			//out.println("arraylist : "+name.get(k));
			if(activity==null){
				%>
				<option value="<%=name.get(k)%>" ><%=name.get(k) %></option>
				<%
				
			}
			if(activity!=null){
				if(activity.equals(rs1.getString(activity))){
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
          title: 'Activities & Machines'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
<div id="piechart" style="width: 900px; height: 380px;"></div>
							<%} }catch(Exception e){ }%>
				
							
							
							<%try{
								 if(subject[0].equals("Activity") && subject[1].equals("Machine") && subject[2].equals("Frequency") && subject[3].equals("Line Chart"))
                      
                    	   {%><script>
                    	   function Send(frm){
                 			  frm.action="01_BasicChart.jsp?chex=Activity&chex=Machine&chex=Frequency&chex=Line+Chart";
                 			  frm.method="post";
                 			  frm.submit();
                 		  }
                 		  </script>
                 	  
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
String act = request.getParameter(activity);
//System.out.println(activity+"가 선택되었습니다");
//out.println(activity+"가 선택되었습니다");

String q = "select count(*), activity, machine from "+manuf+" where "+activity+" = '"+act+"' group by "+activity+", "+machine;
	ResultSet rs3=stmt.executeQuery(q);
	while(rs3.next())
	{
		//out.println(" This is count "+rs3.getString(1));
		//out.println(" between "+rs3.getString(3));
		//out.println(" and "+activity + " /////////// ");
		String a = "null";
		if(rs3.getString(3).equals(a)){
			continue;
		}
		else{
		data.append(',').append('[').append("'").append(act).append(" & ").append(rs3.getString(3)).append("'").append(',').append(rs3.getString(1)).append(']');
	}
	}
	//out.println();
	rs3.close();
	//out.println(" data : --- "+data.toString());

	
		//Find the activity
	 	//SELECT distinct activity from manuf
	 	String query_str1 = "select distinct "+activity+" from "+manuf;
		ResultSet rs1=stmt.executeQuery(query_str1);
		int k=0;
		%>
		<form name="act1">
		<select name="activity" onchange="Send(act1)">
		<%
		while(rs1.next())
		{
			name.add(rs1.getString(activity));
			//out.println("arraylist : "+name.get(k));
			if(activity==null){
				%>
				<option value="<%=name.get(k)%>" ><%=name.get(k) %></option>
				<%
				
			}
			if(activity!=null){
				if(activity.equals(rs1.getString(activity))){
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
       title: 'Activities & Machines'
     };

     var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

     chart.draw(data, options);
   }
 </script>
<div id="chart_div" style="width: 900px; height: 380px;"></div>
							<%} }catch(Exception e){ }%>
							
							
							
						
						
						
						
						<!-- Activity frequency -->
						
						<%try{
                    	   if(subject[0].equals("Activity") && subject[1].equals("Frequency") && subject[2].equals("Bar Chart"))
                      
                    	   {
    
    
    
    
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
 	//out.println("******* "+ data);

 	
 	
 	//Find the activity
 	//SELECT distinct activity from manuf
 	String query_str1 = "select distinct "+ activity+" from "+ manuf;
	ResultSet rs1=stmt.executeQuery(query_str1);
	
	ArrayList<String> name = new ArrayList<String>();
	int k=0;
	while(rs1.next())
	{
		name.add(rs1.getString(activity));
		//out.println("arraylist : "+name.get(k));
		k++;
	}

	rs1.close();
	
	for (String act : name)
	{
	String q = "select count(*) from "+ manuf +" where "+ activity+"='"+act+"'";
	//out.println(q);
	ResultSet rs2=stmt.executeQuery(q);
	int countA=0;
	if(rs2.next()){
		countA =rs2.getInt(1);	
	}
	
	//out.println(act+" : "+countA);
	rs2.close();
	data.append('[').append("'").append(act).append("'").append(',').append(countA).append(']').append(',');
	}
	//out.println(data.toString());
	
	
	//------------------------------		
	 //------------------------------
	 //out.println(data);
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
          title: 'Activities'
        };

        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<div id="chart_div" style="width: 900px; height: 380px;"></div>
							
							
							<%} }catch(Exception e){ }%>
						
						
						<%try{
                    	   if(subject[0].equals("Activity") && subject[1].equals("Frequency") && subject[2].equals("Pie Chart"))
                      
                    	   {
    
    
    
    
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
 	//out.println("******* "+ data);

 	
 	
 	//Find the activity
 	//SELECT distinct activity from manuf
 	String query_str1 = "select distinct "+ activity+" from "+ manuf;
	ResultSet rs1=stmt.executeQuery(query_str1);
	
	ArrayList<String> name = new ArrayList<String>();
	int k=0;
	while(rs1.next())
	{
		name.add(rs1.getString(activity));
		//out.println("arraylist : "+name.get(k));
		k++;
	}

	rs1.close();
	
	for (String act : name)
	{
	String q = "select count(*) from "+ manuf +" where "+ activity+"='"+act+"'";
	//out.println(q);
	ResultSet rs2=stmt.executeQuery(q);
	int countA=0;
	if(rs2.next()){
		countA =rs2.getInt(1);	
	}
	
	//out.println(act+" : "+countA);
	rs2.close();
	data.append('[').append("'").append(act).append("'").append(',').append(countA).append(']').append(',');
	}
	//out.println(data.toString());
	
	
	//------------------------------		
	 //------------------------------
	 //out.println(data);
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
          title: 'Activities'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
<div id="piechart" style="width: 900px; height: 380px;"></div>
							
							<%} }catch(Exception e){ }%>
							
							<%try{
                    	   if(subject[0].equals("Activity") && subject[1].equals("Frequency") && subject[2].equals("Line Chart"))
                      
                    	   {
    
    
    
    
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
 	//out.println("******* "+ data);

 	
 	
 	//Find the activity
 	//SELECT distinct activity from manuf
 	String query_str1 = "select distinct "+ activity+" from "+ manuf;
	ResultSet rs1=stmt.executeQuery(query_str1);
	
	ArrayList<String> name = new ArrayList<String>();
	int k=0;
	while(rs1.next())
	{
		name.add(rs1.getString(activity));
		//out.println("arraylist : "+name.get(k));
		k++;
	}

	rs1.close();
	
	for (String act : name)
	{
	String q = "select count(*) from "+ manuf +" where "+ activity+"='"+act+"'";
	//out.println(q);
	ResultSet rs2=stmt.executeQuery(q);
	int countA=0;
	if(rs2.next()){
		countA =rs2.getInt(1);	
	}
	
	//out.println(act+" : "+countA);
	rs2.close();
	data.append('[').append("'").append(act).append("'").append(',').append(countA).append(']').append(',');
	}
	//out.println(data.toString());
	
	
	//------------------------------		
	 //------------------------------
	 //out.println(data);
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
          title: 'Activities'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<div id="chart_div" style="width: 900px; height: 380px;"></div>
							
							
							<%} }catch(Exception e){ }%>
                    		   						
							
							
							
							
							
							
							
							
							
							<!-- machine frequency -->
						
						<%try{
                    	   if(subject[0].equals("Machine") && subject[1].equals("Frequency") && subject[2].equals("Bar Chart"))
                      
                    	   {
    
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
 	String query_str1 = "select distinct "+machine+" from "+manuf;
	ResultSet rs1=stmt.executeQuery(query_str1);
	
	ArrayList<String> name = new ArrayList<String>();
	int k=0;
	while(rs1.next())
	{
		name.add(rs1.getString(machine));
		//out.println("arraylist : "+name.get(k));
		k++;
	}

	rs1.close();
	for (String mac : name)
	{
	String q = "select count(*) from "+manuf+" where "+machine+"='"+mac+"'";
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
          title: 'Machines'
        };

        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<div id="chart_div" style="width: 900px; height: 380px;"></div>
							<%} }catch(Exception e){ }%>
						
						
						
						<%try{
                    	   if(subject[0].equals("Machine") && subject[1].equals("Frequency") && subject[2].equals("Pie Chart"))
                      
                    	   
                    	   {
    
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
 	String query_str1 = "select distinct "+machine+" from "+manuf;
	ResultSet rs1=stmt.executeQuery(query_str1);
	
	ArrayList<String> name = new ArrayList<String>();
	int k=0;
	while(rs1.next())
	{
		name.add(rs1.getString(machine));
		//out.println("arraylist : "+name.get(k));
		k++;
	}

	rs1.close();
	for (String mac : name)
	{
	String q = "select count(*) from "+manuf+" where "+machine+"='"+mac+"'";
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
          title: 'Machines'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
<div id="piechart" style="width: 900px; height: 380px;"></div>
							<%} }catch(Exception e){ }%>
							
							
							
							
							
						<%try{
                    	   if(subject[0].equals("Machine") && subject[1].equals("Frequency") && subject[2].equals("Line Chart"))
                      
                    	   
                    	   {
    
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
 	String query_str1 = "select distinct "+machine+" from "+manuf;
	ResultSet rs1=stmt.executeQuery(query_str1);
	
	ArrayList<String> name = new ArrayList<String>();
	int k=0;
	while(rs1.next())
	{
		name.add(rs1.getString(machine));
		//out.println("arraylist : "+name.get(k));
		k++;
	}

	rs1.close();
	for (String mac : name)
	{
	String q = "select count(*) from "+manuf+" where "+machine+"='"+mac+"'";
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
          title: 'Machines'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<div id="chart_div" style="width: 900px; height: 380px;"></div>
							<%} }catch(Exception e){ }%>
							
							
							
							
							
							
							
							<!-- Activity time -->
						
						
						<%try{
                    	   if(subject[0].equals("Activity") && subject[1].equals("Time") && subject[2].equals("Bar Chart"))
                      
                    	   {Connection conn = null; 
	String url = "jdbc:mysql://203.253.70.34:3306/bpi";        
	String id = "cmpteam";                                                   
	String pw = "!cmpteam";                                                
	String Data_label = "";
	  
	Statement stmt = null;

	StringBuffer data = new StringBuffer();
	List dataList = new ArrayList();
	ArrayList Act = new ArrayList();
	StringBuffer dataUtil = new StringBuffer();


	try{

	    
		Class.forName("com.mysql.jdbc.Driver");   
		conn=DriverManager.getConnection(url,id,pw);              

		stmt = conn.createStatement();
		
		
		//data initialization
		if (data.length() > 0) {
	     data.append(',');
	 }
	 	data.append('[').append("'Activity'").append(',').append("'Time'").append(']').append(',');
	 	//out.println("******* "+ data);

		
		
		
String q = "Select distinct activity from bpi.manuf"; // q 에 엑티비티들을 따온다
		
		ResultSet rs2 =  stmt.executeQuery(q); 
		
		while(rs2.next()){
			Act.add(rs2.getString("activity")); // 어레이 리스트에 각각 엑티비티들을 넣어준다 Act(i)=rs2
		}
		
		
		////////////// 어레이리스트에 저장한다 activity 들을 그리고 불러올수 있게 준비함 
		
	    String q2 = "Select TIMESTAMPDIFF(SECOND,MIN(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s')),MAX(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s'))) AS TotalactTime FROM bpi.manuf "; 
				
	 	ResultSet rs4 = stmt.executeQuery(q2);
	 	int TotalActTime =0;
	 	while(rs4.next()){
		TotalActTime = rs4.getInt("TotalactTime");  // 쿼리문 써서 게산 
	 	//out.println("TotalActTime is "+TotalActTime);
	 	}
	 	
	 	int num = 0;
		System.out.println(Act.size());
		//준비된 어레이리스트를 사용해서 넣어준다 
		for (int j =0 ; j<Act.size() ;j++){
			/* -> 어레이리스트의 길이만큼 반복시킨다 왜 ? 쿼리문을 돌리기위해 */
		String query_str1 = "SELECT  a.caseid ,a.activity, ";

		query_str1+="STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') as 1stTime, ";
		        
		query_str1+="MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) as 2nd, ";
		        
		query_str1+="case ";  

		query_str1+="when MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) = null then STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="end as 2ndTime, ";

		query_str1+="TIMESTAMPDIFF(SECOND,(STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s')),MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s'))) AS TimeDiff ";

		query_str1+="FROM    bpi.manuf as a ";

		query_str1+="LEFT JOIN bpi.manuf as b ";

		query_str1+="ON a.caseid = b.caseid ";

		query_str1+="AND STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s') > STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="GROUP BY a.caseid, a.activity, STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";
		
		query_str1+="having activity = '"+ Act.get(j) +"'";
		
		ResultSet rs1 = stmt.executeQuery(query_str1);
		
		int ValueTime = 0;
		int TotalTime = 0;
		
		
		while(rs1.next()){
			ValueTime = rs1.getInt("TimeDiff");
			
			TotalTime = TotalTime + ValueTime;
		}
		rs1.close();
		
		
		int countNum=0;
		String q5 = "Select time from bpi.manuf where activity = '"+Act.get(j)+"'";
		ResultSet rs5 = stmt.executeQuery(q5);
		while(rs5.next()){
			countNum++;
		}
		
		int TotalTime2 = TotalTime/countNum;
		
		int util = TotalTime2*100/TotalActTime;
		
		
		
		Integer.toString(TotalTime2);
		dataList.add(TotalTime2);
		
		
		if (num==0)
		{
			dataUtil.append('[').append("'Activity'").append(',').append("'Value'").append(']');
			num++;
		}
		dataUtil.append(',').append('[').append("'").append(Act.get(num++-1));
		num--;
		dataUtil.append("'").append(',').append(dataList.get(num++-1)).append(']');
		
		
		
		
	     
		
		 
		}
		
	 
		
		rs2.close();
		rs4.close(); 
		
		for(int k=0;k<Act.size();k++){
		//out.println(Act.get(k)+" 's Averagetime is = "+dataList.get(k)+""+"<BR>");
		data.append('[').append("'").append(Act.get(k)).append("'").append(',').append(dataList.get(k)).append(']').append(',');
		}
		stmt.close();
	    conn.close();
	    
	   // out.println("1");
	   
		}//for loop 이까지
		
	catch(Exception e){                                                    

			e.printStackTrace();

		}
	//out.println(dataUtil);
	
	
	
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
          title: 'Activity time'
        };

        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<div id="chart_div" style="width: 900px; height: 380px;"></div>
							<%} }catch(Exception e){ }%>
						
						<%try{
                    	   if(subject[0].equals("Activity") && subject[1].equals("Time") && subject[2].equals("Pie Chart"))
                      
                    	   {Connection conn = null; 
	String url = "jdbc:mysql://203.253.70.34:3306/bpi";        
	String id = "cmpteam";                                                   
	String pw = "!cmpteam";                                                
	String Data_label = "";
	  
	Statement stmt = null;

	StringBuffer data = new StringBuffer();
	List dataList = new ArrayList();
	ArrayList Act = new ArrayList();
	StringBuffer dataUtil = new StringBuffer();


	try{

	    
		Class.forName("com.mysql.jdbc.Driver");   
		conn=DriverManager.getConnection(url,id,pw);              

		stmt = conn.createStatement();
		
		
		//data initialization
		if (data.length() > 0) {
	     data.append(',');
	 }
	 	data.append('[').append("'Activity'").append(',').append("'Time'").append(']').append(',');
	 	//out.println("******* "+ data);

		
		
		
String q = "Select distinct activity from bpi.manuf"; // q 에 엑티비티들을 따온다
		
		ResultSet rs2 =  stmt.executeQuery(q); 
		
		while(rs2.next()){
			Act.add(rs2.getString("activity")); // 어레이 리스트에 각각 엑티비티들을 넣어준다 Act(i)=rs2
		}
		
		
		////////////// 어레이리스트에 저장한다 activity 들을 그리고 불러올수 있게 준비함 
		
	    String q2 = "Select TIMESTAMPDIFF(SECOND,MIN(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s')),MAX(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s'))) AS TotalactTime FROM bpi.manuf "; 
				
	 	ResultSet rs4 = stmt.executeQuery(q2);
	 	int TotalActTime =0;
	 	while(rs4.next()){
		TotalActTime = rs4.getInt("TotalactTime");  // 쿼리문 써서 게산 
	 	//out.println("TotalActTime is "+TotalActTime);
	 	}
	 	
	 	int num = 0;
		System.out.println(Act.size());
		//준비된 어레이리스트를 사용해서 넣어준다 
		for (int j =0 ; j<Act.size() ;j++){
			/* -> 어레이리스트의 길이만큼 반복시킨다 왜 ? 쿼리문을 돌리기위해 */
		String query_str1 = "SELECT  a.caseid ,a.activity, ";

		query_str1+="STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') as 1stTime, ";
		        
		query_str1+="MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) as 2nd, ";
		        
		query_str1+="case ";  

		query_str1+="when MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) = null then STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="end as 2ndTime, ";

		query_str1+="TIMESTAMPDIFF(SECOND,(STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s')),MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s'))) AS TimeDiff ";

		query_str1+="FROM    bpi.manuf as a ";

		query_str1+="LEFT JOIN bpi.manuf as b ";

		query_str1+="ON a.caseid = b.caseid ";

		query_str1+="AND STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s') > STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="GROUP BY a.caseid, a.activity, STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";
		
		query_str1+="having activity = '"+ Act.get(j) +"'";
		
		ResultSet rs1 = stmt.executeQuery(query_str1);
		
		int ValueTime = 0;
		int TotalTime = 0;
		
		
		while(rs1.next()){
			ValueTime = rs1.getInt("TimeDiff");
			
			TotalTime = TotalTime + ValueTime;
		}
		rs1.close();
		
		
		int countNum=0;
		String q5 = "Select time from bpi.manuf where activity = '"+Act.get(j)+"'";
		ResultSet rs5 = stmt.executeQuery(q5);
		while(rs5.next()){
			countNum++;
		}
		
		int TotalTime2 = TotalTime/countNum;
		
		int util = TotalTime2*100/TotalActTime;
		
		
		
		Integer.toString(TotalTime2);
		dataList.add(TotalTime2);
		
		
		if (num==0)
		{
			dataUtil.append('[').append("'Activity'").append(',').append("'Value'").append(']');
			num++;
		}
		dataUtil.append(',').append('[').append("'").append(Act.get(num++-1));
		num--;
		dataUtil.append("'").append(',').append(dataList.get(num++-1)).append(']');
		
		
		
		
	     
		
		 
		}
		
	 
		
		rs2.close();
		rs4.close(); 
		
		for(int k=0;k<Act.size();k++){
		//out.println(Act.get(k)+" 's Averagetime is = "+dataList.get(k)+""+"<BR>");
		data.append('[').append("'").append(Act.get(k)).append("'").append(',').append(dataList.get(k)).append(']').append(',');
		}
		stmt.close();
	    conn.close();
	    
	   // out.println("1");
	   
		}//for loop 이까지
		
	catch(Exception e){                                                    

			e.printStackTrace();

		}
	//out.println(dataUtil);
	
	
	
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
          title: 'Activity time'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
<div id="piechart" style="width: 900px; height: 380px;"></div>
							<%} }catch(Exception e){ }%>
						
						<%try{
                    	   if(subject[0].equals("Activity") && subject[1].equals("Time") && subject[2].equals("Line Chart"))
                      
                    	   {Connection conn = null; 
	String url = "jdbc:mysql://203.253.70.34:3306/bpi";        
	String id = "cmpteam";                                                   
	String pw = "!cmpteam";                                                
	String Data_label = "";
	  
	Statement stmt = null;

	StringBuffer data = new StringBuffer();
	List dataList = new ArrayList();
	ArrayList Act = new ArrayList();
	StringBuffer dataUtil = new StringBuffer();


	try{

	    
		Class.forName("com.mysql.jdbc.Driver");   
		conn=DriverManager.getConnection(url,id,pw);              

		stmt = conn.createStatement();
		
		
		//data initialization
		if (data.length() > 0) {
	     data.append(',');
	 }
	 	data.append('[').append("'Activity'").append(',').append("'Time'").append(']').append(',');
	 	//out.println("******* "+ data);

		
		
		
String q = "Select distinct activity from bpi.manuf"; // q 에 엑티비티들을 따온다
		
		ResultSet rs2 =  stmt.executeQuery(q); 
		
		while(rs2.next()){
			Act.add(rs2.getString("activity")); // 어레이 리스트에 각각 엑티비티들을 넣어준다 Act(i)=rs2
		}
		
		
		////////////// 어레이리스트에 저장한다 activity 들을 그리고 불러올수 있게 준비함 
		
	    String q2 = "Select TIMESTAMPDIFF(SECOND,MIN(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s')),MAX(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s'))) AS TotalactTime FROM bpi.manuf "; 
				
	 	ResultSet rs4 = stmt.executeQuery(q2);
	 	int TotalActTime =0;
	 	while(rs4.next()){
		TotalActTime = rs4.getInt("TotalactTime");  // 쿼리문 써서 게산 
	 	//out.println("TotalActTime is "+TotalActTime);
	 	}
	 	
	 	int num = 0;
		System.out.println(Act.size());
		//준비된 어레이리스트를 사용해서 넣어준다 
		for (int j =0 ; j<Act.size() ;j++){
			/* -> 어레이리스트의 길이만큼 반복시킨다 왜 ? 쿼리문을 돌리기위해 */
		String query_str1 = "SELECT  a.caseid ,a.activity, ";

		query_str1+="STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') as 1stTime, ";
		        
		query_str1+="MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) as 2nd, ";
		        
		query_str1+="case ";  

		query_str1+="when MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) = null then STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="end as 2ndTime, ";

		query_str1+="TIMESTAMPDIFF(SECOND,(STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s')),MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s'))) AS TimeDiff ";

		query_str1+="FROM    bpi.manuf as a ";

		query_str1+="LEFT JOIN bpi.manuf as b ";

		query_str1+="ON a.caseid = b.caseid ";

		query_str1+="AND STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s') > STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="GROUP BY a.caseid, a.activity, STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";
		
		query_str1+="having activity = '"+ Act.get(j) +"'";
		
		ResultSet rs1 = stmt.executeQuery(query_str1);
		
		int ValueTime = 0;
		int TotalTime = 0;
		
		
		while(rs1.next()){
			ValueTime = rs1.getInt("TimeDiff");
			
			TotalTime = TotalTime + ValueTime;
		}
		rs1.close();
		
		
		int countNum=0;
		String q5 = "Select time from bpi.manuf where activity = '"+Act.get(j)+"'";
		ResultSet rs5 = stmt.executeQuery(q5);
		while(rs5.next()){
			countNum++;
		}
		
		int TotalTime2 = TotalTime/countNum;
		
		int util = TotalTime2*100/TotalActTime;
		
		
		
		Integer.toString(TotalTime2);
		dataList.add(TotalTime2);
		
		
		if (num==0)
		{
			dataUtil.append('[').append("'Activity'").append(',').append("'Value'").append(']');
			num++;
		}
		dataUtil.append(',').append('[').append("'").append(Act.get(num++-1));
		num--;
		dataUtil.append("'").append(',').append(dataList.get(num++-1)).append(']');
		
		
		
		
	     
		
		 
		}
		
	 
		
		rs2.close();
		rs4.close(); 
		
		for(int k=0;k<Act.size();k++){
		//out.println(Act.get(k)+" 's Averagetime is = "+dataList.get(k)+""+"<BR>");
		data.append('[').append("'").append(Act.get(k)).append("'").append(',').append(dataList.get(k)).append(']').append(',');
		}
		stmt.close();
	    conn.close();
	    
	   // out.println("1");
	   
		}//for loop 이까지
		
	catch(Exception e){                                                    

			e.printStackTrace();

		}
	//out.println(dataUtil);
	
	
	
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
          title: 'Activity time'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<div id="chart_div" style="width: 900px; height: 380px;"></div>
							<%} }catch(Exception e){ }%>
							
							
							
							
							
							
							
							
							
							
							<!-- Machine time -->
						
						<%try{
                    	   if(subject[0].equals("Machine") && subject[1].equals("Time") && subject[2].equals("Bar Chart"))
                      
                    	   {Connection conn = null; 
	String url = "jdbc:mysql://203.253.70.34:3306/bpi";        
	String id = "cmpteam";                                                   
	String pw = "!cmpteam";                                                
	String Data_label = "";
	  
	Statement stmt = null;

	StringBuffer data = new StringBuffer();
	List dataList = new ArrayList();
	ArrayList Mac = new ArrayList();
	StringBuffer dataUtil = new StringBuffer();


	try{

	    
		Class.forName("com.mysql.jdbc.Driver");   
		conn=DriverManager.getConnection(url,id,pw);              

		stmt = conn.createStatement();
		
		
		//data initialization
		if (data.length() > 0) {
	     data.append(',');
	 }
	 	data.append('[').append("'Machine'").append(',').append("'Time'").append(']').append(',');
	 	//out.println("******* "+ data);

		
		//System.out.println(event1);
		
String q = "Select distinct machine from bpi.manuf"; // q 에 엑티비티들을 따온다
		
		ResultSet rs2 =  stmt.executeQuery(q); 
		
		while(rs2.next()){
			Mac.add(rs2.getString("machine")); // 어레이 리스트에 각각 엑티비티들을 넣어준다 Act(i)=rs2
		}
		
		//System.out.println(Act);
		////////////// 어레이리스트에 저장한다 activity 들을 그리고 불러올수 있게 준비함 
		
	    String q2 = "Select TIMESTAMPDIFF(SECOND,MIN(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s')),MAX(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s'))) AS TotalactTime FROM bpi.manuf "; 
				
	 	ResultSet rs4 = stmt.executeQuery(q2);
	 	int TotalActTime =0;
	 	while(rs4.next()){
		TotalActTime = rs4.getInt("TotalactTime");  // 쿼리문 써서 게산 
	 	//out.println("TotalActTime is "+TotalActTime);
	 	}
	 	
	 	int num = 0;
		System.out.println(Mac.size());
		//준비된 어레이리스트를 사용해서 넣어준다 
		for (int j =0 ; j<Mac.size() ;j++){
			/* -> 어레이리스트의 길이만큼 반복시킨다 왜 ? 쿼리문을 돌리기위해 */
		String query_str1 = "SELECT  a.caseid ,a.machine, ";

		query_str1+="STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') as 1stTime, ";
		        
		query_str1+="MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) as 2nd, ";
		        
		query_str1+="case ";  

		query_str1+="when MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) = null then STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="end as 2ndTime, ";

		query_str1+="TIMESTAMPDIFF(SECOND,(STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s')),MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s'))) AS TimeDiff ";

		query_str1+="FROM    bpi.manuf as a ";

		query_str1+="LEFT JOIN bpi.manuf as b ";

		query_str1+="ON a.caseid = b.caseid ";

		query_str1+="AND STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s') > STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="GROUP BY a.caseid, a.activity, STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";
		
		query_str1+="having machine = '"+ Mac.get(j) +"'";
		//System.out.println(Mac.get(j));
		ResultSet rs1 = stmt.executeQuery(query_str1);
		
		int ValueTime = 0;
		int TotalTime = 0;
		
		
		while(rs1.next()){
			ValueTime = rs1.getInt("TimeDiff");
			//out.println(ValueTime);
			TotalTime = TotalTime + ValueTime;
		}
		rs1.close();
		
		
		int countNum=0;
		String q5 = "Select time from bpi.manuf where machine = '"+Mac.get(j)+"'";
		ResultSet rs5 = stmt.executeQuery(q5);
		while(rs5.next()){
			countNum++;
		}
		//out.println(countNum+"/");
		//out.println(TotalTime+"/");
		int TotalTime2 = TotalTime/countNum;
		//out.println(TotalTime2+"/");
		//out.println(TotalActTime);
		int util = TotalTime2*100/TotalActTime;
		
		// mean 이용 or median 이용
		// mean 평균구하는것  
		// median 중심값 구하는거 
		
		Integer.toString(TotalTime2);
		dataList.add(TotalTime2);
		//first label
		
		if (num==0)
		{
			dataUtil.append('[').append("'Machine'").append(',').append("'Value'").append(']');
			num++;
		}
		dataUtil.append(',').append('[').append("'").append(Mac.get(num++-1));
		num--;
		dataUtil.append("'").append(',').append(dataList.get(num++-1)).append(']');
		//data label
		
		
		/* //use arraylist
		//data.append('[').append("'Activity'").append(',').append("'Time'").append(']').append(',');
		data.append('[').append(Act.get(j)+"(%)Util +").append(',').append(util).append(']');
	 	//out.println("Activity B - Utilisation "+ data+"%");
	 	out.println(data);
	 	out.println(" ");
		dataList.add(data); */
		
		 
		//rs2.close(); //******
	     
		
		 
		}
		
	 
		
		rs2.close();
		rs4.close(); 
		
		for(int k=0;k<Mac.size();k++){
		//out.println(Mac.get(k)+" 's Averagetime is = "+dataList.get(k)+""+"<BR>");String a = "null";
				String a = "null";	
		if(Mac.get(k).equals(a)){
				continue;
			}
			else{
		data.append('[').append("'").append(Mac.get(k)).append("'").append(',').append(dataList.get(k)).append(']').append(',');
		}
		}
		stmt.close();
	    conn.close();
	    
	   // out.println("1");
	   
		}//for loop 이까지
		
	catch(Exception e){                                                    

			e.printStackTrace();

		}
	//out.println(dataUtil);
	
	
	
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
          title: 'Machine time'
        };

        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<div id="chart_div" style="width: 900px; height: 380px;"></div>
							<%} }catch(Exception e){ }%>
						
						<%try{
                    	   if(subject[0].equals("Machine") && subject[1].equals("Time") && subject[2].equals("Pie Chart"))
                      
                    	   {Connection conn = null; 
	String url = "jdbc:mysql://203.253.70.34:3306/bpi";        
	String id = "cmpteam";                                                   
	String pw = "!cmpteam";                                                
	String Data_label = "";
	  
	Statement stmt = null;

	StringBuffer data = new StringBuffer();
	List dataList = new ArrayList();
	ArrayList Mac = new ArrayList();
	StringBuffer dataUtil = new StringBuffer();


	try{

	    
		Class.forName("com.mysql.jdbc.Driver");   
		conn=DriverManager.getConnection(url,id,pw);              

		stmt = conn.createStatement();
		
		
		//data initialization
		if (data.length() > 0) {
	     data.append(',');
	 }
	 	data.append('[').append("'Machine'").append(',').append("'Time'").append(']').append(',');
	 	//out.println("******* "+ data);

		
		//System.out.println(event1);
		
String q = "Select distinct machine from bpi.manuf"; // q 에 엑티비티들을 따온다
		
		ResultSet rs2 =  stmt.executeQuery(q); 
		
		while(rs2.next()){
			Mac.add(rs2.getString("machine")); // 어레이 리스트에 각각 엑티비티들을 넣어준다 Act(i)=rs2
		}
		
		//System.out.println(Act);
		////////////// 어레이리스트에 저장한다 activity 들을 그리고 불러올수 있게 준비함 
		
	    String q2 = "Select TIMESTAMPDIFF(SECOND,MIN(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s')),MAX(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s'))) AS TotalactTime FROM bpi.manuf "; 
				
	 	ResultSet rs4 = stmt.executeQuery(q2);
	 	int TotalActTime =0;
	 	while(rs4.next()){
		TotalActTime = rs4.getInt("TotalactTime");  // 쿼리문 써서 게산 
	 	//out.println("TotalActTime is "+TotalActTime);
	 	}
	 	
	 	int num = 0;
		System.out.println(Mac.size());
		//준비된 어레이리스트를 사용해서 넣어준다 
		for (int j =0 ; j<Mac.size() ;j++){
			/* -> 어레이리스트의 길이만큼 반복시킨다 왜 ? 쿼리문을 돌리기위해 */
		String query_str1 = "SELECT  a.caseid ,a.machine, ";

		query_str1+="STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') as 1stTime, ";
		        
		query_str1+="MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) as 2nd, ";
		        
		query_str1+="case ";  

		query_str1+="when MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) = null then STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="end as 2ndTime, ";

		query_str1+="TIMESTAMPDIFF(SECOND,(STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s')),MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s'))) AS TimeDiff ";

		query_str1+="FROM    bpi.manuf as a ";

		query_str1+="LEFT JOIN bpi.manuf as b ";

		query_str1+="ON a.caseid = b.caseid ";

		query_str1+="AND STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s') > STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="GROUP BY a.caseid, a.activity, STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";
		
		query_str1+="having machine = '"+ Mac.get(j) +"'";
		//System.out.println(Mac.get(j));
		ResultSet rs1 = stmt.executeQuery(query_str1);
		
		int ValueTime = 0;
		int TotalTime = 0;
		
		
		while(rs1.next()){
			ValueTime = rs1.getInt("TimeDiff");
			//out.println(ValueTime);
			TotalTime = TotalTime + ValueTime;
		}
		rs1.close();
		
		
		int countNum=0;
		String q5 = "Select time from bpi.manuf where machine = '"+Mac.get(j)+"'";
		ResultSet rs5 = stmt.executeQuery(q5);
		while(rs5.next()){
			countNum++;
		}
		//out.println(countNum+"/");
		//out.println(TotalTime+"/");
		int TotalTime2 = TotalTime/countNum;
		//out.println(TotalTime2+"/");
		//out.println(TotalActTime);
		int util = TotalTime2*100/TotalActTime;
		
		// mean 이용 or median 이용
		// mean 평균구하는것  
		// median 중심값 구하는거 
		
		Integer.toString(TotalTime2);
		dataList.add(TotalTime2);
		//first label
		
		if (num==0)
		{
			dataUtil.append('[').append("'Machine'").append(',').append("'Value'").append(']');
			num++;
		}
		dataUtil.append(',').append('[').append("'").append(Mac.get(num++-1));
		num--;
		dataUtil.append("'").append(',').append(dataList.get(num++-1)).append(']');
		//data label
		
		
		/* //use arraylist
		//data.append('[').append("'Activity'").append(',').append("'Time'").append(']').append(',');
		data.append('[').append(Act.get(j)+"(%)Util +").append(',').append(util).append(']');
	 	//out.println("Activity B - Utilisation "+ data+"%");
	 	out.println(data);
	 	out.println(" ");
		dataList.add(data); */
		
		 
		//rs2.close(); //******
	     
		
		 
		}
		
	 
		
		rs2.close();
		rs4.close(); 
		
		for(int k=0;k<Mac.size();k++){
		//out.println(Mac.get(k)+" 's Averagetime is = "+dataList.get(k)+""+"<BR>");String a = "null";
				String a = "null";	
		if(Mac.get(k).equals(a)){
				continue;
			}
			else{
		data.append('[').append("'").append(Mac.get(k)).append("'").append(',').append(dataList.get(k)).append(']').append(',');
		}
		}
		stmt.close();
	    conn.close();
	    
	   // out.println("1");
	   
		}//for loop 이까지
		
	catch(Exception e){                                                    

			e.printStackTrace();

		}
	//out.println(dataUtil);
	
	
	
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
          title: 'Machine time'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
<div id="piechart" style="width: 900px; height: 380px;"></div>
							<%} }catch(Exception e){ }%>
						
						<%try{
                    	   if(subject[0].equals("Machine") && subject[1].equals("Time") && subject[2].equals("Line Chart"))
                      
                    	   {Connection conn = null; 
	String url = "jdbc:mysql://203.253.70.34:3306/bpi";        
	String id = "cmpteam";                                                   
	String pw = "!cmpteam";                                                
	String Data_label = "";
	  
	Statement stmt = null;

	StringBuffer data = new StringBuffer();
	List dataList = new ArrayList();
	ArrayList Mac = new ArrayList();
	StringBuffer dataUtil = new StringBuffer();


	try{

	    
		Class.forName("com.mysql.jdbc.Driver");   
		conn=DriverManager.getConnection(url,id,pw);              

		stmt = conn.createStatement();
		
		
		//data initialization
		if (data.length() > 0) {
	     data.append(',');
	 }
	 	data.append('[').append("'Machine'").append(',').append("'Time'").append(']').append(',');
	 	//out.println("******* "+ data);

		
		//System.out.println(event1);
		
String q = "Select distinct machine from bpi.manuf"; // q 에 엑티비티들을 따온다
		
		ResultSet rs2 =  stmt.executeQuery(q); 
		
		while(rs2.next()){
			Mac.add(rs2.getString("machine")); // 어레이 리스트에 각각 엑티비티들을 넣어준다 Act(i)=rs2
		}
		
		//System.out.println(Act);
		////////////// 어레이리스트에 저장한다 activity 들을 그리고 불러올수 있게 준비함 
		
	    String q2 = "Select TIMESTAMPDIFF(SECOND,MIN(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s')),MAX(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s'))) AS TotalactTime FROM bpi.manuf "; 
				
	 	ResultSet rs4 = stmt.executeQuery(q2);
	 	int TotalActTime =0;
	 	while(rs4.next()){
		TotalActTime = rs4.getInt("TotalactTime");  // 쿼리문 써서 게산 
	 	//out.println("TotalActTime is "+TotalActTime);
	 	}
	 	
	 	int num = 0;
		System.out.println(Mac.size());
		//준비된 어레이리스트를 사용해서 넣어준다 
		for (int j =0 ; j<Mac.size() ;j++){
			/* -> 어레이리스트의 길이만큼 반복시킨다 왜 ? 쿼리문을 돌리기위해 */
		String query_str1 = "SELECT  a.caseid ,a.machine, ";

		query_str1+="STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') as 1stTime, ";
		        
		query_str1+="MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) as 2nd, ";
		        
		query_str1+="case ";  

		query_str1+="when MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) = null then STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="end as 2ndTime, ";

		query_str1+="TIMESTAMPDIFF(SECOND,(STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s')),MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s'))) AS TimeDiff ";

		query_str1+="FROM    bpi.manuf as a ";

		query_str1+="LEFT JOIN bpi.manuf as b ";

		query_str1+="ON a.caseid = b.caseid ";

		query_str1+="AND STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s') > STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

		query_str1+="GROUP BY a.caseid, a.activity, STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";
		
		query_str1+="having machine = '"+ Mac.get(j) +"'";
		//System.out.println(Mac.get(j));
		ResultSet rs1 = stmt.executeQuery(query_str1);
		
		int ValueTime = 0;
		int TotalTime = 0;
		
		
		while(rs1.next()){
			ValueTime = rs1.getInt("TimeDiff");
			//out.println(ValueTime);
			TotalTime = TotalTime + ValueTime;
		}
		rs1.close();
		
		
		int countNum=0;
		String q5 = "Select time from bpi.manuf where machine = '"+Mac.get(j)+"'";
		ResultSet rs5 = stmt.executeQuery(q5);
		while(rs5.next()){
			countNum++;
		}
		//out.println(countNum+"/");
		//out.println(TotalTime+"/");
		int TotalTime2 = TotalTime/countNum;
		//out.println(TotalTime2+"/");
		//out.println(TotalActTime);
		int util = TotalTime2*100/TotalActTime;
		
		// mean 이용 or median 이용
		// mean 평균구하는것  
		// median 중심값 구하는거 
		
		Integer.toString(TotalTime2);
		dataList.add(TotalTime2);
		//first label
		
		if (num==0)
		{
			dataUtil.append('[').append("'Machine'").append(',').append("'Value'").append(']');
			num++;
		}
		dataUtil.append(',').append('[').append("'").append(Mac.get(num++-1));
		num--;
		dataUtil.append("'").append(',').append(dataList.get(num++-1)).append(']');
		//data label
		
		
		/* //use arraylist
		//data.append('[').append("'Activity'").append(',').append("'Time'").append(']').append(',');
		data.append('[').append(Act.get(j)+"(%)Util +").append(',').append(util).append(']');
	 	//out.println("Activity B - Utilisation "+ data+"%");
	 	out.println(data);
	 	out.println(" ");
		dataList.add(data); */
		
		 
		//rs2.close(); //******
	     
		
		 
		}
		
	 
		
		rs2.close();
		rs4.close(); 
		
		for(int k=0;k<Mac.size();k++){
		//out.println(Mac.get(k)+" 's Averagetime is = "+dataList.get(k)+""+"<BR>");String a = "null";
				String a = "null";	
		if(Mac.get(k).equals(a)){
				continue;
			}
			else{
		data.append('[').append("'").append(Mac.get(k)).append("'").append(',').append(dataList.get(k)).append(']').append(',');
		}
		}
		stmt.close();
	    conn.close();
	    
	   // out.println("1");
	   
		}//for loop 이까지
		
	catch(Exception e){                                                    

			e.printStackTrace();

		}
	//out.println(dataUtil);
	
	
	
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
          title: 'Machine time'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<div id="chart_div" style="width: 900px; height: 380px;"></div>
							<%} }catch(Exception e){ }%>
							
							
						<script> }  </script>
						
						
						
						
                 

                            <!--  -->
                            <!--   <div class="flot-chart-content" id="flot-line-chart"></div> -->
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                 <!--    /.panel -->
                </div> 
                
                <!-- /.col-lg-12 --> 
                
                
                
                <div class="col-lg-4">
					<div class="panel panel-default">
						<div class="panel-heading"><strong>Select Activity or Machine</strong></div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<form></form>
							<div class="panel-body ">
								<div class="flot-chart">

									<div style="overflow: scroll; width: 290px; height: 400px; padding: 10px; ">
										<form action = "01_BasicChart.jsp">
                            Select Activity or Machine<br/>
                        
                            <input type="checkbox" name="chex" value="Activity"> Activity
                            <input type="checkbox" name="chex" value="Machine"> Machine
								
                          
                            <input type="checkbox" name="chex" value="Frequency" > Frequency
                            <input type="checkbox" name="chex" value="Time"> time<br>
									
                        
                             <input type="submit" name="chex" value="Bar Chart" onclick="graph()"> <br>
                            <input type="submit" name="chex" value="Pie Chart" onclick="graph()"> <br>
                            <input type="submit" name="chex" value="Line Chart" onclick="graph()"> <br>
                  
									</div>


								</div>
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
				</div>
				
				
				
				
                
   
          
               
</div>
                <!--  --> 	
                
                
                
                
                
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Flot Charts Usage
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <p>Flot is a pure JavaScript plotting library for jQuery, with a focus on simple usage, attractive looks, and interactive features. In SB Admin, we are using the most recent version of Flot along with a few plugins to enhance the user experience. The Flot plugins being used are the tooltip plugin for hoverable tooltips, and the resize plugin for fully responsive charts. The documentation for Flot Charts is available on their website, <a target="_blank" href="http://www.flotcharts.org/">http://www.flotcharts.org/</a>.</p>
                            <a target="_blank" class="btn btn-default btn-lg btn-block" href="http://www.flotcharts.org/">View Flot Charts Documentation</a>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Flot Charts JavaScript -->
    <script src="js/plugins/flot/excanvas.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/flot-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

</body>

</html>