<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/style/mypage.css">
</head>
<c:import url="/header" />
<script src="/resources/script/mypage.js"></script>
<body>
	<c:if test="${empty user }">
		<c:redirect url="/login" />
	</c:if>
	<section id="container">
		<article class="mypage-article">
			<div id="mypage-text">마이페이지</div>
		</article>
		<article class="mypage-article">
			<div id="myAccount">
				<div id="myAccount-text">내정보</div>
				<div id="account-area">
					<div id="my-id">
						<span>아이디 : </span> <span>${user.id }</span>
					</div>
					<div id="my-password">
						<span>비밀번호 : </span> <span>내정보 수정에서 확인가능</span>
					</div>
					<div id="my-name">
						<span>이름 : </span> <span>${user.name}</span>
					</div>
					<div id="my-email">
						<span>이메잃 : </span> <span>${user.email == null ? "null" : user.email}</span>
					</div>
					<div id="my-telecom">
						<span>통신사 : </span> <span>${user.telecom}</span>
					</div>
					<div id="my-phone">
						<span>전화번호 : </span> <span>${user.phone}</span>
					</div>
				</div>
				<div id="edit-myAccount">내정보 수정</div>
				<div id="deleteAccount">회원탈퇴</div>
			</div>
			<div id="myReservation">
				<div id="myReservation-text">예약정보</div>
				<div id="myReservation-area">
					<div id="myReservation-title">
						<span>차량명</span> <span>시작날짜</span> <span>끝날짜</span> <span>금액</span>
					</div>
					<div id="myReservation-list">
						<div class="myReservation-ul">
							<span>싼타페</span> <span>2024-05-01</span> <span>2024-05-03</span>
							<span>20000원</span>
						</div>
					</div>
				</div>
			</div>
		</article>
		<article>
			<div id="Inquiry-details">
				<div id="Inquiry-details-text">문의내역</div>
				<div id="Inquiry-details-title">
					<span>날짜</span> <span>제목</span> <span>내용</span>
				</div>
			</div>
		</article>
	</section>
</body>
<c:import url="/footer" />
</html>