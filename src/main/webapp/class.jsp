<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.pojo.*" %>
    <%@ page import="com.academy.dao.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>class page</title>
</head>
<body style="background-color: OldLace ;">
<br>
<div border="2px"><a href="class.jsp">class</a>&nbsp;&nbsp;&nbsp;
<a href="student.jsp">Student</a>&nbsp;&nbsp;&nbsp;
<a href="subject.jsp">subject</a>&nbsp;&nbsp;&nbsp;
<a href="teacher.jsp">teacher</a>&nbsp;&nbsp;&nbsp;
<a href="./LogoutServlet">Logout</a>&nbsp;&nbsp;&nbsp;
</div>
<br><hr>
<h2 style="color:gray ;">add class</h2>
<form action="addclass.jsp">
<input type="submit" value="add class" style="background-color: Moccasin;">
</form>
<div style="background-color: papayawhip ;">
<h1 style="color:OliveDrab;text-align:center;"><i><u>List of classes</u></i></h1>
<table border="2px"  style="margin-left: auto;margin-right: auto;background-color:lightgrey; ">
<tr><th>class Id</th><th>class name</th><th>Actions</th></tr>
<%
SchoolClassDao dao=new SchoolClassDao();
List<SchoolClass> listclas=dao.display();
for(SchoolClass sc:listclas)
{%>
<tr><td><%=sc.getClass_ID()%></td><td><%=sc.getClass_Name()%></td><td>&nbsp;&nbsp;
<a href="updateclass.jsp?cid=<%=sc.getClass_ID()%>">Update</a>&nbsp;&nbsp;
<a href="deleteclass.jsp?cid=<%=sc.getClass_ID()%>">Delete</a>&nbsp;&nbsp;
<a href="teachersubject.jsp?cid=<%=sc.getClass_ID()%>">teachersandsubject</a>&nbsp;&nbsp;
<a href="ClassReport.jsp?cid=<%=sc.getClass_ID()%>">classReport</a></td>&nbsp;&nbsp;
</tr>
<% } %>
</table>
<br>
</div>
</body>
</html>




