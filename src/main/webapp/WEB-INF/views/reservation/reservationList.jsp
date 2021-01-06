<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>

<jsp:include page="/WEB-INF/views/header.jsp" />
	<div class="container">
	    <div class="row">
	        <div class="mx-auto">
	            <div class="card border-success my-5">
	                <div class="card-body my-4">
	                    <h1 style="text-align:center" class="card-title pb-4 pt-4">ORDERS</h1>
	                    <table class="table">
	                        <thead>
	                            <tr class="text-center">
	                                <th class="column1">예매일</th>
	                                <th class="column2">예매번호</th>
	                                <th class="column3">공연명</th>
	                                <th class="column4">공연장</th>
	                                <th class="column5">좌석번호</th>
	                                <th class="column6">관람일시</th>
	                                <th class="column7">결제금액</th>
	                                <th class="column8">취소</th>
	                            </tr>
	                        </thead>
	                        <tbody>
		                        <c:choose>
									<c:when test="${empty reservationList}">
										<tr>
											<td colspan="8" style="text-align: center; height: 35px;">예약 목록 없음</td>
										</tr>
									</c:when>
									<c:when test="${!empty reservationList}">
										<c:forEach var="res" items="${reservationList}">
											<tr class="text-center">
												<td class="column1"><fmt:formatDate value="${res.reservationDate}" pattern="yyyy-MM-dd" /></td>
												<td class="column2"><c:out value="${res.reservationNo}"/></td>
												<td class="column3"><c:out value="${res.productName}"/></td>
												<td class="column4"><c:out value="${res.placeName}"/></td>
												<td class="column5"><c:out value="${res.seatNo}"/></td>
												<td class="column6">
													<fmt:formatDate value="${res.performanceDate}" pattern="yyyy-MM-dd" />
													<c:out value="${res.performanceRound}"/>회
													(<c:out value="${res.performanceStart}"/>)
												</td>
												<td class="column7"><c:out value="${res.productPrice}"/></td>
												<jsp:useBean id="now" class="java.util.Date" />
												<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />  
												<fmt:formatDate value="${res.performanceDate}" pattern="yyyy-MM-dd" var="pf_dt"/>
												<c:if test="${today < pf_dt }">
													<td class="column8"><button type="button" class="btn btn-sm btn-outline-info" id="btnCancel" 
														onclick="javascript:cancelCheck(${res.reservationNo}, ${res.performanceNo})">취소</button></td>
												</c:if>
											</tr>
										</c:forEach>
									</c:when>
								</c:choose>
	                        </tbody>
	                    </table>
	                </div>
	            </div>
	        </div>
    	</div>
	</div>
</body>
<script>
	function cancelCheck(reservationNo, performanceNo){
		if(confirm("예약을 취소하시겠습니까?")){
			alert("예약이 취소되었습니다.")
			location.href = "/reservationCancel?reservationNo=" + reservationNo + "&performanceNo=" + performanceNo;
		}
	}
</script>
</html>