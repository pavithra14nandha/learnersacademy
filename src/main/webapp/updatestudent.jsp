<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.academy.dao.*" %>
    <%@ page import="com.pojo.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student form update</title>
</head>
<body>
<table style="background-color:pink ;" ><tr><td>
<a href="class.jsp">class</a>&nbsp;&nbsp;&nbsp;
<a href="student.jsp">Student</a>&nbsp;&nbsp;&nbsp;
<a href="subject.jsp">subject</a>&nbsp;&nbsp;&nbsp;
<a href="teacher.jsp">teacher</a>&nbsp;&nbsp;&nbsp;
<a href="./LogoutServlet">Logout</a>&nbsp;&nbsp;&nbsp;
</td></tr></table><hr>

<h2>update the student form</h2>
<form action="updatestudentcontroller.jsp">
<table border='1'>

<tr><td>Edit First_Name:</td><td><input type="text" name="stufname"></td></tr>
<tr><td>Edit Last_Name:</td><td><input type="text" name="stulname"></td></tr>
<tr><td>Edit Date Of Birth:</td><td><input type="text" name="studob"></td></tr>
<tr><td>Edit Address:</td><td><input type="text" name="stuadd"></td></tr>
<tr><td>Edit Phone:</td><td><input type="number" name="stuphone"></td></tr>

<tr><td>Student Class:
<%
SchoolClassDao scdao= new SchoolClassDao();
List<SchoolClass> li=scdao.display();
%>
<select name="classname">

<%
for(SchoolClass c:li){
	%>
	<option value="<%=c.getClass_ID() +","+c.getClass_Name() %>"><%=c.getClass_Name() %></option>
	<% } %>
</select></td></tr>
<tr><td><input type="hidden" name="stuid" value=<%=request.getParameter("stuid")%>></td></tr>

<tr><td><input type="submit" value="update"></td></tr>
</table>
</form>
</body>
</html>