<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<td>교과코드</td>
				<td>교과목명</td>
				<td>구분</td>
				<td>학점</td>
			</tr>
		</thead>


		<tbody>
			<c:forEach var="transcript" items="${transcripts}">
				<tr>
					<td>${transcript.year }</td>
					<td>${transcript.semester }</td>
					<td>${transcript.cord }</td>
					<td>${transcript.name }</td>
					<td>${transcript.type }</td>
					<td>${transcript.score }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>