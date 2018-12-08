<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
</head>
<body>
	<p>
		<a href="${pageContext.request.contextPath}/transcripts">Show current Transcripts</a>
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/createtranscript">Add a new Transcripts</a>
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/parttranscript?year=2019&semester=1">Show Next Semester Courses</a>
	</p>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<a href="javascript:document.getElementById('logout').submit()">Logout</a>
	</c:if>

	<form id="logout" action="<c:url value="/logout" />" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

</body>
</html>