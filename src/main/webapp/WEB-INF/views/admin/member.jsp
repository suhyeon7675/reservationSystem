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
		                    <h1 style="text-align:center" class="card-title pb-4 pt-4">MEMBER LIST</h1>
		                    <table class="table">
		                        <thead>
		                            <tr class="text-center">
		                                <th class="column1">ID</th>
		                                <th class="column2">이름</th>
		                                <th class="column3">전화번호</th>
		                                <th class="column4">주소</th>
		                                <th class="column5">삭제</th>
		                            </tr>
		                        </thead>
		                        <tbody>
			                        <c:choose>
										<c:when test="${empty memberList}">
											<tr>
												<td colspan="8" style="text-align: center; height: 35px;">회원 목록 없음</td>
											</tr>
										</c:when>
										<c:when test="${!empty memberList}">
											<c:forEach var="mem" items="${memberList}">
												<tr class="text-center">
													<td class="column1"><c:out value="${mem.userId}"/></td>
													<td class="column2"><c:out value="${mem.userName}"/></td>
													<td class="column3"><c:out value="${mem.userPhone}"/></td>
													<td class="column4"><c:out value="${mem.userAddress}"/></td>
													<td class="column5"><button type="button" class="btn btn-sm btn-outline-info" id="btnDelete" onclick="deleteUserCheck('${mem.userId}')">회원삭제</button></td>
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
	function deleteUserCheck(userId){
			if(confirm("회원을 삭제하시겠습니까?")){
				alert("회원이 삭제되었습니다.")
				location.href = "/admin/userDelete?userId=" + userId;
			}
		}
</script>
</html>