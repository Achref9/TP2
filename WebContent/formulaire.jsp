<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% if(request.getParameter("nom")==null && request.getParameter("email")==null){%>

Vous avez fourni les informations suivantes:
<%} else { %>
<%! String nom, email; %>
<% nom = request.getParameter("nom"); %>
<% email = request.getParameter("email");

%>
<p>
<b>nom</b>: <%= nom %>
<p>
<b>email</b>: <%= email %>
<%} %>
</body>
</html>