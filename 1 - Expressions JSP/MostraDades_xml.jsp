<?xml version="1.0" encoding="ISO-8859-1" ?>
<!--
		Exercici 1 en versió xml. Disponible per a contenidor >= JSP 1.2
                autor: Sergi Grau
                versió: 1.0 10/01/2012
	 -->
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0">

	<jsp:directive.page language="java"
		contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" />
	<jsp:text>
		<![CDATA[ <?xml version="1.0" encoding="ISO-8859-1" ?> ]]>
	</jsp:text>
	<jsp:text>
		<![CDATA[ <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> ]]>
	</jsp:text>

	<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Exercici 1</title>
	</head>
	<body>
	Informació sobre la petició HTTP
	<br />
	<jsp:expression>request.getParameter("param")</jsp:expression>
	<br />
	<jsp:expression>request.getMethod()</jsp:expression>
	<br />
	<jsp:expression>new java.util.Date()</jsp:expression>
	<br />
	<jsp:expression>application.getServerInfo()</jsp:expression>
	<br />
	<jsp:expression>session.getId()</jsp:expression>
	<br />

	</body>
	</html>
</jsp:root>