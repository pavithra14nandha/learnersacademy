<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<h2>update the class Name</h2>
<body>
<table style="background-color:pink ;" ><tr><td>
<a href="class.jsp">class</a>&nbsp;&nbsp;&nbsp;
<a href="student.jsp">Student</a>&nbsp;&nbsp;&nbsp;
<a href="subject.jsp">subject</a>&nbsp;&nbsp;&nbsp;
<a href="teacher.jsp">teacher</a>&nbsp;&nbsp;&nbsp;
<a href="./LogoutServlet">Logout</a>&nbsp;&nbsp;&nbsp;
</td></tr></table><hr>

<form action="updateclasscontroller.jsp">
<table border="2px"></table>
<tr><td>Enter Name to be Edited:</td><td><input type="text" name="cname"></td></tr>
<tr><td><input type="hidden" name="cid" value=<%=request.getParameter("cid") %>></td></tr>
<tr><td><input type="submit" value="Update"></td></tr>

</table>
</form>
</body>
</html>