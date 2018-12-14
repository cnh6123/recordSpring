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
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-left: 1px solid #ccc;
    margin: 20px 10px;
}

thead,th {
    padding: 10px;
    font-weight: bold;
    border-top: 1px solid #ccc;
    border-right: 1px solid #ccc;
    border-bottom: 2px solid #c00;
    background: #dcdcd1;
}
tbody,th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    background: #ececec;
}
td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
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

</body>
</html>