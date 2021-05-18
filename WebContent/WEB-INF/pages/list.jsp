<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" cellpadding="5" cellspacing="0">
		<tr>
			<th>id</th>
			<th>lastName</th>
			<th>email</th>
			<th>gender</th>
			<th>department</th>
			<th>edit</th>
			<th>del</th>
		</tr>
		<c:forEach items="${list}" var="emp">
		<tr>
			<td>${emp.id}</td>
			<td>${emp.lastName}</td>
			<td>${emp.email}</td>
			<td>${emp.gender=="0"?"女":"男"}</td>
			<td>${emp.department.departmentName}</td>
			<td><a href="emp/${emp.id}" >edit</a></td>
			<td>del</td>
		</tr>
		</c:forEach>
		
	</table>
	<a href="toaddpage">添加</a>
</body>
</html>