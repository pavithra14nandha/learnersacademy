<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.pojo.*" %>
    <%@ page import="com.academy.dao.*" %>
    <%@ page import="java.util.*" %>
    <%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
PrintWriter pw=response.getWriter();
SchoolClass sclass= new SchoolClass();
SchoolClassDao dao=new SchoolClassDao();

sclass.setClass_Name(request.getParameter("cname"));
sclass.setClass_ID(Integer.parseInt(request.getParameter("cid")));
String row=dao.update(sclass);
if(row!=null)
{
	pw.print("updated succesfull");
}
else
{
	pw.print("not updated");
}
%>
</body>
</html>