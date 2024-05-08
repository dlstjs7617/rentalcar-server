<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/style/join.css">
<script src="/resources/script/join.js"></script>
</head>
<c:import url="/header" />
<body>
<section>
        <article>
            <div id="log-logo"></div>
            <div id="login-text">회원가입</div>
            <div id="loginForm">
                <form action="post" action="/joinFormAction.html">
                    <form method="POST" action="/joinFormAction">
                        <div>
                            <input type="text" id="id" name="id" placeholder="아이디">
                            <input type="password" id="password" name="password" placeholder="비밀번호">
                            <input type="text" id="email" name="email" placeholder="[선택] 이메일주소 (비밀번호 찾기 등 본인 확인용)">
                        </div>
                        <div class="error-container">
                            <p class="error-msg" id="error-msg-id">* 아이디: 필수 정보입니다.</p>
                            <p class="error-msg" id="error-msg-id-dupl">* 아이디: 이미 사용중인 아이디입니다.</p>
                            <p class="error-msg" id="error-msg-password">* 비밀번호: 필수 정보입니다.</p>
                            <p class="error-msg" id="error-msg-email">* 이메일: 이메일 주소가 정확한지 확인해 주세요.</p>
                        </div>
                        <div>
                            <input type="text" id="name" name="name" placeholder="이름">
                            <input type="text" id="birth" name="birth" placeholder="생년월일 8자리">
                            <select id="telecom" name="telecom">
                                <option selected disabled>통신사 선택</option>
                                <option value="skt">SKT</option>
                                <option value="kt">KT</option>
                                <option value="lgt">LGU+</option>
                            </select>
                            <input type="text" id="phone" name="phone" placeholder="휴대전화번호">
                            <div id="radio-container">
                                <input type="radio" class="gender" id="gender-man" name="gender" value="M">
                                <input type="radio" class="gender" id="gender-woman" name="gender" value="F">
                                <div id="gender-label">
                                    <label for="gender-man" id="gender-man-label"><div>남자</div></label>
                                    <label for="gender-woman" id="gender-woman-label"><div>여자</div></label>
                                </div>
                            </div>
                        </div>
                        <div class="error-container">
                            <p class="error-msg" id="error-msg-name">* 이름: 필수 정보입니다.</p>
                            <p class="error-msg" id="error-msg-birth">* 생년월일: 필수 정보입니다.</p>
                            <p class="error-msg" id="error-msg-birth-pattern">* 생년월일은 8자리 숫자로 입력해 주세요.</p>
                            <p class="error-msg" id="error-msg-telecom">* 통신사: 이용하는 통신사를 선택해 주세요.</p>
                            <p class="error-msg" id="error-msg-gender">* 성별: 성별을 선택해 주세요.</p>
                            <p class="error-msg" id="error-msg-phone">* 휴대전화번호: 필수 정보입니다.</p>
                            <p class="error-msg" id="error-msg-phone-pattern">* 휴대전화번호: 휴대전화번호가 정확한지 확인해 주세요.</p>
                        </div>
                        <input type="submit" value="회원가입">
                </form>
            </div>
        </article>
    </section> 
</body>
<c:import url="/footer" />
</html>