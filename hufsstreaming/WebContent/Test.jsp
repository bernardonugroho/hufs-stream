<jsp:useBean id="factory" class="XPDL_Esper.FactoryLine" scope="session" />
<jsp:setProperty name="factory" property="*"/>


<html>
<body>

  
Hi! <%=factory.getProductID()  %><BR/>

</body>

</html>
