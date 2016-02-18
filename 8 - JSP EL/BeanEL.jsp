<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : BeanEL
    Created on : 25/01/2014, 09:18:12
    Author     : sergi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:useBean id="persona1" class="daw2.Persona" scope="session"/>
        <c:set target="${persona1}" property="nom" value="${param.nom}" />
        <h1>${persona1.nom}</h1>
        
        <a href="BeanEL2.jsp">BeanEL2</a>
    </body>
</html>
