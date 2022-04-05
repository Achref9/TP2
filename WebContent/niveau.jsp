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
<%
if(request.getParameter("programmation").equals("absente")) {
    x2 = x2 + 1;
}
else if(request.getParameter("programmation").equals("moyenne")) {
	x2 = x2 + 2;
}
else if(request.getParameter("programmation").equals("bonne")) {
	x2 = x2 + 3;
} %>


<% S = x1 + x2; %>


<%-- affichage --%>

<%
if (S<3) {
	out.println("<h1>" +name + "Vous êtes un débutant</h1>");
}
else if (( S>2 ) && ( S<5 )) {
	out.println("<h1>" +name + "Vous avez un niveau moyen</h1>");
}
else {
	out.println("<h1>" +name + "Vous êtes un expert !</h1>");
}

%>


</body>
</html>