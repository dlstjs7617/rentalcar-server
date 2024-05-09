<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/style/deleteUser.css">
</head>
<c:import url="/header" />
<script src="/resources/script/deleteUser.js"></script>
<body>
	<section>
		<article id="container">
			<div id="log-logo"></div>
			<div id="login-text">회원탈퇴</div>
			<div id="loginForm">
				<form method="POST" action="deleteUserAction">
					<div>
						<input type="text" id="id" name="id" placeholder="아이디"> <input
							type="password" id="password" name="password" placeholder="비밀번호">
					</div>
					<div class="error-container">
						<p class="error-msg" id="error-msg-id">* 아이디: 필수 정보입니다.</p>
						<p class="error-msg" id="error-msg-password">* 비밀번호: 필수 정보입니다.</p>
					</div>
					<input type="submit" value="회원탈퇴">
				</form>
			</div>
		</article>
	</section>
</body>
<c:import url="/footer" />
</html>