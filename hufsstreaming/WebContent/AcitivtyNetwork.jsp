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
									Connection conn7 = null;
									String url7 = "jdbc:mysql://203.253.70.34:3306/bpi";
									String id7 = "cmpteam";
									String pw7 = "!cmpteam";
									String Data_label7 = "";

									Statement stmt7 = null;

									StringBuffer data7 = new StringBuffer();
									List dataList7 = new ArrayList();
									ArrayList Act7 = new ArrayList();
									StringBuffer dataUtil7 = new StringBuffer();

									try {

										Class.forName("com.mysql.jdbc.Driver");
										conn7 = DriverManager.getConnection(url7, id7, pw7);

										stmt7 = conn7.createStatement();

										//System.out.println(event1);

										String query_str7 = "select caseid, activity, machine, time from bpi.manuf";

										ResultSet rs7 = stmt7.executeQuery(query_str7);

										while (rs7.next()) {

										}
										rs7.close();

										String q7 = "Select distinct activity from manuf"; // q 에 엑티비티들을 따온다

										ResultSet rs27 = stmt7.executeQuery(q7);

										while (rs27.next()) {
											Act7.add(rs27.getString("activity")); // 어레이 리스트에 각각 엑티비티들을 넣어준다 Act(i)=rs2
										}

										//System.out.println(Act);
										////////////// 어레이리스트에 저장한다 activity 들을 그리고 불러올수 있게 준비함 

										String q27 = "Select TIMESTAMPDIFF(SECOND,MIN(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s')),MAX(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s'))) AS TotalactTime FROM manuf ";

										ResultSet rs47 = stmt7.executeQuery(q27);
										int TotalActTime7 = 0;
										while (rs47.next()) {
											TotalActTime7 = rs47.getInt("TotalactTime"); // 쿼리문 써서 게산 
											//out.println("TotalActTime is "+TotalActTime);
										}

										int num7 = 0;
										//System.out.println(Act7.size());
										//준비된 어레이리스트를 사용해서 넣어준다 
										for (int j7 = 0; j7 < Act7.size(); j7++) {
											/* -> 어레이리스트의 길이만큼 반복시킨다 왜 ? 쿼리문을 돌리기위해 */
											String query_str17 = "SELECT  a.caseid ,a.activity, ";

											query_str17 += "STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') as 1stTime, ";

											query_str17 += "MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) as 2nd, ";

											query_str17 += "case ";

											query_str17 += "when MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) = null then STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

											query_str17 += "end as 2ndTime, ";

											query_str17 += "TIMESTAMPDIFF(SECOND,(STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s')),MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s'))) AS TimeDiff7 ";

											query_str17 += "FROM    manuf as a ";

											query_str17 += "LEFT JOIN manuf as b ";

											query_str17 += "ON a.caseid = b.caseid ";

											query_str17 += "AND STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s') > STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

											query_str17 += "GROUP BY a.caseid, a.activity, STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

											query_str17 += "having activity = '" + Act7.get(j7) + "'"; //어레이 리스트 이름과 i 로 줘서 계속 돌아가게 한다
											//System.out.println(Act.get(j));
											ResultSet rs17 = stmt7.executeQuery(query_str17);

											int ValueTime7 = 0;
											int TotalTime7 = 0;

											while (rs17.next()) {
												ValueTime7 = rs17.getInt("TimeDiff7");
												//out.println(ValueTime);
												TotalTime7 = TotalTime7 + ValueTime7;
											}
											rs17.close();

											int countNum7 = 0;
											String q57 = "Select time from manuf where activity = '"
													+ Act7.get(j7) + "'";
											ResultSet rs57 = stmt7.executeQuery(q57);
											while (rs57.next()) {
												countNum7++;
											}
											//out.println(countNum+"/");
											//out.println(TotalTime+"/");
											int TotalTime27 = TotalTime7 / countNum7;
											//out.println(TotalTime2+"/");
											//out.println(TotalActTime);
											int util7 = TotalTime27 * 100 / TotalActTime7;

											// mean 이용 or median 이용
											// mean 평균구하는것  
											// median 중심값 구하는거 

											Integer.toString(util7);
											dataList7.add(util7);
											//first label

											if (num7 == 0) {
												dataUtil7.append('[').append("'Activity'").append(',')
														.append("'Value'").append(']');
												num7++;
											}
											dataUtil7.append(',').append('[').append("'")
													.append(Act7.get(num7++ - 1));
											num7--;
											dataUtil7.append("'").append(',')
													.append(dataList7.get(num7++ - 1)).append(']');
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

										rs27.close();
										rs47.close();

										/* for (int k7 = 0; k7 < Act7.size(); k7++) {
											out.println(Act7.get(k7) + " 's Utilisation is = "
													+ dataList7.get(k7) + "%" + "<BR>");
										} */
										stmt7.close();
										conn7.close();

										// out.println("1");

									}//for loop 이까지

									catch (Exception e) {

										e.printStackTrace();

									}
								%>
								<!-- 
                            	<form action ="02_Utilization.jsp" >
                            	<input type="submit" value="Activity" onclick="j;"/> 
                            	</form> -->

								<script type="text/javascript"
									src="https://www.google.com/jsapi"></script>
								<script type="text/javascript">
									google.load("visualization", "1", {
										packages : [ "gauge" ]
									});
									google.setOnLoadCallback(drawChart);
									var data17 = [
								<%=dataUtil7%>
									];
									function drawChart() {

										var data7 = google.visualization
												.arrayToDataTable(data17);

										//);

										var options = {
											width : 700,
											height : 300,
											redFrom : 0,
											redTo : 20,
											yellowFrom : 20,
											yellowTo : 80,
											greenFrom : 80,
											greenTo : 100,
											minorTicks : 5
										};

										var chart = new google.visualization.Gauge(
												document
														.getElementById('chart_div7'));

										chart.draw(data7, options);

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
								<div id="chart_div7" style="width: 800px; height: 250px;"></div>

</body>
</html>