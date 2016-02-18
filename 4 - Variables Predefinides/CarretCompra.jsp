<?xml version="1.0" encoding="ISO-8859-1" ?>
<%--
 Versi� JSP del exercici de carret de compra de Servlets.
 Implementa un carret de compra molt senzill. Desa aquesta
 nformaci� en un ArrayList.
 Com les sessions es desen en el costat servidor, (el client nom�s utilitza les
 sessions per a guardar un id.
 autor: Sergi Grau
 versi�: 1.0 10/01/2012
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,exercicis.Producte"%>
<%@ page errorPage="CarretCompra_error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title></title>
    </head>
    <body>

        <%
            if (request.getParameter("logout") != null) {
                session.invalidate();
            }

            ArrayList<Producte> productes = (ArrayList<Producte>) session.getAttribute("productes");
            if (productes == null) {
                productes = new ArrayList<Producte>();
                session.setAttribute("productes", productes);
            }
            String producte = request.getParameter("producte");
            int unitats = Integer.parseInt(request.getParameter("unitats"));
            if (unitats <= 0) {
                throw new NumberFormatException();
            }

            out.println("productes comprats");
            synchronized (productes) {
                if (producte != null) {
                    productes.add(new Producte(producte, unitats));
                }
                if (productes.size() == 0) {
                    out.println("<i>cap producte</i>");
                } else {
                    out.println("<ul>");
                    for (int i = 0; i < productes.size(); i++) {
                        out.println("<li>" + (Producte) productes.get(i) + "</li>");
                    }
                    out.println("</ul>");
                }
            }

        %>

    </body>
</html>