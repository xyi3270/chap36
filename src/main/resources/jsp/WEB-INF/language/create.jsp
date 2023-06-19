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

<title>creat.jsp</title>
</head>
<body>
<h1>Language Creat 언어 추가</h1>
<hr>
<a href="/">Home</a>
<hr>
<a href="/language/list">/language/list</a>
<hr>
<section class="container">
	<form action="/language/create" method="post">
		<div class="mb-3">
			<label class="form-lable mb-2" for="countryCode">countryCode<span>*</span></label>
			<input class="form-control" id="countryCode" name="countryCode"  placeholder="도시이름를 입력하세요." value="${language.countryCode}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="language">language</label>
			<input class="form-control" id="language" name="language"  placeholder="나라코드를 입력하세요." value="${language.language}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="isofficial">isofficial</label>
			<input class="form-control" id="isofficial" name="isofficial"      placeholder="시도를 입력하세요." value="${language.isofficial}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="percentage">percentage</label>
			<input class="form-control" id="percentage" name="percentage"      placeholder="인구수를 입력하세요." value="${language.percentage}"/>
		</div>
		<button type="submit" class="btn btn-primary">Summit</button>
	</form>
	<hr>
</section>
<hr>
<c:if test="${binding.hasErrors()}">
	<h2>Error Message</h2>
<hr>
<c:forEach var="g" items="${binding.globalErrors}">
	<div>${g.code} ${g.defaultMessage}</div>	
</c:forEach>
<hr>
<c:forEach var="f" items="${binding.fieldErrors}">
	<div>${f.field} ${f.defaultMessage}</div>	
</c:forEach>
</c:if>

</body>
</html>