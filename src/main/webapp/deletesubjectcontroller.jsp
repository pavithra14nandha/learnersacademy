<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.exception.BusinessException"%>
<%@page import="java.io.PrintWriter"%>
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


String row=subdao.delete(sub);
if(row.equals("deleted"))
{
	outsubj.print("subject deleted successfully");
}
else
{
	throw new BusinessException("exception");
}
%>

</body>
</html>