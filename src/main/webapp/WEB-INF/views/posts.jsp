<%@ page contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<%@page import="com.mycompany.myapp.board.BoardDAO, com.mycompany.myapp.board.BoardVO, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>MeokGo</title>
<style>
	.bd-placeholder-img {
		font-size: 1.125rem;
		text-anchor: middle;
		-webkit-user-select: none;
		-moz-user-select: none;
		user-select: none;
	}

	@media (min-width: 768px) {
		.bd-placeholder-img-lg {
			font-size: 3.5rem;
		}
	}

	.mbg{
		background-color: rgba(255, 104, 47, 0.96);
	}

	.btn-sm:hover{
		background-color: #dddddd;
	}

	#br{
		ext-align: center;
		font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
		sans-serif;
		font-size: 50pt;
		font-weight: bold;
		color: #ff7e1d;
		text-shadow: 1px 3px 3px rgba(194, 54, 3, 0.96);
	}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
<header>
	<div class="navbar navbar-dark mbg box-shadow">
		<div class="container d-flex justify-content-between" onclick="location.href='list';">
			<a href="#" class="navbar-brand d-flex align-items-center">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-egg-fried" viewBox="0 0 16 16">
					<path d="M8 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
					<path d="M13.997 5.17a5 5 0 0 0-8.101-4.09A5 5 0 0 0 1.28 9.342a5 5 0 0 0 8.336 5.109 3.5 3.5 0 0 0 5.201-4.065 3.001 3.001 0 0 0-.822-5.216zm-1-.034a1 1 0 0 0 .668.977 2.001 2.001 0 0 1 .547 3.478 1 1 0 0 0-.341 1.113 2.5 2.5 0 0 1-3.715 2.905 1 1 0 0 0-1.262.152 4 4 0 0 1-6.67-4.087 1 1 0 0 0-.2-1 4 4 0 0 1 3.693-6.61 1 1 0 0 0 .8-.2 4 4 0 0 1 6.48 3.273z"/>
				</svg>
				<strong style="margin-left: 5px">먹Go</strong>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</div>
</header>

<section class="py-5 text-center container">
	<div class="row py-lg-5">
		<div class="col-lg-6 col-md-8 mx-auto">
			<h1 id="br">맛집 리뷰</h1>
			<br>
			<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="https://img.hankyung.com/photo/202211/01.31816498.1.jpg" class="d-block w-100">
					</div>
					<div class="carousel-item">
						<img src="https://foodshop.co.kr/shopimages/cookey01/033002001427.jpg?1561010704" class="d-block w-100">
					</div>
					<c:forEach items="${list}" var="u">
						<div class="carousel-item">
							<img class="d-block w-100" style="height: 600px" src="# <%--${pageContext.request.contextPath}/upload/${u.getPhoto()} --%>">
						</div>
					</c:forEach>
				</div>
				<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
			<br>
			<br>
			<a href="add" class="btn btn-outline-success">음식 리뷰쓰기</a>
			</p>
		</div>
	</div>
</section>

<div class="album py-5 bg-light">
	<div class="container">
		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			<c:forEach items="${list}" var="u" varStatus="status">
				<div class="col">
					<div class="card shadow-sm">
						<img width="inherit" height="440px" src="# <%--${pageContext.request.contextPath}/upload/${u.getPhoto()} --%>">
						<div class="card-body">
							<h5>${u.fdname}</h5>
							<p>
								<svg style="margin: 0; color: #ffde00" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
									<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
								</svg>
								<span style="margin-top: 10px">${u.star}</span>
							</p>
							<p class="card-text" style="height: 30px; overflow: hidden;">${u.writer}</p>
							<div class="d-flex justify-content-center align-items-center" style="margin-bottom: 30px;">
								<button type="button" class="btn btn-outline-primary"><a id="review" href="review/${u.seq}" style="color: #001897; text-decoration: none; font-weight: 800;">Review</a></button>
							</div>
							<div class="d-flex justify-content-between align-items-center">
								<small class="text-muted">카테고리 - ${u.category}</small>
								<div class="btn-group" style="border-radius: 3px;">
									<button id="edit" type="button" class="btn btn-sm btn-outline-secondary" style="border: none;"><a href="editform/${u.seq}" style="color: rgba(255,104,47,0.96); text-decoration: none; font-weight: 800;">수정</a></button>|
									<button id="del" type="button" class="btn btn-sm btn-outline-secondary" style="color: black; font-weight: 800; border: none;" onClick="javascript:delete_ok('${u.seq}')">삭제</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<br/>

<footer class="text-muted">
	<div class="container">
		<p>HGU MeokGo © project</p>
		<p>Food Review website service</p>
	</div>
</footer>
</body>
</html>