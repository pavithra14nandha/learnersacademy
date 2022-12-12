<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="deleteTeacherController.jsp">
<input type="hidden" name="tid" value=<%=request.getParameter("tid")%>>
<input type="submit" value="delete">
</form>
</body>
</html>