<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/style/rental_list.css">
<script src="/resources/script/rental_list.js"></script>
</head>
<c:import url="/header" />
<body>
<section>
        <div class="page-title">렌터카 목록
            <div class="page-border"></div>
        </div>
        <article>
            <div id="car-categories">
                <p id="compact_car">경차</p>
                <p id="medium">중형</p>
                <p id="large">대형</p>
                <p id="sport">스포츠</p>
            </div>
            <div id="car-list">
                <div class="car-area">
                    <div class="car-img"></div>
                    <div class="car-brand">현대</div>
                    <div class="car-name">그랜저</div>
                    <div class="car-price">일 8만원</div>
                    <div class="car-rental">예약</div>
                </div>
                <div class="car-area">
                    <div class="car-img"></div>
                    <div class="car-brand">현대</div>
                    <div class="car-name">그랜저</div>
                    <div class="car-price">일 8만원</div>
                    <div class="car-rental">예약</div>
                </div>
            </div>
        </article>
    </section>
</body>
<c:import url="/footer" />
</html>