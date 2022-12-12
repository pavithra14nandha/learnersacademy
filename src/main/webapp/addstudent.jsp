<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.academy.dao.*" %>
    <%@ page import="com.pojo.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: OldLace;">
<br>
<table style="background-color:RosyBrown ;" ><tr><td>
<a href="class.jsp">class</a>&nbsp;&nbsp;&nbsp;
<a href="student.jsp">Student</a>&nbsp;&nbsp;&nbsp;
<a href="subject.jsp">subject</a>&nbsp;&nbsp;&nbsp;
<a href="teacher.jsp">teacher</a>&nbsp;&nbsp;&nbsp;
<a href="./LogoutServlet">Logout</a>&nbsp;&nbsp;&nbsp;
</td></tr></table><br><hr>

<form action="addstudentController.jsp">
<div style="text-align:center">
<h2 style="color:Olive">Add New Student</h2>
<table border="1px" style="margin-left:auto;margin-right:auto";>
<tr><td>Admission no : </td><td><input type="text" name="stuid"></td></tr>
<tr><td>First_Name: </td><td><input type="text" name="stufname"></td></tr>
<tr><td>Last_Name: </td><td><input type="text" name="stulname"></td></tr>
<tr><td>Date of Birth: </td><td><input type="date" name="studob"></td></tr>
<tr><td>Address      : </td><td><input type="text" name="stuadd"></td></tr>
<tr><td>phone  :</td><td><input type="text" name="stuphone"></td></tr>
<tr><td>Student class:
<%
SchoolClassDao sdao= new SchoolClassDao();
List<SchoolClass> sc=sdao.display();

%>
<select name="classname">
<%
for(SchoolClass scc:sc){
%>
<option value="<%=scc.getClass_ID()+","+scc.getClass_Name()%>">
<%=scc.getClass_Name()%>
</option>
<% } %>
</select></td></tr>
<tr><td colspan="2" style="text-align:center ";><input type="submit" value="add student" style="background-color:PapayaWhip"></td></tr>
</table>
</div>
</form>
</body>
</html>