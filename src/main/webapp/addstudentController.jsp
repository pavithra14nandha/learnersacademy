
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.pojo.*"%>
    <%@ page import="com.academy.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
PrintWriter p1=response.getWriter();
Student s= new Student();
StudentDao sdao= new StudentDao();
s.setID(Integer.parseInt(request.getParameter("stuid")));
s.setF_name(request.getParameter("stufname"));
s.setL_name(request.getParameter("stulname"));
s.setDOB(request.getParameter("studob"));
s.setAddress(request.getParameter("stuadd"));
s.setPhone(Long.parseLong(request.getParameter("stuphone")));
String ss=request.getParameter("classname");
String [] a=ss.split(",");
SchoolClass sclass= new SchoolClass();
sclass.setClass_ID(Integer.parseInt(a[0]));
sclass.setClass_Name(a[1]);
s.setSclass(sclass);

int row=sdao.insert(s);
if(row>0)
{
	p1.print(s.toString());
}

%>
</body>
</html>