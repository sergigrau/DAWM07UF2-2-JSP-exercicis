<?xml version="1.0" encoding="ISO-8859-1" ?>
<!-- 
	JSP que mostra la utilitzaci� dels m�todes jspinit i jspdestroy.
	Genera un nombre aleatori per a totes les peticions que es reben.
	Ara b�, com els servets s�n Singletons no seria necessari, nom�s caldria utilitzar
	un atribut d'inst�ncia que en el cas dels servlets tamb� �s de classe
        autor: Sergi Grau
        versi�: 1.0 10/01/2012
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