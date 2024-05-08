<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/style/reservation.css">
<script src="/resources/script/reservation.js"></script>
</head>
<c:import url="/header" />
<body>
 <section>
        <div class="page-title">예약하기
            <div class="page-border"></div>
        </div>
        <article>
            <div id="car-area">
                <div class="car-img"></div>
                <div class="car-brand">현대</div>
                <div class="car-name">아반떼</div>
                <div class="car-price">일 85000원</div>
            </div>
            <div id="reservation-right">
                <div id="calender"></div>
                <div id="reservation-button"></div>
            </div>
        </article>
    </section>
</body>
<c:import url="/footer" />
</html>