<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.academy.dao.*" %>
    <%@ page import="com.pojo.*" %>
    <%@ page import="java.util.*" %>
    <%@page import="java.io.PrintWriter"%>
    <%@ page import="com.exception.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
RequestDispatcher rd=null;
Student s= new Student();
StudentDao sdao= new StudentDao();
s.setID(Integer.parseInt(request.getParameter("stuid")));
String row=sdao.delete(s);
if(row.equals("deleted"))
{
	rd=request.getRequestDispatcher("student.jsp");
}
else
{
	rd=request.getRequestDispatcher("home.jsp");
	throw new BusinessException("error while deleting");
}

%>
</body>
</html>