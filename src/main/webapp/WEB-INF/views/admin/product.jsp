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
						<div class="col-md-7 float-right ml-5">
							<form name="addForm" method="post" action="/admin/addProductPost" class="form-group" enctype="multipart/form-data">
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
										<input type="text" class="form-control" name="productName" placeholder="Name">
									</div>
								</div>
								
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">가격</label>
									<div class="col-md-8">
										<input type="number" class="form-control" name="productPrice" placeholder="Price">
									</div>
								</div>
								
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">등급</label>
									<div class="col-md-8">
										<input type="number" class="form-control" name="productRating" placeholder="Rating">
									</div>
								</div>
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">관람시간</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="productRunningTime" placeholder="RunningTime">
									</div>
								</div>
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">출연</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="productAppearance" placeholder="Appearnace">
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
										<input type="text" class="form-control" name="placeName" placeholder="Place">
									</div>
								</div>
								
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">도로명 주소</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="placeStreet" placeholder="Street Address">
									</div>
								</div>
								
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">지번 주소</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="placeLot" placeholder="Lot Address">
									</div>
								</div>
								
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">장소 전화번호</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="placeTel" placeholder="Phone" >
									</div>
								</div>
								
								
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">공연기간</label>
									<div class="col-md-8">
										<input type="text" class="form-control mr-3" name="productStartDate" placeholder="YYYYMMdd" style="width:40%; float:left">
										<span class="align-bottom pl-4">
											~
										</span> 
										<input type="text" class="form-control" name="productEndDate" placeholder="YYYYMMdd" style="width:40%; float:right">
									</div>
								</div>
			
								<div class="row form-group">
									<label class="col-md-3 col-form-label pr-0">공연 날짜/회차</label>
									<div class="col-md-8">
										<textarea class="form-control" id="performTextArea" name="perform" placeholder="YYYY-mm-dd n회차  hh:mm" rows="5"></textarea>
									</div>
								</div>
								<div class="float-right mr-5">
									<button type="submit" class="btn btn-sm btn-outline-info mr-2">공연 등록</button>
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
</html>