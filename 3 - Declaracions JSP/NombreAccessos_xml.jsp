<?xml version="1.0" encoding="ISO-8859-1" ?>
<!-- 
	Exercici 3, versi� xml per a contenidors de JSP >= 1.2
        autor: Sergi Grau
        versi�: 1.0 10/01/2012
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
	<title></title>
	</head>
	<body>
	<jsp:declaration>
		private int accessos=0;
		private double nombre;

		public void jspInit() {
			nombre = Math.random();
		}
	</jsp:declaration>
	valor assignat al carregar servlet
	<jsp:expression> nombre</jsp:expression>
	<br />
	accessos
	<jsp:expression> ++accessos</jsp:expression>
	<br />
	</body>
	</html>
</jsp:root>