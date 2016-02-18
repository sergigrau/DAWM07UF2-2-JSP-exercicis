<?xml version="1.0" encoding="ISO-8859-1" ?>
<!-- 
	Exercici 2, versió xml per a contenidors de JSP >= 1.2
        autor: Sergi Grau
        versio: 1.0 10/01/2012
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
	<title>Exercici2</title>
	</head>
	<jsp:declaration>String colorFons = "";</jsp:declaration>

	<jsp:scriptlet>String colorFons = request.getParameter("colorFons");
			if ((colorFons == null) || (colorFons.trim().equals(""))) {
				colorFons = "red";
			}</jsp:scriptlet>

	<body>

	<jsp:text>
		<![CDATA[<body bgcolor=']]>
	</jsp:text>
	<jsp:expression>colorFons</jsp:expression>
	<jsp:text>
		<![CDATA['>]]>
	</jsp:text>

	</body>
	</html>
</jsp:root>