<%--
	Exercici que utilitza la inclusi� d'un fitxer com a directiva (incorpora el codi, 
	i no el resultat d'exercutar-ho)
        autor: Sergi Grau
        versi�: 1.0 10/01/2012
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<div>
<%!
private int comptador = 0;
private Date dataAcces = new Date();
private String host = "primer acc�s";
%>
<i>
Aquesta p�gina s'ha accedit
<%= ++comptador %>
vegades. El darrer acc�s s'ha fet des de
<%= host %>
amb data
<%= dataAcces %>.
<% host = request.getRemoteHost(); %>
<% dataAcces = new Date(); %>
<br/>darrera modificaci� 
<%= new Date(modTime) %>
</i>
</div>
