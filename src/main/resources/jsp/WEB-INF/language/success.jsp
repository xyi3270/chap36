<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-store">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/favicon.png">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>

<title>success.jsp</title>
</head>
<body>
<h1>Language Successful 성공</h1>
<hr>
<a href="/">Home</a>
<hr>
<a href="/language/list">/language/list</a>
<hr>
<c:choose>
	<c:when test="${param.create ne null}"><h1>언어 추가 성공</h1></c:when>
	<c:when test="${param.update ne null}"><h1>언어 수정 성공</h1></c:when>
	<c:when test="${param.delete ne null}"><h1>언어 삭제 성공</h1></c:when>
	<c:otherwise></c:otherwise>
</c:choose>

<section class="container">
	<table class="table">
				<tbody>
				<tr><th>countrycode</th> 			<td>${language.countrycode}</td></tr>
				<tr><th>language</th> 				<td>${language.language}</td></tr>
				<tr><th>isofficial</th> 			<td>${language.isofficial}</td></tr>
				<tr><th>percentage</th> 			<td>${language.percentage}</td></tr>
		</tbody>
	</table>
	<hr>
</section>
</body>
</html>