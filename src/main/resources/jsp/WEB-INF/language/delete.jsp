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

<title>delete.jsp</title>
</head>
<body>
<h1>Language Delete 언어 수정</h1>
<hr>
<a href="/">Home</a>
<hr>
<a href="/language/list">/language/list</a>
<hr>
<section class="container">
	<form action="/language/delete" method="post">
	<div class="mb-3">
			<label class="form-lable mb-2" for="countrycode">countrycode<span>*</span></label>
			<input class="form-control" id="countrycode" name="countrycode"   value="${language.countrycode}" disabled="disabled"/>
			<input class="form-control" id="countrycode" name="countrycode"   value="${language.countrycode}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="language">language<span>*</span></label>
			<input class="form-control" id="language" name="language"   value="${language.language}" disabled="disabled"/>
			<input class="form-control" id="language" name="language"   value="${language.language}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for=isofficial>isofficial</label>
			<input class="form-control" id="isofficial" name="isofficial"  value="${language.isofficial}" disabled="disabled"/>
			<input class="form-control" id="isofficial" name="isofficial"  value="${language.isofficial}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="percentage">percentage</label>
			<input class="form-control" id="percentage" name="percentage"      value="${language.percentage}" disabled="disabled"/>
			<input class="form-control" id="percentage" name="percentage"      value="${language.percentage}" type="hidden"/>
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