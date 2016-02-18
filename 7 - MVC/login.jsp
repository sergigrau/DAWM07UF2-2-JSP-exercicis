<%-- 
    Document   : login
    Created on : 15/01/2012, 17:38:04
    Author     : sergi grau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form action="ProcessamentLogin" method="post">
        <%
          ReCaptcha c = ReCaptchaFactory.newReCaptcha("6Ld7WcwSAAAAANm0MafDoM3DGPIEJ-IWYd3BTfy4", "6Ld7WcwSAAAAAAzSqitbX8YYBIfw033nz7pJ-YoQ", false);
          out.print(c.createRecaptchaHtml(null, null));
        %>
        <input type="submit" value="submit" />
        </form>
    </body>
</html>
