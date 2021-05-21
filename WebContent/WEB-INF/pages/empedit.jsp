<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<% pageContext.setAttribute("ctp", request.getContextPath()); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	

<form:form action="${ctp}/emp/${employee.id}" modelAttribute="employee" method="post">
<input type="hidden" name="_method" value="PUT">
<!--<input type="hidden" name="id" value="$employee.id">-->
<!-- path 等于  html标签中的name项 -->
	lastName:<form:input path="lastName"/><br/>
	email:<form:input path="email"/><br/>
	gender:
		女：<form:radiobutton path="gender" value="0"/>  
		男：<form:radiobutton path="gender" value="1"/>  
	dept：<form:select path="department.id" items="${departments}" itemLabel="departmentName" itemValue="id" ></form:select>
	<input type="submit" value="提交">
</form:form>

 

</body>
</html>