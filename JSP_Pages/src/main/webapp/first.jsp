<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>First JSP Page</title>
</head>
<body style="background:#e2e2e2;">
<h1>First JSP Page</h1>
<%!
int a=20;
int b=30;
String name="Welcome";

public int getSum(){
	return a+b;
}

public String reverse(){
	StringBuffer br=new StringBuffer(name);
	return br.reverse().toString();
}

%>

<%
out.println(a);
out.println("<br>");
out.println(b);
out.println("<br>");
out.println("Sum is "+getSum());
out.println("<br>");
out.println("Reverse String is : "+reverse());

%>

<h1 style="color:red">Sum is :<%= getSum() %></h1>
Value of a:<%= a %><br>
String :<%= name %>
</body>
</html>