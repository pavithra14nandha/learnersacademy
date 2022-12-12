<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<div style="text-align:center;">
<form action="addClassController.jsp">
<h2 style="text-align:center";>Add New Class</h2>
<table width="150px" height="100px" style="background-color:Coral; margin-left:auto;margin-right:auto;">
<tr><td>ClassID:</td><td><input type="text" name="cid"></td></tr>
<tr><td>ClassName:</td><td><input type="text" name="cname"></td></tr>
<tr><td colspan="2" style="text-align:center;"><input type="submit" value="add class" ></td></tr>

</table>
</form>
</div>
</body>
</html>