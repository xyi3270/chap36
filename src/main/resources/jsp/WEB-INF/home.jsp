<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-cache">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="favicon.png">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src=/webjars/bootstrap/js/bootstrap.min.js></script>
<script src=/webjars/jquery/jquery.min.js></script>
<title>home.jsp</title>
</head>
<body>
<h1>Home Page</h1>
<hr>
<sec:authorize access="isAuthenticated()">
name = <sec:authentication property="name"/>
</sec:authorize>
<hr>
<ul>
	<sec:authorize access="isAnonymous()">
	<li><a href="/user/login">/user/login </a></li>
	</sec:authorize>
	
	<sec:authorize access="isAuthenticated()">
	<li><a href="/user/logout">/user/logout</a></li>
	</sec:authorize>
</ul>
<hr>

<ul>
	<li><a href="/dept/list">/dept/list</a></li>
	<li><a href="/emp/list">/emp/list</a></li>
	<li><a href="/salgrade/list">/salgrade/list</a></li>
</ul>
<ul>
	<li><a href="/dept/detail/10">/dept/detail/10</a></li>
	<li><a href="/emp/detail/1001">/emp/detail/1001</a></li>
	<li><a href="/salgrade/detail/1">/salgrade/detail/1</a></li>
</ul>
<hr>
<ul>
	<li><a href="/dept/create    ">/dept/create</a></li>
	<li><a href="/emp/create     ">/emp/create</a></li>
	<li><a href="/salgrade/create">/salgrade/create</a></li>
</ul>
<hr>
<ul>
	<li><a href="/dept/update?deptno=10">/dept/update?deptno=10</a></li>
	<li><a href="/emp/update?empno=1001">/emp/update?empno=1001</a></li>
	<li><a href="/salgrade/update?grade=1">/salgrade/update?grade=1</a></li>
</ul>
<hr>
<ul>
	<li><a href="/dept/delete?deptno=10    ">/dept/delete?deptno=10</a></li>
	<li><a href="/emp/delete?empno=1001     ">/emp/delete?empno=1001</a></li>
	<li><a href="/salgrade/delete?grade=1 ">/salgrade/delete?grade=1</a></li>
</ul>
<hr>
<ul>
	<li><a href="/city/list">/city/list</a></li>
	<li><a href="/city/page/1/10">/city/page</a></li>
	<li><a href="/country/list">/country/list</a></li>
	<li><a href="/country/page/1/5">/country/page</a></li>
	<li><a href="/language/list">/language/list</a></li>
	<li><a href="/language/page/1/10">/language/page</a></li>
</ul>
<hr>
<ul>
	<li><a href="/city/create">/city/create</a></li>
	<li><a href="/city/update?id=2331">/city/update?id=2331</a></li>
	<li><a href="/city/delete?id=2331">/city/delete?id=2331</a></li>
</ul>

</body>
</html>