<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Setting data through pageContext implicit object in session</h1>
<% 
pageContext.setAttribute("var1", "Namrata khade",pageContext.SESSION_SCOPE);
pageContext.setAttribute("var2","Namrata khade",pageContext.APPLICATION_SCOPE);
pageContext.setAttribute("var3","Namrata khade",pageContext.REQUEST_SCOPE);
%>
</body>
</html>