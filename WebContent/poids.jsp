<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% double taille = Double.parseDouble(request.getParameter("taille")); %>


<%
if (request.getParameter("sexe").equals("H")) {
	out.println("<h1 style='color:blue'>Votre Poid id?al = " + ((62.1 * taille) - 44.7)+"</h1>");
	}
else {
	out.println("<h1 style='color:pink'>Votre Poid id?al = " + ((72.7 * taille) - 58) + "</h1>");
}%>
</body>
</html>