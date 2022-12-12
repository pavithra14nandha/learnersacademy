
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.pojo.SchoolClass"%>
    <%@ page import="com.academy.dao.SchoolClassDao" %>
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
SchoolClassDao dao= new SchoolClassDao();
sclass.setClass_ID(Integer.parseInt(request.getParameter("cid")));
sclass.setClass_Name(request.getParameter("cname"));
int row=dao.insert(sclass);
if(row>0)
{
	
	response.sendRedirect("class.jsp");
}
else
{
	pw.print("failed");
}
%>
</body>
</html>