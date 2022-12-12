<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete subject</title>
</head>
<body>
<h2>Delete subject</h2>
<form action="deletesubjectcontroller.jsp">
<input type="hidden" name="subid" value=<%=request.getParameter("subid")%>>
<input type="submit" value="delete">
</form>
</body>
</html>