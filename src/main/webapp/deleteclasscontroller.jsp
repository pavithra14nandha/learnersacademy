<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.pojo.*" %>
    <%@ page import="com.academy.dao.*" %>
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
SchoolClass sclass= new SchoolClass();
SchoolClassDao dao=new SchoolClassDao();
sclass.setClass_ID(Integer.parseInt(request.getParameter("cid")));
PrintWriter pw=response.getWriter();
String row=dao.delete(sclass);

if(row.equals("deleted")){
	pw.print("deletion succesfull");
}
else{
	response.sendRedirect("home.jsp");
}

%>

</body>
</html>