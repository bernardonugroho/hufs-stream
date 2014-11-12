<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String ID = request.getParameter("ID");
	String PW = request.getParameter("password");
	
	if(ID.equals("admin") && PW.equals("hufsime")){
		%>
		<jsp:forward page="MainPage.jsp" />
		<%
	}
	
	else{
		%>
		<jsp:forward page="index.jsp" />
		<%
	}
	
%>