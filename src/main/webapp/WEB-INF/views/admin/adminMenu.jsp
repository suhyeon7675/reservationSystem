<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>

<jsp:include page="/WEB-INF/views/header.jsp" />
	<div class="container" style="margin-top:10%">
		<div class="row">
			<div class="col-sm-4 mx-auto">
				<div class="card border-success">
					<div class="card-body">
						<h3 class="card-title text-center pb-3 pt-3">관리자 메뉴</h3>
						<div class="btns pt-4 pb-3 text-center">
							<button type="button" class="btn btn-outline-info btn-sm" id="userbtn" onclick="location.href='/admin/member'">회원관리</button>
							<button type="button" class="btn btn-outline-info btn-sm mx-2" id="productbtn" onclick="location.href='/prductList?productCategory=1'">공연관리</button>
							<button type="button" class="btn btn-outline-info btn-sm" id="reservationbtn" onclick="location.href='/admin/reservation'">예매관리</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>