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
		String[] check = request.getParameterValues("checkbox1");
		for (int i = 0; i < check.length; i++) {
			out.println("��"+check[i]+"��"+" , ");
		}
	        out.println("'s Utilization");
	%>

	<%
		//out.println((String[])request.getParameterValues("sibal"));

		Connection conn = null;
		String url = "jdbc:mysql://203.253.70.34:3306/bpi";
		String id = "cmpteam";
		String pw = "!cmpteam";
		String Data_label = "";

		Statement stmt = null;

		StringBuffer data = new StringBuffer();
		List dataList = new ArrayList();
		ArrayList Act = new ArrayList();
		StringBuffer dataUtil = new StringBuffer();

		try {

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, id, pw);

			stmt = conn.createStatement();

			//System.out.println(event1);

			String query_str = "select caseid, activity, machine, time from bpi.manuf1";

			ResultSet rs = stmt.executeQuery(query_str);

			while (rs.next()) {

			}
			rs.close();

			String q = "Select distinct machine from manuf1"; // q �� ��Ƽ��Ƽ���� ���´�

			ResultSet rs2 = stmt.executeQuery(q);

			while (rs2.next()) {
				Act.add(rs2.getString("machine")); // ��� ����Ʈ�� ���� ��Ƽ��Ƽ���� �־��ش� Act(i)=rs2
			}

			//System.out.println(Act);
			////////////// ��̸���Ʈ�� �����Ѵ� activity ���� �׸��� �ҷ��ü� �ְ� �غ��� 

			String q2 = "Select TIMESTAMPDIFF(SECOND,MIN(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s')),MAX(STR_TO_DATE(time,'%d/%m/%Y %h:%i:%s'))) AS TotalactTime FROM manuf1 ";

			ResultSet rs4 = stmt.executeQuery(q2);
			int TotalActTime = 0;
			while (rs4.next()) {
				TotalActTime = rs4.getInt("TotalactTime"); // ������ �Ἥ �Ի� 
				//out.println("TotalActTime is "+TotalActTime);
			}

			int num = 0;
			//System.out.println(Act.size());
			//�غ�� ��̸���Ʈ�� ����ؼ� �־��ش� 
			for (int j = 0; j < check.length; j++) {
				/* -> ��̸���Ʈ�� ���̸�ŭ �ݺ���Ų�� �� ? �������� ���������� */
				String query_str1 = "SELECT  a.caseid ,a.machine, ";

				query_str1 += "STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') as 1stTime, ";

				query_str1 += "MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) as 2nd, ";

				query_str1 += "case ";

				query_str1 += "when MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s')) = null then STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

				query_str1 += "end as 2ndTime, ";

				query_str1 += "TIMESTAMPDIFF(SECOND,(STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s')),MIN(STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s'))) AS TimeDiff ";

				query_str1 += "FROM    manuf1 as a ";

				query_str1 += "LEFT JOIN manuf1 as b ";

				query_str1 += "ON a.caseid = b.caseid ";

				query_str1 += "AND STR_TO_DATE(b.time,'%d/%m/%Y %h:%i:%s') > STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

				query_str1 += "GROUP BY a.caseid, a.machine, STR_TO_DATE(a.time,'%d/%m/%Y %h:%i:%s') ";

				query_str1 += "having machine = '" + check[j] + "'"; //��� ����Ʈ �̸��� i �� �༭ ��� ���ư��� �Ѵ�
				//System.out.println(Act.get(j));
				ResultSet rs1 = stmt.executeQuery(query_str1);

				int ValueTime = 0;
				int TotalTime = 0;

				while (rs1.next()) {
					ValueTime = rs1.getInt("TimeDiff");
					//out.println(ValueTime);
					TotalTime = TotalTime + ValueTime;
				}
				rs1.close();

				int countNum = 0;
				String q5 = "Select time from manuf1 where machine = '"
						+ check[j] + "'";
				ResultSet rs5 = stmt.executeQuery(q5);
				while (rs5.next()) {
					countNum++;
				}
				//out.println(countNum+"/");
				//out.println(TotalTime+"/");
				int TotalTime2 = TotalTime / countNum;
				//out.println(TotalTime2+"/");
				//out.println(TotalActTime);
				int util = TotalTime2 * 100 / TotalActTime;

				// mean �̿� or median �̿�
				// mean ��ձ��ϴ°�  
				// median �߽ɰ� ���ϴ°� 

				Integer.toString(util);
				dataList.add(util);
				//first label

				if (num == 0) {
					dataUtil.append('[').append("'machine'").append(',')
							.append("'Value'").append(']');
					num++;
				}
				dataUtil.append(',').append('[').append("'")
						.append(check[num++ - 1]);
				num--;
				dataUtil.append("'").append(',')
						.append(dataList.get(num++ - 1)).append(']');
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

			for (int k = 0; k < Act.size(); k++) {
				//out.println(Act.get(k) + " 's Utilisation is = "						+ dataList.get(k) + "%" + "<BR>");
			}
			stmt.close();
			conn.close();

			// out.println("1");

		}//for loop �̱���

		catch (Exception e) {

			e.printStackTrace();

		}
		//out.println(dataUtil);
	%>

	<!--  -->

	<script type="text/javascript" src="https://www.google.com/jsapi"></script>

	<script type="text/javascript">
		google.load("visualization", "1", {
			packages : [ "gauge" ]
		});
		google.setOnLoadCallback(drawChart);

		var data1 = [
	<%=dataUtil%>
		];

		function drawChart() {

			var data = google.visualization.arrayToDataTable(data1);

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

			var chart = new google.visualization.Gauge(document
					.getElementById('chart_div'));

			chart.draw(data, options);

		}
	</script>

	<div id="chart_div" style="width: 800px; height: 250px;"></div>
</body>
</html>