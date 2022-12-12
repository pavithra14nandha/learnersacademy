<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.pojo.*" %>
    <%@ page import="com.academy.dao.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: OldLace ;">
<table style="background-color:pink ;" ><tr><td>
<a href="class.jsp">class</a>&nbsp;&nbsp;&nbsp;
<a href="student.jsp">Student</a>&nbsp;&nbsp;&nbsp;
<a href="subject.jsp">subject</a>&nbsp;&nbsp;&nbsp;
<a href="teacher.jsp">teacher</a>&nbsp;&nbsp;&nbsp;
<a href="./LogoutServlet">Logout</a>&nbsp;&nbsp;&nbsp;
</td></tr></table><hr>

<form action="addteacher.jsp">
<h2 style="color:OliveDrab;">Add New Teacher</h2>
<input type="submit" value="add teacher">
</form>
<h2 style="color:OliveDrab;text-align:center;">List of Teachers</h2>
<table border="3" style="margin-left:auto;margin-right:auto;background-color:lightgrey;">
<tr><th>TeacherID</th><th>first name</th><th>Last name</th><th>Date Of Birth</th><th>Address</th><th>Phone</th>
<th>Designation</th><th>actions</th></tr>
<%
Teacher t= new Teacher();
TeacherDao daot= new TeacherDao();
List<Teacher> listT=daot.displatTeacher();
for(Teacher teacher:listT)
{
%>
<tr><td><%=teacher.getT_ID()%></td>
<td><%=teacher.getT_FirstName()%></td>

<td><%=teacher.getT_LastName()%></td>

<td><%=teacher.getT_DOB()%></td>
<td><%=teacher.getT_Address()%></td>
<td><%=teacher.getT_Phone()%></td>
<td><%=teacher.getDesignation()%></td><td>
<a href="updateTeacher.jsp?tid=<%=teacher.getT_ID()%>">Update</a>
&nbsp;&nbsp;<a href="deleteTeacher.jsp?tid=<%=teacher.getT_ID()%>">Delete</td></a>
<% } %>
</table>
</body>
</html>