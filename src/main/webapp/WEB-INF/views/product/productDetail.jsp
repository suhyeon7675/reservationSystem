<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<jsp:include page="/WEB-INF/views/header.jsp" />
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-9">
				<div class="card mb-3" style="border:none;">
					<div class="row no-gutters">
						<div class="container px-0">
							<p class="h3"><strong><${product.productName}></strong></p>
							<p class="h6 mb-3 font-weight-normal">
								<span>
									<fmt:formatDate value="${product.productStartDate}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${product.productEndDate}" pattern="yyyy-MM-dd"/> | ${product.placeName}
								</span>
							</p>
						</div>
						<div class="col-md-4">
							<img src="/resources/images/${product.thumbnail}" class="w-100 mr-4">
						</div>
						<div class="col-md-8 my-auto">
							<form id="reserveForm" name="reserveForm" method="POST">
							<input type="hidden" name="productNo" value="${product.productNo}" />
							<input type="hidden" name="placeNo" value="${product.placeNo}" />
								<table class="table table-borderless">
									<tr>
										<th style="width:25%" scope="row">등급</th>
										<td>${product.productRating}세 이상</td>
									</tr>
									<tr>
										<th style="width:25%" scope="row">관람시간</th>
										<td>${product.productRunningTime}</td>
									</tr>
									<tr>
										<th style="width:25%" scope="row">출연</th>
										<td>${product.productAppearance}</td>
									</tr>
									<tr>
										<th style="width:25%" scope="row">가격</th>
										<td>${product.productPrice}원 </td>
									</tr>
									<tr>
										<th class="pt-3"style="width:25%" scope="row">날짜/회차</th>
										<td>
											<div class="text-center" style="width: 40%">
												<select name="perform" id="perform" class="p-1" required>
													<option value="" selected>날짜/회차 선택</option>
													<c:choose>
														<c:when test="${empty performList}">
															<option value="">선택 가능한 회차가 없습니다.</option>
														</c:when>
														<c:when test="${!empty performList}">
															<jsp:useBean id="now" class="java.util.Date" />
															<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
															<c:forEach var="pfm" items="${performList}">
																<fmt:formatDate value="${pfm.performanceDate}" pattern="yyyy-MM-dd" var="pf_dt" />
																<c:if test="${today < pf_dt}">
																	<option value="${pfm.performanceNo}">${pfm.performanceDate} ${pfm.performanceRound}회차 (${pfm.performanceStart})</option>
																</c:if>
															</c:forEach>
														</c:when>
													</c:choose>
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<c:choose>
											<c:when test="${!empty sessionScope.member}">
												<td colspan="2"><button class="btn btn-outline-info btn-sm" id="reservebtn" type="submit" formaction="/getSeatList" style="float:right">좌석 선택</button></td>
											</c:when>
											<c:when test="${empty sessionScope.member}">
												<td colspan="2"><button class="btn btn-outline-info btn-sm" id="reservebtn" type="button" onclick="location.href='/login'" style="float:right">좌석 선택</button></td>
											</c:when>
										</c:choose>
									</tr>
								</table>
							</form>
						</div>
						<div class="text-center" style="width:100%">
							<p align="center" class="h4 my-5"><strong><img src="/resources/images/point.png" class="mb-1"style="width:5%">${product.placeName}</strong></p>
							<p class="mt-3" style="text-align:center;">
								도로명주소 : ${product.placeStreet}
							</p>
							<p class="mt-1" style="text-align:center;">
								지번주소 : ${product.placeLot}
							</p>
							<p class="mt-1" style="text-align:center;">
								고객문의 : ${product.placeTel}
							</p>
						</div>
						<div class="text-center">
							<p class="h4 my-5" style="text-align:center;"><strong>공연정보</strong></p>
							<p class="mt-6" style="text-align:center;">
								<img src="/resources/images/${product.description}" style="width:100%">
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
</script>
</html>
