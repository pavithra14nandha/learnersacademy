
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.pojo.*" %>
    <%@ page import="com.academy.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
PrintWriter outsubj=response.getWriter();
Subject sub= new Subject();
SubjectDao subdao= new SubjectDao();
sub.setSub_ID(Integer.parseInt(request.getParameter("subid")));
sub.setSubject_Name(request.getParameter("subname"));

int row=subdao.insert(sub);
if(row>0)
{
	outsubj.print(sub.toString());
}

%>
</body>
</html>