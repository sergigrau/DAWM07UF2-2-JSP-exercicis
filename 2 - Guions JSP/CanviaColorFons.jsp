<?xml version="1.0" encoding="ISO-8859-1" ?>
<!-- 
	JSP que mostra la utilització de scriptlets. En funció del paràmetre mostra
	in color de fons de la pàgina o un altre.
        autor: Sergi Grau
        versio: 1.0 10/01/2012
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Exercici2</title>
</head>
<%
	String colorFons = request.getParameter("colorFons");
	if ((colorFons == null) || (colorFons.trim().equals(""))) {
		colorFons = "white";
	}
%>
<body bgcolor="<%=colorFons %>">

El color de fons és <%=colorFons %>
</body> 
</html>