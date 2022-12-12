<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.PrintWriter"%>
    <%@ page import="com.exception.*" %>
    <%@ page import="com.pojo.*" %>
    <%@ page import="com.academy.dao.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
PrintWriter pw1=response.getWriter();
Teacher t= new Teacher();
TeacherDao daot=new TeacherDao();
t.setT_ID(Integer.parseInt(request.getParameter("tid")));


String row=daot.delete(t);
if(row.equals("deleted"))
{
	pw1.print("deleted successfully");
}
else
{
	throw new BusinessException("error while deleting");
}%>

</body>
</html>