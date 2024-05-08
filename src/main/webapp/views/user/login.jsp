<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/style/login.css">
<script src="/resources/script/login.js"></script>
</head>
<c:import url="/header" />
<body>
<section>
        <article>
            <div id="log-logo"></div>
            <div id="login-text">로그인</div>
            <div id="loginForm">
                <form action="post" action="/loginFormAction.html">
                    <div>
                        <input type="text" id="id" name="id" placeholder="아이디">
                        <input type="password" id="password" name="password" placeholder="비밀번호">
                    </div>
                    <div class="error-container">
                        <p class="error-msg" id="error-msg-id">* 아이디: 필수 정보입니다.</p>
                        <p class="error-msg" id="error-msg-password">* 비밀번호: 필수 정보입니다.</p>
                    </div>
                    <div class="link-container">
                        <div id="join">회원가입</div>
                        <div id="find">아이디/비밀번호 찾기</div>
                    </div>
                    <input type="submit" id="submit" value="로그인">
                </form>
            </div>
        </article>
    </section> 
</body>
<c:import url="/footer" />
</html>