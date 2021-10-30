<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Document</title>
   <link rel="stylesheet" href="${contextPath}/resources/assets/css/album_detail.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
   <div class="container">
      <h1 class="album-title">My Album</h1>
      <div class="image-detail__conent">
         <div class="image-detail">
            <div class="image-detail__img">
               <img src="${contextPath}/resources/assets/image/anh.jpg" alt="">
            </div>
            <div class="image-info">
               <div class="image-info__item">
                  <p class="image-info__title">Năm phát hành</p>
                  <input type="text">
               </div>
               <div class="image-info__item">
                  <p class="image-info__title">Mô tả chi tiết</p>
                  <textarea name="" id="" cols="30" rows="10"></textarea>
               </div>
            </div>
         </div>

         <div class="album-btn">
            <button class="btn js-album-btn album-btn__add">Thêm</button>
            <button class="btn js-album-btn album-btn__update">Sửa</button>
            <button class="btn js-album-btn album-btn__del">Xóa</button>
         </div>
         <div class="album">
            <div class="album-image">
               <h2 class="album-image__title">Ảnh của tôi</h2>
               <div class="album-image__content">
               <c:forEach items="${listAnh}" var="image" varStatus="s">
                  <img src="${contextPath}/user-photos/${image.anh}" alt="" class="album-img">
               </c:forEach>   
               </div>d
            </div>

            <div class="album-video">
               <h2 class="album-video__title">Video của tôi</h2>
               <div class="album-video__content">
                  <video src=""></video>
               </div>
            </div>
         </div>
      </div>
   </div>

   <div class="js-modal modal">
      <div class="js-modal-container modal-container">
         <div class="js-modal-close modal-close">
            <i class="fas fa-times"></i>
         </div>
         <header class="modal-header">
            <i class="far fa-images"></i>My Album
         </header>
		<form:form id="anh_detail" class="well form-horizontal" modelAttribute="image" onsubmit="return validateImage()"
									action="/save/anh" method="POST" enctype="multipart/form-data">
         <div class="modal-body">
            <label for="quantity" class="modal-label">
               <i class="fas fa-shopping-cart"></i>
               Năm phát hành <c:out value="${album.nam}"></c:out>
            </label>
            <form:input type="number" path="id" class="form-control" id="id" />
            <label for="ticket-email" class="modal-label">
               <i class="fas fa-link"></i>
               Ảnh/video đính kèm
            </label>
            <form:input name="anh" type="file"  path="anh"
				require="true" style="margin-left: 16px" id="imageFile"/>

            <button class="buy-tickets">Submit <i class="fas fa-check"></i></button>
         </div>
         </form:form>
         <footer class="modal-footer">
            <p class="modal-help">Need <a href="https://www.facebook.com/profile.php?id=100038791955293">help?</a></p>
         </footer>
      </div>
   </div>

   <script src="${contextPath}/resources/assets/js/album_detail.js"></script>

</body>
</html>