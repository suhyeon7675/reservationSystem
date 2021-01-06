<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/header.jsp" />
<div class="container">
	<p class="h3 ml-5"><strong>좌석 선택</strong></p>
	<p class="h1 text-center mt-5 text-info">STAGE</p>
	<div class="row">
		<div class="mx-auto border-top border-info">
			<form id="seatForm" action="/reserveComplete" method="POST">
				<div class="card border-0 my-5">
					<div class="card-body my-4 border-0">
						<input type="hidden" name="userId" value="${member.userId}">
						<input type="hidden" name="productNo" value="${productNo}">
						<input type="hidden" name="performanceNo" value="${performanceNo}">
						<input type="hidden" name="placeNo" value="${placeNo}">
						<c:forEach var="seat" items="${seatList}">
							<c:if test="${seat.seatStatus == 1}">
								<label class="btn btn-big btn-outline-success" for="${seat.seatNo}">${seat.seatNo}
									<input type="checkbox" id="seatCheck" name="seatCheck" autocomplete="off" value="${seat.seatNo}" onclick="oneCheckBox(this)">
								</label>
							</c:if>
							<c:if test="${seat.seatStatus == 0}">
								<label class="btn btn-big btn-secondary" for="${seat.seatNo}">${seat.seatNo}
									<input type="checkbox" autocomplete="off" value="${seat.seatNo}" disabled>
								</label>
							</c:if>
						</c:forEach>
					</div>
				</div>
				<div class="contatiner">
					<button type="submit" class="btn btn-sm btn-outline-success float-right mr-3" id="btnSubmit">결제</button>
					<button type="button" class="btn btn-sm btn-outline-info float-right mr-2" id="btnCancel" onclick="location.href='/'">취소</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- 모달 : 좌석 확인 -->
<!-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="myModalLabel">좌석 선택 확인</h5>
				<h4 class="modal-title" id="myModalLabel">예약한 좌석은 변경할 수 없으니 신중히 선택해주세요.</h4>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body" id=modal_comfirmBody>
				좌석번호 : 
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" onclick="submitOk();">Save changes</button>
			</div>
		</div>
	</div>
</div>   -->
</body>
<script>
	function oneCheckBox(a){
		var obj = document.getElementsByName("seatCheck");
		for(var i=0; i<obj.length; i++){
			if(obj[i] != a)
				obj[i].checked = false;
		}
	}
	
</script>
</html>