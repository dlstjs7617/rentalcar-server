<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/style/grid.css">
<link rel="stylesheet" href="/resources/style/header.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="/resources/script/header.js"></script>
<title>렌탈카</title>
</head>
<body>
	<header>
        <div id="top-area">
            <img id="logo">
            <div id="top-main">중앙에 들어갈 광고문구</div>
            <div id="log-button">
                <button id="login">로그인</button>
                <button id="mypage">로그인시 생길 마이페이지</button>
                <button id="logout">로그인시 생길 로그아웃</button>
            </div>
        </div>
        <nav>
            <li>
                <ul class="mypage">마이페이지</ul>
                <ul class="reservation">예약하기</ul>
                <ul class="membership">멤버십</ul>
                <ul class="notice">고객센터</ul>
            </li>
        </nav>
    </header>
</body>
</html>