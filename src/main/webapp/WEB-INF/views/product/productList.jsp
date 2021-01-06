<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<jsp:include page="/WEB-INF/views/header.jsp" />
<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-9">
			<div class="row mt-5">
				<c:choose>
					<c:when test="${empty productList}">
						<tr>
							<td colspan="8" style="text-align: center; height: 35px;">상품 없음</td>
						</tr>
					</c:when>
					<c:when test="${!empty productList}">
						<c:forEach var="pro" items="${productList}">
							<div class="col-md-4 text-center my-3">
								<a href="/productDetail?productNo=${pro.productNo}"> 
								<img src="/resources/images/${pro.thumbnail}" class="w-100">
									<p class="text-dark font-weight-bold mb-0 mt-3"><${pro.productName}></p>
									<p class="text-dark">${pro.placeName}</p>
								</a>
								<c:if test="${ member.userId eq 'admin'}">
									<button class="btn btn-outline-info btn-sm" onclick="location.href='/admin/updateProduct?productNo=${pro.productNo}'">수정</button>
									<button class="btn btn-outline-danger btn-sm" onclick="deleteProductCheck(${pro.productNo})">삭제</button>
								</c:if>
							</div>
						</c:forEach>
					</c:when>
				</c:choose>
			</div>
			<div class="float-right my-4">
				<c:if test="${member.userId eq 'admin'}">
					<button class="btn btn-outline-dark btn-sm" onclick="location.href='admin/addProduct'">공연 등록</button>
				</c:if>
			</div>
		</div>
	</div>
</div>
</body>
<script>
	function deleteProductCheck(productNo){
		if(confirm("상품을 삭제하시겠습니까?")){
			alert("상품이 삭제되었습니다.");
			location.href="/admin/deleteProduct?productNo=" + productNo;
		}
	}
</script>
</html>