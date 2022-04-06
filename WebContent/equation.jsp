<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% double DELTA; %>
<% double a = Double.parseDouble(request.getParameter("a")); %>
<% double b = Double.parseDouble(request.getParameter("b")); %>
<% double c = Double.parseDouble(request.getParameter("c")); %>
<% double x1=0; %>
<% double x2=0; %>

<% DELTA = b*b-4.0*a*c; %>
<%
if(DELTA<0)
{
    
    out.println("<H1 style='background-color:red'>Aucun résultat</H1>");
}
else if (DELTA==0) {
	
	
	out.println("Value of DELTA: " + -b/2*a + "<br/>");
	
}
	else {
		 x1 = (-b+Math.sqrt(DELTA))/2.0/a;
  	 	 x2 = (-b-Math.sqrt(DELTA))/2.0/a;
  	 	 
   		 out.println("<H1 style='background-color:green'>valeur de DELTA: " + DELTA+"</H1><br/>" );
   		out.println("<H1>Les solutions</H1><br/>" );
   	     out.println("<H1 style='background-color:green'>valeur de x1 = " + x1 +"</H1><br/>");
  	 	 out.println("<H1 style='background-color:green'>valeur de x2 = " + x2 +"</H1><br/>");
   	
	
}
	
%>

</body>
</html>