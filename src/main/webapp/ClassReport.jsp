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
<%
int cid=Integer.parseInt(request.getParameter("cid"));

SchoolClassDao scdao= new SchoolClassDao();
SchoolClass sclass=scdao.getcls(cid);
String name=sclass.getClass_Name();
%>

<h2 style="color:OliveDrab;text-align:center;"><i><u>Class report of &nbsp;<b><%=name%></b></u></i></h2>
<table border="1" style="margin-left:auto;margin-right:auto;background-color:lightgrey;">
<%
AssignDao tsdao= new AssignDao();
List<ReportSubjectTeacher> lis=tsdao.getAllData(cid);

%>
 <tr><th>Id</th><th>ClassName</th><th>subject name</th><th>teacher name</th></tr>
 <%
 for(ReportSubjectTeacher rsp:lis){
 %>
<tr><td><%=rsp.getId()%></td><td><%=rsp.getClassName() %></td><td><%=rsp.getSuBName()%></td><td><%=rsp.gettName()%></td></tr>
 <%} %>
 </table>
 <h2 style="color:OliveDrab;text-align:center;"><i><u>Student List</u></i></h2>
 <table border="2px" style="margin-left:auto;margin-right:auto;background-color:lightgrey;">
<tr><th>Class ID</th><th>Class Name</th><th>First name</th><th>Last name</th><th>Date Of Birth</th><th>Address</th>
<th>phone</th></tr>
<%
StudentDao sdao= new StudentDao();
List<Student>listud=sdao.getStudent(cid);
for(Student s:listud){%>

<tr><td><%=cid%></td><td><%=s.getSclass().getClass_Name()%></td><td><%=s.getF_name()%></td><td>
<%=s.getL_name()%></td><td><%=s.getDOB()%></td><td><%=s.getAddress()%></td><td><%=s.getPhone() %></td></tr>
<%}%>
</table>
</body>
</html>													