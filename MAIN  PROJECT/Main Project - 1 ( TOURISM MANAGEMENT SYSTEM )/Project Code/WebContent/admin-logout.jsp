<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<link href="style1.css" rel="stylesheet" type="text/css" media="screen" />	
	
<%
	session.invalidate();
	response.sendRedirect("index.jsp");
%>