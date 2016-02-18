<?xml version="1.0" encoding="UTF-8" ?>
<%--
	Exercici 1. 
	Jsp que mostra les dades corresponents a una petició HTTP. Camps de la capçalera,
	paràmetres passats, etc. Utilitzem expressions JSP per a mostrar aquestes dades
        autor: Sergi Grau
        versio: 1.0 10/01/2012
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Exercici 1</title>
</head>
<body>
Informació sobre la petició HTTP
<br />
<%=request.getParameter("param")%>
<br />
<%=request.getMethod()%>
<br />
<%=new java.util.Date()%>
<br />
<%=application.getServerInfo()%>
<br />
<%=session.getId()%>
<br />

</body>
</html>
