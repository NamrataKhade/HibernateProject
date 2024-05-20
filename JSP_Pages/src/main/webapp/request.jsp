<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request Object</title>
</head>
<body>
<%
int num=Integer.parseInt(request.getParameter("num"));
if(num%2==0){
	out.println("Your Number :"+num+ " is even");
	response.sendRedirect("for_even.jsp");
	session.setAttribute("even", "Your Number :"+num+ " is even");
}
else
{	
	response.sendRedirect("for_odd.jsp");
	session.setAttribute("odd", "Your Number :"+num+ " is odd");
}
%>

<%-- <%="Your Number :"+num+" is odd" --%> 

</body>
</html>