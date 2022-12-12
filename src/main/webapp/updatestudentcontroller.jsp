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
RequestDispatcher rd= null;
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


SchoolClass c= new SchoolClass();
c.setClass_ID(Integer.parseInt(a[0]));
c.setClass_Name(a[1]);
s.setSclass(c);
String row=sdao.update(s);
if(row.equals("updated"))
{
	rd=request.getRequestDispatcher("home.jsp");
}
%>
</body>
</html>