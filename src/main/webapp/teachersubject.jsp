<%@page import="org.hibernate.internal.build.AllowSysOut"%>
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
<body style="background-color:OldLace ;">
<table style="background-color:pink ;" ><tr><td>
<a href="class.jsp">class</a>&nbsp;&nbsp;&nbsp;
<a href="student.jsp">Student</a>&nbsp;&nbsp;&nbsp;
<a href="subject.jsp">subject</a>&nbsp;&nbsp;&nbsp;
<a href="teacher.jsp">teacher</a>&nbsp;&nbsp;&nbsp;
<a href="./LogoutServlet">Logout</a>&nbsp;&nbsp;&nbsp;
</td></tr></table><hr>
<% int sc=Integer.parseInt(request.getParameter("cid"));
SchoolClassDao dao= new SchoolClassDao();
SchoolClass sclass=dao.getcls(sc);
String name=sclass.getClass_Name();
%>
<h1>Assign Teacher and Subject <b><%=name%></b></h1>
<form action="AssignController" method="post">
<input type="hidden" name="cid" value="<%=sc%>">
select Teacher : <br>
<%
TeacherDao tdao= new TeacherDao();
List<Teacher> te=tdao.displatTeacher();
%>
<select name="teacher">
<%
for(Teacher teac:te){
%>
<option value="<%=teac.getT_ID()+","+teac.getT_FirstName() %>"><%=teac.getT_FirstName() %>
</option>
<% } %>
</select><br><br>
select Subject :<br>
<%
SubjectDao subdao= new SubjectDao();
List<Subject> su=subdao.display();
%>
<select name="subject">
<%
for(Subject subj:su){
%>
<option value="<%=subj.getSub_ID()+","+subj.getSubject_Name()%>"><%=subj.getSubject_Name()%>
</option>
<% } %>
</select><br><br>
<input type="submit" value="assign"><br><br>
</form><br>
<%
AssignDao adao= new AssignDao();
List<ReportSubjectTeacher> listrsp=adao.getAllData(sc);
%>
<table border="2px">
<tr><th>Id</th><th>Class Name</th><th>Subject Name</th><th>Teacher Name</th></tr>
<%
for(ReportSubjectTeacher rsp:listrsp){
%>
<tr><td><%=rsp.getId()%></td>
<td><%=rsp.getClassName()%></td>
<td><%=rsp.getSuBName()%></td>
<td><%=rsp.gettName() %></td></tr>
<% }%>
</table>
</body>
</html>