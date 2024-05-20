<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Session scope:<%=pageContext.getAttribute("var1", pageContext.SESSION_SCOPE) %></h2>
<h2>Application scope:<%=pageContext.getAttribute("var2", pageContext.APPLICATION_SCOPE) %></h2>
<h2>Request scope:<%=pageContext.getAttribute("var3", pageContext.REQUEST_SCOPE) %></h2>
</body>
</html>