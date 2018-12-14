<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${transcript.year}년 ${transcript.semester}학기의 ${transcript.name} 과목 수강신청 완료!<br>
<a href="${pageContext.request.contextPath}/transcripts">click here to view current transcripts</a>
</body>
</html>