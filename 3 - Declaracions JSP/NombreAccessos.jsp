<?xml version="1.0" encoding="ISO-8859-1" ?>
<!-- 
	JSP que mostra la utilització dels mètodes jspinit i jspdestroy.
	Genera un nombre aleatori per a totes les peticions que es reben.
	Ara bé, com els servets són Singletons no seria necessari, només caldria utilitzar
	un atribut d'instància que en el cas dels servlets també és de classe
        autor: Sergi Grau
        versió: 1.0 10/01/2012
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title></title>
</head>
<body>
<%!
	private int accessos=0;
	private double nombre;

	public void jspInit() {
		nombre = Math.random();
	}%>
valor assignat al carregar servlet<%=nombre%> <br />
contador <%=++accessos %>

</body>
</html>