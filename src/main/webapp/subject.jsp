<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.pojo.*"%>
    <%@ page import="com.academy.dao.* "%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: OldLace ;">
<br>

<table style="background-color:RosyBrown ;" ><tr><td>
<a href="class.jsp">class</a>&nbsp;&nbsp;&nbsp;
<a href="student.jsp">Student</a>&nbsp;&nbsp;&nbsp;
<a href="subject.jsp">subject</a>&nbsp;&nbsp;&nbsp;
<a href="teacher.jsp">teacher</a>&nbsp;&nbsp;&nbsp;
<a href="./LogoutServlet">Logout</a>&nbsp;&nbsp;&nbsp;
</td></tr></table><br><hr>

<form action="addsubject.jsp">
<h3 style="color:Peru">Add New Subject</h3>

<input type="submit" value="add subject" style="background-color:Moccasin";>
</form>
<div style="background-color:OldLace;">
<h1 style="Color:PaleVioletRed ;text-align:center"><i><u>List of Subjects</u></i></h1>
<table border="2" style="margin-left:auto;margin-right:auto;">

<tr style="Color:PaleVioletRed"><th>Subject ID</th><th>Subject name</th><th>Actions</th></tr>
<%

SubjectDao subdao = new SubjectDao();
List<Subject> sublist=subdao.display();
for(Subject subj:sublist){
%>


<tr><td><%=subj.getSub_ID() %></td><td><%=subj.getSubject_Name()%></td><td>
<a href="updatesubject.jsp?subid=<%=subj.getSub_ID()%>">update</a>&nbsp;&nbsp;&nbsp;
<a href="deletesubject.jsp?subid=<%=subj.getSub_ID()%>">delete</a></td></tr>

<%} %>

</table>
<br>
</div>
</body>
</html>