<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/style/find_Pw.css">
</head>
<c:import url="/header" />
<script src="/resources/script/find_Pw.js"></script>
<body>
	<section>
        <article id="find-article">
            <div id="log-logo"></div>
            <div id="login-text">비밀번호 찾기</div>
            <div id="loginForm">
                <form method="POST" action="/findUserPwAction">
                    <div>
                    	<input type="text" id="id" name="id" placeholder="아이디">
                        <input type="text" id="name" name="name" placeholder="이름">
                        <select id="telecom" name="telecom">
                            <option selected disabled>통신사 선택</option>
                            <option value="skt">SKT</option>
                            <option value="kt">KT</option>
                            <option value="lgt">LGU+</option>
                        </select>
                        <input type="text" id="phone" name="phone" placeholder="휴대전화번호">
                    </div>
                    <div class="error-container">
                    	<p class="error-msg" id="error-msg-id">* 아이디 필수입력</p>
                        <p class="error-msg" id="error-msg-name">* 이름 필수입력</p>
                        <p class="error-msg" id="error-msg-telecom">* 통신사 필수 선택입니다.</p>
                        <p class="error-msg" id="error-msg-phone">* 전화번호 필수입력</p>
                        <p class="error-msg" id="error-msg-phone-pattern">* 휴대전화번호: 휴대전화번호가 정확한지 확인해 주세요.</p>
                    </div>
                    
                    <input type="submit" value="아이디 찾기">
                </form>
                <div id="result">
                    <c:if test="${not empty password}">
                        <p>비밀번호는 : ${password}</p>
                    </c:if>
                    <c:if test="${empty password}">
                        <p>사용자를 찾을 수 없습니다.</p>
                    </c:if>
                </div>
            </div>
        </article>
    </section> 
</body>
<c:import url="/footer" />
</html>