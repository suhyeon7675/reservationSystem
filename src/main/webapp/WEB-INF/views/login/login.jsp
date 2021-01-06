<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<jsp:include page="/WEB-INF/views/header.jsp" />
	<div class="container" style="margin-top:10%">
		<div class="row">
			<div class="col-sm-4  mx-auto">
				<div class="card border-success">
					<div class="card-body">
						<h3 class="card-title text-center pb-4">Sign in</h3>
						<form id="loginForm" action="/loginPost" method="post">
							<div class="form-group">
								<input type="text" class="form-control" id="inputId" name="userId" placeholder="ID" required />
							</div>
							<div class="form-group">
								<input type="password" class="form-control" id="inputPassword" name="userPassword" placeholder="Password" required />
							</div>
							<div class="btns float-right">
								<button class="btn btn-outline-info btn-sm" id="loginbtn" type="submit" >로그인</button>
								<button class="btn btn-outline-success btn-sm" id="joinbtn" type="button" onclick="location.href='/register'" >회원가입</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
	$("#loginForm").submit(function(){
		$.ajax({
			method : "post",
			url : "/loginPost",
			data : $("#loginForm").serialize(),
			success : function(response){
				if(response.notFoundAccount){
					alert("아이디와 비밀번호를 확인해주세요.");
					return false;
				}

				location.href = "/";
			},
			error:function(){
				alert("error");
			}
		});
		
		return false;
	});
</script>
</body>
</html>