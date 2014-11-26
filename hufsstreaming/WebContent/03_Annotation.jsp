<%@ page import="java.io.*,java.util.*, java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="ESper.EventListener" %>
<%@ page import="java.sql.*,java.util.Calendar,
    java.util.Date,java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
                <a class="navbar-brand" href="index.jsp">SMPES</a>
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
                        <li>
                            <a href="index.html"><i class="fa fa-dashboard fa-fw"></i> Home</a>
                        </li>
                        <li class="active">
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Dashboard<span class="fa arrow"></span></a>
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
                    <h1 class="page-header">Annotation </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- This is the database connection -->
            
           
            <!-- This is the database connection close statements -->
            <!-- /.row -->
            <div class="row">
             <!-- /.col-lg-12 -->
             
             <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Annotation Chart Example
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="flot-chart">
                              <%
                              
                              String chkbox[] = request.getParameterValues("chex");
                              StringBuffer data1 = new StringBuffer();
                              %>
                              
                              <script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1','packages':['annotationchart']}]}"></script>
										    <script type='text/javascript'>
										    <%
										    out.print(data1.length());
										    if(data1.length()<1){
										    out.print("empty  !");
										    }else{
										   	out.print(data1.length());
										    %>
										   <% }%>
										      </script>
											  <div id='chart_div1' style='width: 1150px; height: 400px;'></div>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Condition
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="flot-chart">
                            
                            <div style="overflow: scroll; width: 290px; height: 360px; padding: 5px; ">
                            
                                   <%  
                                   
                                   String FileName= (String) session.getAttribute("FileName");
                                   String manuf = FileName;
                                   String inactivity = "activity";
                                   String inmachine = "machine";
                                   String incaseid = "caseid";
                                   String intime = "time";
                                  
									    Connection conn = null; 
									String url = "jdbc:mysql://203.253.70.34:3306/bpi";        
									String id = "cmpteam";                                                   
									String pw = "!cmpteam";                                                
									String Data_label = "";
									  
									Statement stmt = null;
									Statement stmt1 = null;
									
									
								
									
									String date=null;
									String caseid =null;
									String activity = null;
									String machine = null;
									int quantity = 0;
									int countid = 0;
									int i = 0;
									ArrayList<String> n = new ArrayList<String>();
									
									
									
									try{	
									
									    
										Class.forName("com.mysql.jdbc.Driver");   
										conn=DriverManager.getConnection(url,id,pw);              
									
										stmt = conn.createStatement();
										
									 	String query_str2 = "select distinct caseid from "+manuf+" order by caseid asc";
									 	ResultSet rs2=stmt.executeQuery(query_str2);
									 	%>
									 	
									 	<form action="03_Annotation.jsp"> 
									 	 <% while(rs2.next()){ %>
									    
									        <input type="checkbox" name="chex" value="<%=rs2.getInt(1)%>"><%=rs2.getInt(1)%> </input></br>
									        <%} rs2.beforeFirst(); %>
									        </div>
									        <input type="submit" value="ok">
									        </form>
									 	 <%
									 	try{
									        
											for( int z = 0; z < chkbox.length; z++ )
											{
											out.println(chkbox[z]+",");
											
											}
											 
											 out.println("Length is : "+chkbox.length);
											 out.println("<BR>");
										      
											if(request.getParameter("chex") == null )
									    	{
												out.println("empty");
												out.println(chkbox[0]);
									    	}else{
									    		
									    		while(rs2.next()){
											  countid++;
											  //out.println(rs2.getInt(1));
											 // out.println("<BR>");
											  n.add(rs2.getString(1));
									}rs2.close();
										//out.println("how many caseid? : " +countid);
										 //out.println("<BR>");
										int count =0;
										 
											 for ( int z = 0; z < chkbox.length; z++ )
											 {
										 ResultSet ci1;
										String query_strc1 = "select * from "+manuf+" where "+incaseid+"= '"+chkbox[z]+"' order by time asc ";	
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
										//out.println("Caseid "+Da+ " ");
										int Y=calendar.get(Calendar.YEAR);
										//out.println( Y+"/");
										int M=calendar.get(Calendar.MONTH)+1;
										//out.println(M+"/");
										int D=calendar.get(Calendar.DATE);
										//out.println(D+"/");
										int S=calendar.get(Calendar.SECOND);
										//out.println(S+":");
										int H=calendar.get(Calendar.HOUR);
										//out.println( H+":");	
										int MM=calendar.get(Calendar.MINUTE);
										//out.println( MM);
										
									                String s = "new Date("+Y+","+M+","+D+","+H+","+MM+","+S+")";
									               // out.println(s);
									               // out.println("<BR>");
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
										activity = ci1.getString(inactivity);
										data1.append("'").append(activity).append("'").append(',');
										//data1.append(" '").append("abc").append("'").append(',');
										//machine
										machine = ci1.getString(inmachine);
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
                            
                          
                                
                                <!-- if -->
                            
                                	
                                <!-- if -->
                                <br>
                                  
                                
                              <!-- chex -->
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                
                <!-- Ãâ·ÂÃ¢ -->
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
										        var chart = new google.visualization.AnnotationChart(document.getElementById('chart_div1'));
										
										        var options = {
										                displayAnnotations: true,
										                chart: { interpolateNulls: true }
										              };
										        chart.draw(data, options);
										      }
											      
											      
											    </script>
                                			
                                	<%
                                }
                                catch(Exception e){ }
                                		%>
                
                <div class="col-lg-12">
                
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Squense
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="flot-chart">
                            <%
                              		   
                            Class.forName("com.mysql.jdbc.Driver");   
                            conn=DriverManager.getConnection(url,id,pw);              
                            stmt = conn.createStatement();
                            String query_str2 = "select distinct caseid from "+manuf+" order by caseid asc";
                            ResultSet rs2=stmt.executeQuery(query_str2);
									 	 %>
	                                
                                			
    <center>
    
  
                               
                            </div>
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
