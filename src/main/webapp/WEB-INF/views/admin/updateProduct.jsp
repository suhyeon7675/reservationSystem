<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<jsp:include page="/WEB-INF/views/header.jsp" />
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-12">
				<div class="card mb-3" style="border:none;">
					<div class="row no-gutters">
						<div class="col-md-4">
							<img src="/resources/images/${productContent.thumbnail}" class="w-100">
						</div>
						<div class="col-md-7 float-right ml-5">
							<form name="updateForm" method="post" action="/admin/updateProduct/data" class="form-group" enctype="multipart/form-data">
								<input type="hidden" name="productNo" value="${productContent.productNo}" />
								
								<div class="row form-gorup">
									<label class="col-md-3 col-form-label mb-3">카테고리</label>
									<div class="col-md-8">
										<select name="category" id="category" class="p-1" required>
										<option value="" selected>카테고리 선택</option>
											<c:forEach var="cate" items="${categoryList}">
												<option value="${cate.categoryNo}">${cate.categoryName}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								
								<div class="row form-group">
									<label for="title" class="col-md-3 col-form-label pr-0">공연명</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="productName" value="${productContent.productName}" required>
									</div>
								</div>
								
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">가격</label>
									<div class="col-md-8">
										<input type="number" class="form-control" name="productPrice" value="${productContent.productPrice}" required>
									</div>
								</div>
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">등급</label>
									<div class="col-md-8">
										<input type="number" class="form-control" name="productRating" value="${productContent.productRating}">
									</div>
								</div>
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">관람시간</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="productRunningTime" value="${productContent.productRunningTime}">
									</div>
								</div>
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">출연</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="productAppearance" value="${productContent.productAppearance}">
									</div>
								</div>
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">공연 이미지</label>
									<div class="col-md-8">
										<input type="file" id="productImage" name="productImage">
									</div>
								</div>
								
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">장소</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="placeName" value="${productContent.placeName}" required>
									</div>
								</div>
								
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">도로명 주소</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="placeStreet" value="${productContent.placeStreet}" required>
									</div>
								</div>
								
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">지번 주소</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="placeLot" value="${productContent.placeLot}" required>
									</div>
								</div>
								
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">장소 전화번호</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="placeTel" value="${productContent.placeTel}" required>
									</div>
								</div>
								
								
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">공연기간</label>
									<div class="col-md-8">
										<fmt:formatDate value="${productContent.productStartDate}" pattern="yyyy-MM-dd" var="start"/>
										<fmt:formatDate value="${productContent.productEndDate}" pattern="yyyy-MM-dd" var="end"/>
										<input type="text" class="form-control mr-3" name="productStartDate" value="${start}" style="width:40%; float:left" required>
										<span class="align-bottom pl-4">
											~
										</span> 
										<input type="text" class="form-control" name="productEndDate" value="${end}" style="width:40%; float:right" required>
									</div>
								</div>
			
								<div class="float-right mr-5">
									<button type="submit" class="btn btn-sm btn-outline-info mr-2">공연 수정</button>
									<button type="button" class="btn btn-sm btn-outline-success mr-2" onclick="location.href='/prductList?productCategory=1'">돌아가기</button>
								</div>
							</form>
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