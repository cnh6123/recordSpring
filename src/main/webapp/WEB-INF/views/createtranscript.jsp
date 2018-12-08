<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main1.css">
</head>

<body>
	<sf:form method="post" action="${pageContext.request.contextPath}/docreate" modelAttribute="transcript">
		<table class="formtable">
         <tr>
            <td class="label">Year:</td>
            <td><sf:input class="control" type="number" path="year" value="2019"/> <br>
            <sf:errors path="year" class="error" /> </td>
         </tr>
         <tr>
            <td class="label">Semester:</td>
            <td><sf:input class="control" type="number" path="semester" value="1"/> <br>
            <sf:errors path="semester" class="error" /> </td>
         </tr>
         <tr>
            <td class="label">Cord:</td>
            <td><sf:input type="text" class="control" path="cord"/><br>
            <sf:errors path="cord" class="error" /> </td>
         </tr>
         <tr>
            <td class="label">Course Name:</td>
            <td><sf:input type="text" class="control" path="name"/> <br>
            <sf:errors path="name" class="error" /> </td>
         </tr>
         <tr>
            <td class="label">Course Type:</td>
            <td><sf:input type="text" class="control" path="type"/> <br>
            <sf:errors path="type" class="error" /> </td>
         </tr>
         <tr>
            <td class="label">Course Score</td>
            <td><sf:input type="number" class="control" path="score" min="1" max="3"/> <br>
            <sf:errors path="score" class="error" /> </td>
         </tr>
         <tr>
            <td></td>
            <td><input class="control" type="submit" value="수강신청" /></td>
         </tr>
      </table>

	</sf:form>
</body>
</html>