<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Memory Web</title>
<link rel="stylesheet"
	href="${contextPath}/resources/assets/css/reset.css" />
<link rel="stylesheet"
	href="${contextPath}/resources/assets/css/base.css" />
<link rel="stylesheet"
	href="${contextPath}/resources/assets/css/style.css" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
</head>
<body>
	<div class="app">
		<aside class="aside">
			<a class="aside__logo" href="/"> <img class="aside__img"
				src="${contextPath}/resources/assets/image/camera.png" alt="logo" />
				<h2>Memory Web</h2>
			</a>
			<ul class="aside__list">
				<li class="aside__item"><a href="/trangchu"
					class="aside__item-link">Trang
						chủ</a></li>
				<li class="aside__item"><a href="/display/album"
					class="aside__item-link">Bộ sưu
						tập</a></li>
				<li class="aside__item"><a href="about.jsp"
					class="aside__item-link">Về chúng
						tôi</a></li>
				<li class="aside__item"><a href="blog.jsp"
					class="aside__item-link">Bài viết</a>
				</li>
				<li class="aside__item"><a href="contact.jsp"
					class="aside__item-link">Liên hệ</a>
				</li>
			</ul>
			<div class="aside__contact">
				<h3>Follow Us Here!</h3>
				<ul class="aside__contact-list">
					<li class="aside__contact-list-item"><a href="#"><i
							class="
                                        contact-icon
                                        fab
                                        fa-facebook-f
                                        text-decoration-none
                                    "></i></a>
					</li>
					<li class="aside__contact-list-item"><a href="#"><i
							class="contact-icon fab fa-twitter"></i></a></li>
					<li class="aside__contact-list-item"><a href="#"><i
							class="contact-icon fab fa-instagram"></i></a></li>
				</ul>
			</div>
		</aside>
		<div class="wapper">
			<div class="content">
				<!-- Button trigger modal -->
				<div class="new-ablum" data-toggle="modal"
					data-target="#exampleModal">
					<h4>Thêm ablum</h4>
					<i class="fas fa-plus-circle"></i>
				</div>
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalLabel"
					aria-hidden="true" style="font-size: 2rem">
					<div class="modal-dialog" role="document">
						<div class="modal-content" style="border-radius: 10px">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel"
									style="font-size: 3rem">
									Nhập thông tin album mới</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close" style="font-size: 4rem">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form:form id="album" class="well form-horizontal" modelAttribute="album" onsubmit="return validateImage()"
									action="/save/album" method="POST" enctype="multipart/form-data">
									<div class="form-group">
										<label name="id" for="recipient-name" class="col-form-label">ID:</label>
										<form:input type="number" path="id" class="form-control" id="id" />
									</div>
									<div class="form-group">
										<label name="nam" for="recipient-name" class="col-form-label">Năm:</label>
										<form:input type="text" path="nam" class="form-control" id="recipient-name" />
									</div>
                                    <div class="form-group">
                                        <label name="nam" for="recipient-name" class="col-form-label">Tên Album:</label>
                                        <form:input type="text" path="name_abulm" class="form-control" id="recipient-name" />
                                    </div>
									<div class="form-group">
										<label name="infor" for="message-text" class="col-form-label">Mô
											tả:</label>
										<form:textarea class="form-control" path="infor" id="message-text" rows="5"></form:textarea>
									</div>
									<div class="form-group">
										<label for="message-text" class="col-form-label">Chọn
											ảnh:</label> <form:input name="anh" type="file"  path="anh"
											require="true" style="margin-left: 16px" id="imageFile"/>
											<img src="/user-photos/anh.png" width="150px" height="100px" style="margin-left: 16px; margin-top: 5px;" id="imageShowAnh">
									</div>
									


							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal" style="font-size: 1.8rem"
									onclick="return confirm('Bạn chắc chắn muốn ngừng thực hiện tác vụ không ?')">
									Close</button>
								<button type="submit" class="btn btn-primary"
									style="font-size: 1.8rem">
									Save changes</button>
							</div>
							</form:form>
                            </div>
						</div>
					</div>
				</div>
				<div class="album">
					<h4>Danh sách các Album của bạn</h4>
					<div class="album-list gird mt-2">
						<div class="row">
							<c:forEach items="${listAlbum}" var="album" varStatus="s">
								<div class="col-4">
									<div class="album-item">
										<div class="card" style="width: 100%">
											<img src="/user-photos/${album.anh}" alt="anh" width="250px"
												height="120px">
											<div class="card-body">
												<h5
													class="
                                                        card-title
                                                        album-year
                                                    ">
													<c:out value="${album.nam}" />
												</h5>
												<p
													class="
                                                        card-text
                                                        album-description
                                                    ">
													<c:out value="${album.infor}" />
												</p>
												<a href="/album_detail"
													class="
                                                        btn btn-primary
                                                        album-show
                                                    ">Xem
													Album</a>
											</div>
											<div style="margin-left: 5px; width: 40%; float: left;">
												<spring:url value="/album/${album.id}/edit" var="editURL" />
												<a href="${editURL}" style="font-size: 25px;"><i
													class="glyphicon glyphicon-pencil"></i></a>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>

			<div class="footer">
				<div class="gird">
					<div class="row">
						<div class="col-4 footer-item">
							<h1 class="footer_title">Category</h1>
							<ul class="categoryt-list">
								<li class="category-item"><a href="#" class="category-link">Photography
										<span class="category-count">(6)</span>
								</a></li>
								<li class="category-item"><a href="#" class="category-link">Fashion
										<span class="category-count">(8)</span>
								</a></li>
								<li class="category-item"><a href="#" class="category-link">Technology
										<span class="category-count">(2)</span>
								</a></li>
								<li class="category-item"><a href="#" class="category-link">Travel
										<span class="category-count">(2)</span>
								</a></li>
							</ul>
						</div>
						<div class="col-4">
							<h1 class="footer_title">Archives</h1>
							<ul class="categoryt-list">
								<li class="category-item"><a href="#" class="category-link">November
										2018 <span class="category-count">(105)</span>
								</a></li>
								<li class="category-item"><a href="#" class="category-link">October
										2018 <span class="category-count">(212)</span>
								</a></li>
								<li class="category-item"><a href="#" class="category-link">September
										2018 <span class="category-count">(150)</span>
								</a></li>
								<li class="category-item"><a href="#" class="category-link">August
										2018 <span class="category-count">(100)</span>
								</a></li>
								<li class="category-item"><a href="#" class="category-link">July
										2018 <span class="category-count">(200)</span>
								</a></li>
							</ul>
						</div>
						<div class="col-4 question">
							<h1 class="footer_title">Have a Questions?</h1>
							<ul class="question-list">
								<li class="question-item"><i
									class="
                                                question-icon
                                                fas
                                                fa-map-marker-alt
                                            "></i>
									<span class="question-info" style="color: #849291">203
										Fake St. Mountain View, San Francisco, California, USA</span></li>
								<li class="question-item"><i
									class="question-icon fas fa-phone"></i>
									<span class="question-info"> +2 392 3929 210 </span></li>
								<li class="question-item"><i
									class="
                                                question-icon
                                                fas
                                                fa-envelope
                                            "></i>
									<span class="question-info">info@yourdomain.com</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
<script>
	function validateImage() {
		var image = document.getElementById("imageFile");
		if (image.files.length == 0){
			alert("Bạn chưa chọn ảnh cho item !");
			return false;
		}else{
			return true;
		}
	}
</script>
</html>
