<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/style/index.css">
</head>
<c:import url="/header" />
<script src="/resources/script/index.js"></script>
<body>
	<section>
        <article id="banner"></article>
        <article id="ad-car">
            <div id="ad-title">추천 차량</div>
            <div id="ad-car-container">
                <div class="ad-area">
                    <div class="ad-img"></div>
                    <p class="ad-car-name">차량이름</p>
                    <p class="ad-car-price">금액</p>
                </div>

                <div class="ad-area">
                    <div class="ad-img"></div>
                    <p class="ad-car-name">차량이름</p>
                    <p class="ad-car-price">금액</p>
                </div>

                <div class="ad-area">
                    <div class="ad-img"></div>
                    <p class="ad-car-name">차량이름</p>
                    <p class="ad-car-price">금액</p>
                </div>

                <div class="ad-area">
                    <div class="ad-img"></div>
                    <p class="ad-car-name">차량이름</p>
                    <p class="ad-car-price">금액</p>
                </div>
            </div>
        </article>
        <article id="move-button">
            <div class="move-button-area">
                예약하기
            </div>
            <div class="move-button-area">
                렌터카보기
            </div>
            <div class="move-button-area">
                견적상담
            </div>
            <div class="move-button-area">
                단기렌탈
            </div>
        </article>
        <article id="row-price-car">낮은가격순 자동차 추천 TOP5</article>
        <article id="brand-about"></article>
    </section>
</body>
<c:import url="/footer" />
</html>