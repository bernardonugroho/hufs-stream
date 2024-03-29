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

<title>HUFS SM-PAS</title>

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
					<h1 class="page-header">RealTimeData Utilization(KPI)</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>


			<!-- utilization code -->


			<!--@@@@@@@@@@@@@@@@ DB 접속 & 데이터 페이지에 띄우기 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			<%
			String FileName = (String) session.getAttribute("FileName");
			String Database = FileName;
				Connection conn = null;
				String url = "jdbc:mysql://203.253.70.34:3306/bpi";
				String id = "cmpteam";
				String pw = "!cmpteam";
				String Data_label = "";

				Statement stmt = null;
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(url, id, pw);

				stmt = conn.createStatement();

				String query_str2 = "select distinct machine from "+Database+" order by machine asc ";
				ResultSet rs2 = stmt.executeQuery(query_str2);
				ArrayList GOGO = new ArrayList();
				while (rs2.next()) {
					GOGO.add(rs2.getString(1));
				}
			%>

			<!--@@@@@@@@@@@@@@@@ DB 접속 & 데이터 페이지에 띄우기 끝 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->

			<!--@@@@@@@@@@@@@@@@@@ 첫번째 row 시작 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->
			<div class="row">

				<!--@@@@@@@@@@@@@@@@@@ 가우지 그래프 띄우는 창 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong>Result show up page (Gauge Chart)</strong>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<form></form>
							<div class="panel-body">
								<div class="flot-chart">

									<iframe src="./GaugeChart/GaugeChartIframepage.jsp" name="Machine"
										frameborder="0" marginwidth="0" , marginheight="0"
										allowtransparency style="width: 950px; height: 400px";></iframe>


									<div class="progress">
										<div class="bar" style="width: 60%;"></div>
									</div>

								</div>
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>

				</div>
				<!--@@@@@@@@@@@@@@@@@@ 가우지 그래프 띄우는 창  끝 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->

			</div>

			<!--@@@@@@@@@@@@@@@@@@ 첫번째 row 끝 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->


			<!--@@@@@@@@@@@@@@@@@@ 두번째 row 시작 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->
			<div class="row">

				<!--@@@@@@@@@@@@@@@@@ 컨디션 1 Caseid Select 시작 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->

				<div class="col-lg-3">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong>CaseID Selection</strong>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<form></form>
							<div class="panel-body">
								<div class="flot-chart">

									<div
										style="overflow: scroll; width: 200px; height: 400px; padding: 10px;">

										<%
											String query_str4 = "select distinct caseid from "+Database+" order by caseid asc";
											ResultSet rs4 = stmt.executeQuery(query_str4);
											ArrayList GOGO3 = new ArrayList();
											while (rs4.next()) {
												GOGO3.add(rs4.getString(1));
											}
										%>
										<form action="./GaugeChart/GaugeChartProductivity.jsp" method="post"
											target="Machine">
											<%
												for (int si3 = 0; si3 < GOGO3.size(); si3++) {
											%>
											<input name="checkbox1" type="checkbox"
												value="<%=GOGO3.get(si3)%>"></input><%=GOGO3.get(si3)%></br>

											<%
												}
											%>
											</div>
											<input type="submit" value="                Analyze               ">

											<%
												rs4.close();
											%>
										</form>
									
								</div>
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
				</div>

				<!--@@@@@@@@@@@@@@@@@ 컨디션 1 Caseid Select 끝 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->

				<!--@@@@@@@@@@@@@@@@@ 컨디션 2 Activity Select 시작 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->

				<div class="col-lg-3">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong>Activity Selection</strong>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<form></form>
							<div class="panel-body">
								<div class="flot-chart">

									<div
										style="overflow: scroll; width: 200px; height: 400px; padding: 10px;">
										<%
											String query_str3 = "select distinct activity from "+Database+" order by activity asc ";
											ResultSet rs3 = stmt.executeQuery(query_str3);
											ArrayList GOGO2 = new ArrayList();
											while (rs3.next()) {
												GOGO2.add(rs3.getString(1));
											}
										%>
										<form action="./GaugeChart/GaugeChartActivityUtil.jsp" method="post"
											target="Machine">
											<%
												for (int si2 = 0; si2 < GOGO2.size(); si2++) {
											%>
											<input name="checkbox1" type="checkbox"
												value="<%=GOGO2.get(si2)%>"></input><%=GOGO2.get(si2)%></br>

											<%
												}
											%>
											</div>
											<input type="submit" value="               Analyze               ">
											<%
												rs3.close();
											%>
										</form>
									
								</div>
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
				</div>

				<!--@@@@@@@@@@@@@@@@@ 컨디션 2 Activity Select 시작 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->


				<!--@@@@@@@@@@@@@@@@@ 컨디션 3 Machine Select 시작 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->
				<div class="col-lg-3">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong>Machine Selection</strong>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<form></form>
							<div class="panel-body ">
								<div class="flot-chart">

									<div
										style="overflow: scroll; width: 200px; height: 400px; padding: 10px;">
										<form action="./GaugeChart/GaugeChartMachineUtil.jsp" method="post"
											target="Machine">
											<%
												for (int si = 0; si < GOGO.size(); si++) {
											%>
											<input name="checkbox1" type="checkbox"
												value="<%=GOGO.get(si)%>"></input><%=GOGO.get(si)%></br>

											<%
												}
											%>
											</div>
											<input type="submit" value="               Analyze               ">
											<%
												rs2.close();
											%>
										</form>
									


								</div>
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
				</div>

				<!--@@@@@@@@@@@@@@@@@ 컨디션 3 Machine Select 끝 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->

				<!--@@@@@@@@@@@@@@@@@ 컨디션 4 Quantity Select 시작 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->
				<div class="col-lg-3">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong>Quantity Selection</strong>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<form></form>
							<div class="panel-body ">
								<div class="flot-chart">

									<%
										String query_str5 = "select distinct quantity from "+Database+" order by quantity asc";
										ResultSet rs5 = stmt.executeQuery(query_str5);
										ArrayList GOGO5 = new ArrayList();
										while (rs5.next()) {
											GOGO5.add(rs5.getString(1));
										}
									%>
									<div
										style="overflow: scroll; width: 200px; height: 400px; padding: 10px;">
										<form action="GaugeChartQuantity.jsp" method="post"
											target="Machine">
											<%
												for (int si5 = 0; si5 < GOGO5.size(); si5++) {
											%>
											<input name="checkbox1" type="checkbox"
												value="<%=GOGO5.get(si5)%>"></input><%=GOGO5.get(si5)%></br>

											<%
												}
											%>
											</div>
											<input type="submit" value="               Analyze               ">
											<%
												rs5.close();
											%>
										</form>
									


								</div>
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
				</div>

				<!--@@@@@@@@@@@@@@@@@ 컨디션 4 Quantity Select 끝 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->


			</div>
			<!--@@@@@@@@@@@@@@@@@@ 두번째 row 끝 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->


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
