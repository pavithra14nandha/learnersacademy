<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete class</title>
</head>
<body>
<h2>Delete the class</h2>
<form action="deleteclasscontroller.jsp">
<input type="hidden" name="cid" value=<%=request.getParameter("cid")%>>
<input type="submit" value="delete">
</form>
</body>
</html>