<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
	<c:import url="../layout/head.jsp"/>
	<link href="https://getbootstrap.kr/docs/5.0/examples/sign-in/signin.css" rel="stylesheet">
	<body class="text-center" cz-shortcut-listen="true">
		<main class="form-signin">
			<form class="form-signin" action="/user/login" method="post">
		    <!-- <img class="mb-4" src="https://getbootstrap.kr/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> -->
			<span class="logo">Every Ware</span>
		    <!-- <h1 class="h3 mb-3 fw-normal">Please sign in</h1> -->
		
		    <div class="form-floating">
		      <input type="text" class="form-control" id="floatingInput" name="id" placeholder="name@example.com">
		      <label for="floatingInput">ID</label>
		    </div>
		    <div class="form-floating">
		      <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password">
		      <label for="floatingPassword">Password</label>
		    </div>
		
		    <div class="checkbox mb-3">
		      <label>
		        <input type="checkbox" value="remember-me"> Remember me
		      </label>
		    </div>
		    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
		    <!-- <p class="mt-5 mb-3 text-muted">© 2017–2021</p> -->
		  </form>
		</main>
	</body>
</html>
