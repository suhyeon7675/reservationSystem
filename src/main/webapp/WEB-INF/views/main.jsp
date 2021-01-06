<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/header.jsp" />
<style>

</style>
		<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
			    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		    </ol>
		    <div class="carousel-inner">
		    	<div class="carousel-item active">
			        <img src="/resources/images/rach.png" class="d-block w-100" alt="...">
			        <div class="carousel-caption d-none d-md-block">
			          <h5>라흐마니노프</h5>
			          <p>2020.05.11 ~ 2020.08.13 예스24스테이지 1관</p>
		        	</div>
		      	</div>
		      	<div class="carousel-item">
		        	<img src="/resources/images/opera.png" class="d-block w-100" alt="...">
		        	<div class="carousel-caption d-none d-md-block">
		          		<h5>오페라의 유령</h5>
		          		<p>2020.04.14 ~ 2020.06.27 블루스퀘어 인터파크홀</p>
		        	</div>
		      	</div>
		      	<div class="carousel-item">
		        	<img src="/resources/images/mid.png" class="d-block w-100" alt="...">
		        	<div class="carousel-caption d-none d-md-block">
		          		<h5>미드나잇</h5>
		          		<p>2020.04.11 ~ 2020.06.28 예스24스테이지 3관</p>
		        	</div>
		      	</div>
		    </div>
		    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
		      	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		      	<span class="sr-only">Previous</span>
		    </a>
		    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
		    </a>
		</div>


</body>
</html>