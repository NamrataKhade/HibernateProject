<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><%=session.getAttribute("nm") %></h1>
<h1><%=session.getAttribute("em") %></h1>
<h1><%=session.getId() %></h1>
<%--<%
session.invalidate();
%>--%>

<%--<%
session.setMaxInactiveInterval(10);
%>--%>

<%
session.removeAttribute("em");
%>
</body>
</html>