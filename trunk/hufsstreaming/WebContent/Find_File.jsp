<html>
    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<style>
	#appLoadingIndicator {
		display: table;
		width: 100%;
		height: 100%
	}
	
	#cell {
		display: table-cell;
		text-align: center;
		vertical-align: middle;
	}
</style>
</head>
<body>

		<div id="cell">

		
			<div style="text-algin:center"><h3>File Upload</h3></div>
			Select a file to upload:
			<form action="index.jsp" method="post">
				<input type="file" name="file" size="50" /> <br />  <br />
				<input type="submit" value="Upload File" />
			</form>
		
		</div>

</body>
</html>