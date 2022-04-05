<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%--Declaration des variables --%>

<% int x1=0; 
 int x2=0;
 int S=0; %>
<% String name = request.getParameter("nom"); %>

<%-- Recuperation des données a partir du radio 1 --%>
<%
if(request.getParameter("html").equals("faibles")) {
    x1 = x1 + 1;
}
else if(request.getParameter("html").equals("moyennes")) {
	x1 = x1 + 2;
}
else if(request.getParameter("html").equals("bonnes")) {
	x1 = x1 + 3;
} %>
<%-- Recuperation des données a partir du radio 2 --%>
<%-- Recuperation des données a partir du radio 1 --%>
<%
if(request.getParameter("programmation").equals("absente")) {
    x1 = x1 + 1;
}
else if(request.getParameter("programmation").equals("moyenne")) {
	x1 = x1 + 2;
}
else if(request.getParameter("programmation").equals("bonne")) {
	x1 = x1 + 3;
} %>
</body>
</html>