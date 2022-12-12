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
t.setT_FirstName(request.getParameter("tfname"));
t.setT_LastName(request.getParameter("tlname"));
t.setT_DOB(request.getParameter("tdob"));
t.setT_Address(request.getParameter("tadd"));
t.setT_Phone(Long.parseLong(request.getParameter("tphone")));
t.setDesignation(request.getParameter("tdesig"));
String row=daot.update(t);
if(row.equals("updated"))
{
	pw1.print("updated");
}
else
{
	throw new BusinessException("error in updating");
}
%>
</body>
</html>