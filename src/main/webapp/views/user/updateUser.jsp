<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/style/updateUser.css">
</head>
<c:import url="/header" />
<script src="/resources/script/updateUser.js"></script>
<body>
	<section>
		<article id="update-article">
			<div id="log-logo"></div>
			<div id="login-text">회원정보수정</div>
			<div id="loginForm">
				<form method="POST" action="updateUserAction">
					<div>
						<input type="text" id="id" name="id" placeholder="${user.id}" disabled> 
						<input type="password" id="password" name="password" placeholder="현재비밀번호" ">
						<input type="password" id="password-new" name="password-new" placeholder="바꿀비밀번호">
						<input type="text" id="email" name="email" value="${user.email == null ? null : user.email}"
							placeholder="[선택] 이메일주소 (비밀번호 찾기 등 본인 확인용)">
					</div>
					<div class="error-container">
						<p class="error-msg" id="error-msg-password">* 비밀번호: 필수 정보입니다.</p>
						<p class="error-msg" id="error-msg-email">* 이메일: 이메일 주소가 정확한지
							확인해 주세요.</p>
					</div>
					<div>
						<input type="text" id="name" name="name" placeholder="${user.name}" disabled>
						<select id="telecom" name="telecom">
							<option selected disabled>통신사 선택</option>
							<option value="skt">SKT</option>
							<option value="kt">KT</option>
							<option value="lgt">LGU+</option>
						</select> <input type="text" id="phone" name="phone" placeholder="휴대전화번호" value="${user.phone}">
						
					</div>
					<div class="error-container">
						<p class="error-msg" id="error-msg-birth">* 생년월일: 필수 정보입니다.</p>
						<p class="error-msg" id="error-msg-birth-pattern">* 생년월일은 8자리
							숫자로 입력해 주세요.</p>
						<p class="error-msg" id="error-msg-telecom">* 통신사: 이용하는 통신사를
							선택해 주세요.</p>
						<p class="error-msg" id="error-msg-phone">* 휴대전화번호: 필수 정보입니다.</p>
						<p class="error-msg" id="error-msg-phone-pattern">* 휴대전화번호:
							휴대전화번호가 정확한지 확인해 주세요.</p>
					</div>
					<input type="submit" value="회원정보 수정">
				</form>
			</div>
		</article>
	</section>
</body>
<c:import url="/footer" />
</html>