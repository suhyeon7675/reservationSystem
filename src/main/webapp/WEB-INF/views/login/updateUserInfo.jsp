<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<jsp:include page="/WEB-INF/views/header.jsp" />
	<div class="container" style="margin-top:4%; margin-bottom:4%">
		<div class="row">
			<div class="col-md-8 mx-auto">
				<div class="card border-success">
					<div class="card-body p-5">
						<h3 class="card-title text-center py-4">MY PAGE</h3>
						<form id="updateUserForm" method="post">
							<div class="row form-group">
								<label for="userId" class="col-md-3 col-form-label pr-0">아이디</label>
								<div class="col-md-8">
									<input type="text" id="userId" name="userId" class="form-control" value="${member.userId}" readonly="readonly" style="text-align:center"/>
								</div>
							</div>
							<div class="row form-group">
								<label for="oldUserPassword" class="col-md-3 col-form-label pr-0">새 비밀번호</label>
								<div class="col-md-8">
									<input type="password" id="newUserPassword1" name="newUserPassword1" class="form-control" style="text-align:center"/>
								</div>
							</div>
							<div class="row form-group">
								<label for="newdUserPassword" class="col-md-3 col-form-label pr-0">새 비밀번호 확인</label>
								<div class="col-md-8">
									<input type="password" id="newUserPassword2" name="userPassword" class="form-control" style="text-align:center; float:left"/>
									<button class="btn btn-outline-info btn-sm" id="passbtn" type="submit" formaction="/updateUserPassword" style="float:right">변경</button>
								</div>
							</div>
							<div class="row form-group">
								<label for="userName" class="col-md-3 col-form-label pr-0">이름</label>
								<div class="col-md-8">
									<input type="text" id="userName" name="userName" class="form-control" value="${member.userName}" readonly="readonly" style="text-align:center"/>
								</div>
							</div>
							<div class="row form-group">
								<label for="userPhone" class="col-md-3 col-form-label pr-0">전화번호</label>
								<div class="col-md-8">
									<input type="text" id="usePhone" name="userPhone" class="form-control" value="${member.userPhone}" readonly="readonly" style="text-align:center"/>
								</div>
							</div>
							<div class="row form-group">
								<label for="userAddress" class="col-md-3 col-form-label pr-0">주소</label>
								<div class="col-md-8">
									<input type="text" id="userAddress" name="userAddress" class="form-control" value="${member.userAddress}" style="text-align:center; float:left"/>
									<button class="btn btn-outline-info btn-sm" id="passbtn" type="submit" formaction="/updateUserAddress" style="float:right">변경</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
$("#updateUserForm").submit(function(e){
	var userPw = $("#newUserPassword1").val();
	var userPw2 = $("#newUserPassword2").val();
	
	if(userPw != userPw2){
		alert("비밀번호를 서로 동일하게 입력해주세요.");
		return false;
	}
	alert("정보 수정이 완료되었습니다.");
	location.href="/";
});
</script>
</html>