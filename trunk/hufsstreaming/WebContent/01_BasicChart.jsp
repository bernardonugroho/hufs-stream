<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, java.util.*,java.util.ArrayList.*"%>
<!DOCTYPE html>
<html lang="en">

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
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">SB Admin v2.0</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
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
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li><a class="active" href="index(main).jsp"><i
								class="fa fa-table fa-fw"></i> Home</a></li>
						<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
								Dashboard<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="01_BasicChart.jsp">Basic Charts</a></li>
								<li><a href="02_Utilization.jsp">Utilization Charts</a></li>
								<li><a href="03_Annotation.jsp">Annotation Charts</a></li>
							</ul> <!-- /.nav-second-level --> <!-- <a href="dashboard.jsp"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a> -->
						</li>
						<li><a href=" "><i class="fa fa-table fa-fw"></i>
								Machine Network</a></li>
						<li><a href=" "><i class="fa fa-table fa-fw"></i>
								Process Views</a></li>
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
                <div class="col-lg-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Select option
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="flot-chart">
                            
                            Select Activity or Machine
                            <input type="submit" value="Activity" />
                            <input type="submit" value="Machine"  /><br>
                            
                            <br>Select Frequency or time<br>
                           <input type="submit" value="Frequency"/>
                           <input type="submit" value="time"/><br>
                           
                                <!-- <div class="flot-chart-content" id="flot-pie-chart"></div> -->
                                <!-- combo box selection activity -->
                                <!-- data connection -->
               	<script>
	  function Send(frm){
		  frm.action="01_BasicChart.jsp";
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
  String activity=request.getParameter("activity");
  //System.out.println(activity+"媛��������듬���);
  //out.println(activity+"媛��������듬���);
  
   String q = "select count(*), activity, machine from bpi.manuf where activity = '"+activity+"' group by activity, machine";
	ResultSet rs3=stmt.executeQuery(q);
	while(rs3.next())
	{
		//out.println(" This is count "+rs3.getString(1));
		//out.println(" between "+rs3.getString(3));
		//out.println(" and "+activity + " /////////// ");%><br><%
		data.append(',').append('[').append("'").append(activity).append(" & ").append(rs3.getString(3)).append("'").append(',').append(rs3.getString(1)).append(']');
	}
	out.println();
	rs3.close();
	//out.println(" data : --- "+data.toString());

		//Find the activity
	 	//SELECT distinct activity from manuf
	 	String query_str1 = "select distinct activity from bpi.manuf";
		ResultSet rs1=stmt.executeQuery(query_str1);
		int k=0;
		%>
		
                                <form name="act1">
									<select name="activity" onchange="Send(act1)">
									<%
									while(rs1.next())
									{
										name.add(rs1.getString("activity"));
										//out.println("arraylist : "+name.get(k));
										if(activity==null){
											%>
											<option value="<%=name.get(k)%>" ><%=name.get(k) %></option>
											<%
										}
										if(activity!=null){
											if(activity.equals(rs1.getString("activity"))){
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
                                <!--  -->
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                
                
   
                <%
		//-------------------------
	
	     stmt.close();
	     stmt1.close();
	     conn.close();
		
		}catch(Exception e){                                                    

			e.printStackTrace();

		}

        %>
               
</div>
                <!--  -->
                
                
                
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Chart
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="flot-chart">
                            <script> function Frequency() {</script> Choose the Chart
                           
                           
                           
                            <form action="01_BasicChart.jsp">
                            
                        
                            
							<!-- <input type="Submit" value="Bar Chart" name="act">
							<input type="submit" value="Pie Chart"name="act"/>
                           <input type="submit" value="Line Chart" name="act"/> -->
                           
                           
                           
                           <input type="submit" value="Bar Chart" onclick="MyBar()"/> 
                          <input type="button" value="Pie Chart" onclick="MyPie()"/>
                           <input type="submit" value="Line Chart" onclick="MyLine()"/>
							</form>
                           
                            
                      <!--   <input type="submit" value="Bar Chart" onclick="MyBar()"/> 
                          <input type="button" value="Pie Chart" onclick="MyPie()"/>
                           <input type="submit" value="Line Chart" onclick="MyLine()"/>  -->
                              <script> } </script> 
                               
                               
                               
                               
                               
                               
                               <!-- google chart -->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
    function MyBar(){   
    google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);      
      var datajs = [<%=data.toString()%>];
      alert(datajs);
      function drawChart() {
        var data = google.visualization.arrayToDataTable(datajs);
        var options = {
          title: 'Bar Chart'
        };
        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    }
    </script>
<div id="chart_div" style="width: 600px; height: 300px;"></div>
          
                
   <!-- --------------------------------------------------------------------------------------------- -->          
                
                 
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>                  
    <script type="text/javascript">
    function MyPie(){   
    google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      var datajs = [<%=data.toString()%>];
      alert(datajs);
      function drawChart() {
        var data = google.visualization.arrayToDataTable(datajs);
        var options = {
          title: 'Pie Chart'
        };
        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        chart.draw(data, options);
      }
    }
    </script>
<div id="piechart" style="width: 600px; height: 300px;"></div>

                    
  <!-- --------------------------------------------------------------------------------------------- -->          
                    
                     
                         
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">     
    function MyLine(){   
    google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      var datajs = [<%=data.toString()%>];
      alert(datajs);
      function drawChart() {
        var data = google.visualization.arrayToDataTable(datajs);
        var options = {
          title: 'Line Chart'
        };
        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    }
    </script>
<div id="chart_div" style="width: 600; height: 300px;"></div>

                            <!--  -->
                            <!--   <div class="flot-chart-content" id="flot-line-chart"></div> -->
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                 <!--    /.panel -->
                </div> 
                
                <!-- /.col-lg-12 --> 
                
                
                
                
                
                
                
                
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
