<?xml version="1.0" encoding="ISO-8859-1" ?>
<%--
JSP que utilitza una classe JavaBeans Personal. 
primer assigna les dades a un objecte de la classe mitjançant paràmetres
passats a la JSP i posteriorment les consulta
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

        <jsp:useBean id="persona1" class="exercicis.Persona"></jsp:useBean>
        <jsp:setProperty name="persona1" property="nom" param="nom1" />
        <jsp:setProperty name="persona1" property="numFills" param="numFills1" />
        <jsp:setProperty name="persona1" property="casat" param="casat1" />


        <jsp:useBean id="persona2" class="exercicis.Persona"></jsp:useBean>
        <jsp:setProperty name="persona2" property="*" />


        les dades associades a persona 1 són:
        <jsp:getProperty name="persona1" property="nom" />
        <jsp:getProperty name="persona1" property="numFills" />
        <jsp:getProperty name="persona1" property="casat" />

        <br />

        les dades associades a persona 2 són:
        <jsp:getProperty name="persona2" property="nom" />
        <jsp:getProperty name="persona2" property="numFills" />
        <jsp:getProperty name="persona2" property="casat" />

    </body>
</html>