<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	width: 100%;
	border-top: 1px solid #444444;
	border-collapse: collapse;
}

th, td {
	border-bottom: 1px solid #444444;
	padding: 10px;
}
</style>
</head>

<body>
	<table>
		<thead>
			<tr>
				<td>수강년도</td>
				<td>수강학기</td>
				<td>이수학점</td>
				<td>link</td>
			</tr>
		</thead>


		<tbody>
			<c:forEach var="transcript" items="${transcriptsYearSemester}">
				<tr>
					<td>${transcript.year }</td>
					<td>${transcript.semester }</td>
					<td>${transcript.scoreSum }</td>
					<td><a href="${pageContext.request.contextPath}/parttranscript?year=${transcript.year}&semester=${transcript.semester}">수강목록조회</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<%-- <c:forEach var="transcript" items="${transcripts}">
		<p>
			<c:out value="${transcript}"></c:out>
		</p>
	</c:forEach> --%>

</body>
</html>