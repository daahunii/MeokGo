<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<%@page import="com.mycompany.myapp.board.BoardDAO, com.mycompany.myapp.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>게시물 수정</h1>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
	<form:hidden path="seq" />
	<table id="edit">
<%--		<tr><td>음식사진 : </td><td><img width="420" height="233" src="${pageContext.request.contextPath}/upload/${u.getPhoto()}"></td></tr>--%>
		<tr><td>카테고리</td><td><form:input path="category" /></td></tr>
		<tr><td>음식이름</td><td><form:input path="fdname" /></td></tr>
		<tr><td>음식가격</td><td><form:input path="price"/></td></tr>
		<tr><td>별점</td><td><form:input path="star"/></td></tr>
		<tr><td>연락처</td><td><form:input path="tel"/></td></tr>
		<tr><td>작성자</td><td><form:input path="writer" /></td></tr>
		<tr><td>내용</td><td><form:textarea cols="50" rows="5" path="review" /></td></tr>
	</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history.back()"/>
</form:form>

</body>
</html>