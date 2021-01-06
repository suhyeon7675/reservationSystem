<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>SH TICKET</title>
	<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css" />
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.js"></script>
	<style>

	</style>
</head>
<body>
	<div class="container">
		<div class="col-md-auto">
			<nav class="navbar-dark mt-3" style="text-decoration:none;">
				<ul class="login float-right">
					<c:choose>
						<c:when test="${not empty member}">
							<li class="d-inline-block border-right mr-2 pr-2">${member.userId}님</li>
							<li class="d-inline-block border-right mr-2 pr-2">
								<a href="/logout" class="text-body">Logout</a>
							</li>
								<li class="d-inline-block border-right mr-2 pr-2">
									<a href="/updateUserInfo" class="text-body">My Page</a>
								</li>
								<li class="d-inline-block border-right mr-2 pr-2">
									<a href="/reservationList" class="text-body">예매내역</a>
								</li>		
						</c:when>
						<c:otherwise>
							<li class="d-inline-block border-right mr-2 pr-2">
								<a href="/login" class="text-body">Login</a>
							</li>
							<li class="d-inline-block border-right mr-2 pr-2">
								<a href="/register" class="text-body">Join</a>
							</li>
								<li class="d-inline-block border-right mr-2 pr-2">
									<a href="/login" class="text-body">My Page</a>
								</li>
							<li class="d-inline-block mr-2 pr-2">
								<a href="/login" class="text-body">예매내역</a>
							</li>
						</c:otherwise>
					</c:choose>
					<c:if test="${ member.userId eq 'admin'}">
						<li class="d-inline-block mr-2 pr-2">
								<a href="/adminMenu" class="text-body">관리자 메뉴</a>
							</li>
					</c:if>
				</ul>
					<a href="/" class="navbar-brand">
						<span class="text-dark">SH TICKET</span>
						<img src="/resources/images/ticket.png" alt="Logo" style="width:45px;">
					</a>
				<form class="form-inline justify-content-center">
					<input class="form-control mr-sm-2" type="text" placeholder="Search" name="keyword" id="keyword">
					<button class="btn btn-outline-success my-2 my-sm-0" type="button" id="btnSearch">Search</button>
				</form>
			</nav>
			<div class="row justify-content-center border-bottom pb-4 mb-4 mt-4">
				<div class="col-md-auto">
					<nav class="w-100 d-inline-block">
						<a href="/prductList?productCategory=1" class="mx-5 text-body">뮤지컬</a>
						<a href="/productList?productCategory=2" class="mx-5 text-body">콘서트</a>
						<a href="/productList?productCategory=3" class="mx-5 text-body">클래식</a>
						<a href="/productList?productCategory=4" class="mx-5 text-body">연극</a>
					</nav>
				</div>
			</div>
		</div>
	</div>