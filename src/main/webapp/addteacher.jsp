<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: OldLace;">
<table style="background-color:pink ;" ><tr><td>
<a href="class.jsp">class</a>&nbsp;&nbsp;&nbsp;
<a href="student.jsp">Student</a>&nbsp;&nbsp;&nbsp;
<a href="subject.jsp">subject</a>&nbsp;&nbsp;&nbsp;
<a href="teacher.jsp">teacher</a>&nbsp;&nbsp;&nbsp;
<a href="./LogoutServlet">Logout</a>&nbsp;&nbsp;&nbsp;
</td></tr></table><hr>

<h2 style="color:green;text-align:center">Add Teacher</h2>
<form action="addteachercontroller.jsp">
<table border="2px" style="margin-left:auto;margin-right:auto";>
<tr><td>Teacher Id</td><td><input type="text" name="tid"></td></tr>
<tr><td>First Name</td><td><input type="text" name="tfname"></td></tr>
<tr><td>Last Name</td><td><input type="text" name="tlname"></td></tr>
<tr><td>Date Of Birth</td><td><input type="date" name="tdob"></td></tr>
<tr><td>Address</td><td><input type="text" name="tadd"></td></tr>
<tr><td>phone</td><td><input type="text" name="tphone"></td></tr>
<tr><td>Designation</td><td><input type="text" name="tdesig"></td></tr>
<tr><td colspan="2" style="text-align:center ";><input type="submit" name="add teacher"></td></tr>
</table>
</form>
</body>
</html>