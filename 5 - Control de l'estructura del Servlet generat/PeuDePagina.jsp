<?xml version="1.0" encoding="ISO-8859-1" ?>
<%--
	Exercici que utilitza la inclusió d'un fitxer com a directiva (incorpora el codi, 
	i no el resultat d'exercutar-ho)
        autor: Sergi Grau
        versió: 1.0 10/01/2012
--%>

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
    private long modTime;
    
    public void jspInit(){
         modTime = System.currentTimeMillis()/1000*1000;
    }
    public long getLastModified(HttpServletRequest request) {
    return(modTime);
  }
    %>
	Exercici que utilitza la inclusió d'un fitxer com a directiva (incorpora el codi, 
	i no el resultat d'exercutar-ho)
<%@ include file="PeuDePagina_1.jsp" %>
<%-- <jsp:directive.include file="Exercici5_1.jsp" />  que es diferent que <jsp:include>--%>
</body>
</html>