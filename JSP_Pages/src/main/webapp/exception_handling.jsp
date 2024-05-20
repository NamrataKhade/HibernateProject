<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page errorPage="exception_implicit_object.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exception Handling using exception implicit object</title>
</head>
<body>
<!-- <form action="exception_handling.jsp">
       <input type="text" name="num1" />
       <input type="text" name="num2" />
       <input type="submit" value="submit" name="sub" />
       
</form>-->

<%  
  
String num1=request.getParameter("n1");  
String num2=request.getParameter("n2");  
  
int a=Integer.parseInt(num1);  
int b=Integer.parseInt(num2);  
int c=a/b;  
out.print("division of numbers is: "+c);  
  
%>  
<%-- 
<%
    if(request.getParameter("sub")!=null){
    	int i=0,j=0;
    	i=Integer.parseInt(request.getParameter("num1"));
    	j=Integer.parseInt(request.getParameter("num2"));
    	
    	out.println("Divded value : "+(i/j));
    	
    }
%>--%>
</body>
</html>