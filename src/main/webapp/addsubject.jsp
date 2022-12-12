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
<table style="background-color:RosyBrown;" ><tr><td>
<a href="class.jsp">class</a>&nbsp;&nbsp;&nbsp;
<a href="student.jsp">Student</a>&nbsp;&nbsp;&nbsp;
<a href="subject.jsp">subject</a>&nbsp;&nbsp;&nbsp;
<a href="teacher.jsp">teacher</a>&nbsp;&nbsp;&nbsp;
<a href="./LogoutServlet">Logout</a>&nbsp;&nbsp;&nbsp;
</td></tr></table><br><hr>
<div style="background-color:OldLace;">
<form action="addsubjectcontroller.jsp">
<h2 style="text-align:center;color:Darkcyan;"><i><u>Add New Subject</u></i></h2>
<table style="margin-left:auto;margin-right:auto;">
<tr><td>Subject Id :</td><td><input type="text" name="subid"></td></tr>
<tr><td>Subject Name :</td><td><input type="text" name="subname"></td></tr>
<tr><td colspan="2" style="text-align:center"><input type="submit" value="add subject" style="background-color:Moccasin";></td></tr>

</table>

</form>
</div>
</body>
</html>