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
<body style="background-color: OldLace ;">
<br>
<table style="background-color:RosyBrown;"><tr><td>
<a href="class.jsp">class</a>&nbsp;&nbsp;&nbsp;
<a href="student.jsp">Student</a>&nbsp;&nbsp;&nbsp;
<a href="subject.jsp">subject</a>&nbsp;&nbsp;&nbsp;
<a href="teacher.jsp">teacher</a>&nbsp;&nbsp;&nbsp;
<a href="./LogoutServlet">Logout</a>&nbsp;&nbsp;&nbsp;
</td></tr></table><br><hr>

<h2>Add Student</h2>
<form action="addstudent.jsp">
<input type="submit" value="add student" style="background-color:Moccasin">
</form>
<div style="background-color:OldLace;">
<h1 style="text-align:center;color:PaleVioletRed;"><i><u>list of Students</u></i></h1>
<table border="1" style="margin-left:auto;margin-right:auto;">
<tr style="color:Peru"><th>Admission no</th><th>First name</th><th>Last name</th><th>Date Of Birth</th><th>Address</th>
<th>phone</th><th>class name</th>
<th> Actions</th></tr>
<%

StudentDao sdao= new StudentDao();
List<Student>list=sdao.display();
for(Student s:list){
%>
<tr><td><%=s.getID() %></td>
<td><%=s.getF_name()%></td>
<td><%=s.getL_name()%></td>
<td><%=s.getDOB()%></td>
<td><%=s.getAddress()%></td>
<td><%=s.getPhone()%></td>
<td><%=s.getSclass().getClass_Name()%></td>
<td><a href="updatestudent.jsp?stuid=<%=s.getID()%>">Update</a>&nbsp;
<a href="deleteStudent.jsp?stuid=<%=s.getID()%>">Delete</a></td></tr>
<% } %>
</table>
<br>
</div>
</body>
</html>