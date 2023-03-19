<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<form action="/user/login" method="post">
	<input type="text" id="id"/>
	<input type="password" id="password"/>
	<input type="submit" value="저장"/>
</form>
</body>
</html>
