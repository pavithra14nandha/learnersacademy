<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="com.pojo.*" %>
    <%@ page import="com.academy.dao.*" %>
    <%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body style="background-color:papayawhip;">
<table style="background-color:pink ;" ><tr><td>
<a href="class.jsp">class</a>&nbsp;&nbsp;&nbsp;
<a href="student.jsp">Student</a>&nbsp;&nbsp;&nbsp;
<a href="subject.jsp">subject</a>&nbsp;&nbsp;&nbsp;
<a href="teacher.jsp">teacher</a>&nbsp;&nbsp;&nbsp;
<a href="./LogoutServlet">Logout</a>&nbsp;&nbsp;&nbsp;
</td></tr></table><hr>
<h2 style="color:magenta;">Add class</h2>
<form action="addclass.jsp">
<input type="submit"  value="add class" style="color:maroon;align-content:center;align-self:center;">
</form>
<h2 style="color:magenta;text-align:center;">List of classes</h2>
<table border="2px" width="500px" height="150px" style="background-color:#cccccc;margin-left:auto;margin-right:auto;">
<tr><th>class no</th><th>class name</th><th>Actions</th></tr>
<%

SchoolClassDao dao=new SchoolClassDao();
List<SchoolClass> listclas=dao.display();
for(SchoolClass sc:listclas)
{%>
<tr><td><%=sc.getClass_ID()%></td><td><%=sc.getClass_Name()%></td>
<td><a href="updateClass.jsp?cid=<%=sc.getClass_ID()%>">Update</a>
    <a href="deleteclass.jsp?cid=<%=sc.getClass_ID()%>"> Delete</a>
    <a href="teachersubject.jsp?cid=<%=sc.getClass_ID()%>"> teachersandsubject</a>
    <a href="ClassReport.jsp?cid=<%=sc.getClass_ID()%>"> classReport</a></td>
</tr>
<% } %>
</table>
</body>
</html>