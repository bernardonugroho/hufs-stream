<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page language="java"
	import="XPDL_Esper.*, java.sql.*, java.util.*, java.io.*"%>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SMPAS</title>

	<%
		String FileName=(String) request.getParameter("FileName");
	    
	    if(FileName!=null)
	    {
	    	session.setAttribute("FileName", FileName);
	    	System.out.println(FileName);
	    		
	    }
		
		String BeforePath = request.getParameter("file");
		
		if(FileName!=null){
			session.setAttribute("FileName", FileName);
			System.out.println(BeforePath);
		}		
	%>
	
	
	
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

</head>

<body>
<%
			String FileName2 = (String) session.getAttribute("FileName");
			String Database = FileName2;
			
			Connection conn7 = null;
			String url7 = "jdbc:mysql://203.253.70.34:3306/bpi";
			String id7 = "cmpteam";
			String pw7 = "!cmpteam";
			String Data_label7 = "";
			
			Statement stmt7 = null;
			
			
			try {

				Class.forName("com.mysql.jdbc.Driver");
				conn7 = DriverManager.getConnection(url7, id7, pw7);

				stmt7 = conn7.createStatement();
				
		
		
		
		
		
		
		
			
		
		%>
		

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
				<a class="navbar-brand" href="MainPage.jsp">SMPAS</a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown">
						<li class="divider"></li>
						<li><a href="index.jsp"><i class="fa fa-sign-out fa-fw"></i>
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
						<li><a class="active" href="MainPage.jsp"><i
								class="fa fa-table fa-fw"></i> Home</a></li>
						<!-- <li class="dropdown"></li> -->
						<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
								Dashboard<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="01_BasicChart.jsp">Basic Charts</a></li>
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
					<h1 class="page-header">Home</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="row">
								<!-- <div class="col-xs-3">
									<i class="fa fa-comments fa-5x"></i>
								</div> -->
								<div class="col-xs-9 text-right">
									<div class="huge">
									<% 
									String q = "select count(*) as Total from manuf2 "; // q 에 엑티비티들을 따온다
		ResultSet rs1 =  stmt7.executeQuery(q); 
		int Totalnum=0;
		while(rs1.next()){
			Totalnum=rs1.getInt("Total"); // 어레이 리스트에 각각 엑티비티들을 넣어준다 Act(i)=rs2
		}
		//System.out.println(Totalnum);
		rs1.close();%>
									
									<%=Totalnum %></div>
									<!-- <div>Total Events</div> -->
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">Total Events</span> <span
									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-green">
						<div class="panel-heading">
							<div class="row">
								<!-- <div class="col-xs-3">
									<i class="fa fa-tasks fa-5x"></i>
								</div> -->
								<div class="col-xs-9 text-right">
									<div class="huge">
									<% String p = "select count(distinct caseid) as Caseid from manuf2 ";
		ResultSet rs2 = stmt7.executeQuery(p);
		int Caseidnum=0;
		while(rs2.next()){
			Caseidnum=rs2.getInt("Caseid");
		}
		//System.out.println(Caseidnum);
		rs2.close();%>
									<%=Caseidnum %></div>
									
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">Total CaseId</span> <span
									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-yellow">
						<div class="panel-heading">
							<div class="row">
								<!-- <div class="col-xs-3">
									<i class="fa fa-shopping-cart fa-5x"></i>
								</div> -->
								<div class="col-xs-9 text-right">
									<div class="huge">
									<% String r = "select count(distinct machine) as Machine from manuf2 ";
		ResultSet rs3 = stmt7.executeQuery(r);
		int Machinenum=0;
		while(rs3.next()){
			Machinenum=rs3.getInt("Machine");
		}
		//System.out.println(Machinenum);
		rs3.close();%>
									<%=Machinenum %></div>
									
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">Total Machine</span> <span
									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-red">
						<div class="panel-heading">
							<div class="row">
								<!-- <div class="col-xs-3">
									<i class="fa fa-support fa-5x"></i>
								</div> -->
								<div class="col-xs-9 text-right">
									<div class="huge">
									<% String t = "select count(distinct activity) as Activity from manuf2 ";
		ResultSet rs4 = stmt7.executeQuery(t);
		int Actnum=0;
		while(rs4.next()){
			Actnum=rs4.getInt("Activity");
		}
		//System.out.println(Actnum);
		rs4.close();%>
									<%=Actnum %></div>
									
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">Total Activity</span> <span
									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
			</div>
<%
stmt7.close();
	    conn7.close();
	    
			}
			catch(Exception e){                                                    

				e.printStackTrace();

			} %>
			<div class="row">
				<div class="col-lg-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-tasks fa-fw"></i> Connection
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="list-group">
								<form action="MainPage.jsp" method="post">
									<input type="text" id="FileName" name="FileName">
									<input type="submit" value="Execute" >
								</form>
							</div>
							<!-- /.list-group -->
							<a href="#" class="btn btn-default btn-block"> <i
								class="fa fa-bolt fa-fw"></i>Refresh
							</a>
						</div>
						<!-- /.panel-body -->
					</div>
				</div>
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-tasks fa-fw"></i> File Upload
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="list-group">
								<form action="MainPage.jsp" method="post">
									<input type="file" name="file" size="50" /> <br /> <br /> <input
										type="submit" class="btn btn-default btn-block"
										value="Execute" />
									<!-- <a href="output.jsp" onclick="document.getElementById('file').submit()" class="btn btn-default btn-block"> 
										<i class="fa fa-upload fa-fw"></i>Execute
									</a> -->
								</form>
							</div>
							<!-- /.list-group -->

						</div>
						<!-- /.panel-body -->
					</div>
				</div>
			</div>
			<!-- /#wrapper -->

			<!-- jQuery Version 1.11.0 -->
			<script src="js/jquery-1.11.0.js"></script>

			<!-- Bootstrap Core JavaScript -->
			<script src="js/bootstrap.min.js"></script>

			<!-- Metis Menu Plugin JavaScript -->
			<script src="js/plugins/metisMenu/metisMenu.min.js"></script>

			<!-- Morris Charts JavaScript -->
			<script src="js/plugins/morris/raphael.min.js"></script>
			<script src="js/plugins/morris/morris.min.js"></script>
			<script src="js/plugins/morris/morris-data.js"></script>

			<!-- Custom Theme JavaScript -->
			<script src="js/sb-admin-2.js"></script>


			<%
		
			
			if(BeforePath!=null)
			{
			%>
			<jsp:useBean id="esp2" class="XPDL_Esper.EsperMains"></jsp:useBean>
			<%
			esp2.EsperMains(BeforePath);
			
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
				
					}
					rs.close();

				     stmt.close();
				     conn.close();
					
					}catch(Exception e){                                                    

				e.printStackTrace();

					}
			
			}
	%>
	
</body>

</html>
