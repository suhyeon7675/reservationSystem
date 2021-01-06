<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>

<jsp:include page="/WEB-INF/views/header.jsp" />
	<div id="join">
	<div class="row justify-content-center">
		<div class="col-md-4 py-5" style="margin-top:3%">
			<div class="card border-success">
				<div class="card-body">
					<h3 class="text-center pb-4">회원가입</h3>
					<div>
						<form id="registerForm" action="/register" method="post">
							<div class="row form-group">
								<label for="userId" class="col-md-3 col-form-label pr-0">아이디</label>
								<div class="col-md-9">
									<input type="text" id="userId" name="userId" class="form-control" required />
								</div>
							</div>
							<div class="row form-group">
								<label for="userPw" class="col-md-3 col-form-label pr-0">비밀번호</label>
								<div class="col-md-9">
									<input type="password" id="userPw" name="userPassword"class="form-control" required />
								</div>
							</div>
							<div class="row form-group">
								<label for="userPw2" class="col-md-3 col-form-label pr-0">비밀번호 확인</label>
								<div class="col-md-9">
									<input type="password" id="userPw2" class="form-control" required />
								</div>
							</div>
							<div class="row form-group">
								<label for="userName" class="col-md-3 col-form-label pr-0">이름</label>
								<div class="col-md-9">
									<input type="text" id="userName" name="userName" class="form-control" required />
								</div>
							</div>
							<div class="row form-group">
								<label for="userPhone" class="col-md-3 col-form-label pr-0">휴대폰 번호</label>
								<div class="col-md-9">
									<input type="text" id="userPhone" name="userPhone" class="form-control" required />
								</div>
							</div>
							<div class="row form-group">
								<label for="userAddress" class="col-md-3 col-form-label pr-0">주소</label>
								<div class="col-md-9">
									<input type="text" id="userAddress" name="userAddress" class="form-control" required />
								</div>
							</div>
							<div class="float-right">
								<button class="btn btn-outline-success" type="submit">회원가입</button>
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
	$("#registerForm").submit(function(e){
		var userPw = $("#userPw").val();
		var userPw2 = $("#userPw2").val();

		if(userPw != userPw2){
			alert("비밀번호를 서로 동일하게 입력해주세요.");
			return false;
		}
		
		$.ajax({
			type : "POST",
			url : "/register",
			data : $("#registerForm").serialize(),
			success : function(response){
				if(response.overlapUserId){
					alert("중복되는 아이디입니다.");
					return false;
				}
				alert("회원가입에 성공헀습니다.");
				location.href = "/";
			}			
		});
		return false;
	});
</script>
</html>