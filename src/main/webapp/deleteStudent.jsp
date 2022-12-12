<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="deletestudentcontroller.jsp">
<input type="hidden" name="stuid" value=<%=request.getParameter("stuid")%>>
<input type="submit" value="delete">
</form>
</body>
</html>