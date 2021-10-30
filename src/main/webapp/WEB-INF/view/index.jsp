<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Memory Web</title>
        <link rel="stylesheet" href="./resources/assets/css/reset.css" />
        <link rel="stylesheet" href="./resources/assets/css/base.css" />
        <link rel="stylesheet" href="./resources/assets/css/style.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap"
            rel="stylesheet"
        />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
            integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
        />
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous"
        />
    </head>
    <body>
    	<a class="btn btn-primary" href="/registration" role="button">Đăng Kí</a>
        <a class="btn btn-primary" href="/login" role="button">Đăng Nhập</a>
        <div class="app">
            <aside class="aside">
                <a class="aside__logo" href="/">
                    <img
                        class="aside__img"
                        src="resources/assets/image/camera.png"
                        alt="logo"
                    />
                    <h2>Memory Web</h2>
                </a>
                <ul class="aside__list">
                    <li class="aside__item">
                        <a href="/trangchu" class="aside__item-link"
                            >Trang chủ</a
                        >
                    </li>
                    <li class="aside__item">
                        <a href="/display/album" class="aside__item-link"
                            >Bộ sưu tập</a
                        >
                    </li>
                    <li class="aside__item">
                        <a href="#" class="aside__item-link">Về chúng tôi</a>
                    </li>
                    <li class="aside__item">
                        <a href="#" class="aside__item-link">Bài viết</a>
                    </li>
                    <li class="aside__item">
                        <a
                            href="#"
                            class="aside__item-link text-decoration-none"
                            >Liên hệ</a
                        >
                    </li>
                </ul>
                <div class="aside__contact">
                    <h3>Follow Us Here!</h3>
                    <ul class="aside__contact-list">
                        <li class="aside__contact-list-item">
                            <a href="#"
                                ><i
                                    class="
                                        contact-icon
                                        fab
                                        fa-facebook-f
                                        text-decoration-none
                                    "
                                ></i
                            ></a>
                        </li>
                        <li class="aside__contact-list-item">
                            <a href="#"
                                ><i class="contact-icon fab fa-twitter"></i
                            ></a>
                        </li>
                        <li class="aside__contact-list-item">
                            <a href="#"
                                ><i class="contact-icon fab fa-instagram"></i
                            ></a>
                        </li>
                    </ul>
                </div>
                <div class="aside__btn-content">
                    <p class="aside__btn aside__btn-login">
                       <a href="/login" style="text-decoration:none;">Đăng nhập</a> 
                    </p>
                    <p class="aside__btn aside__btn-registry">
                        <a href="/registration" style="text-decoration:none;">Đăng ký</a>
                    </p>
                </div>
            </aside>
            <div class="wapper">
                <div class="content">
                    <div
                        id="carouselExampleIndicators"
                        class="carousel slide container"
                        data-ride="carousel"
                    >
                        <ol class="carousel-indicators">
                            <li
                                data-target="#carouselExampleIndicators"
                                data-slide-to="0"
                                class="active"
                            ></li>
                            <li
                                data-target="#carouselExampleIndicators"
                                data-slide-to="1"
                            ></li>
                            <li
                                data-target="#carouselExampleIndicators"
                                data-slide-to="2"
                            ></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img
                                    class="d-block w-100"
                                    src="resources/assets/image/thumbnail1.jpg"
                                    alt="First slide"
                                />
                            </div>
                            <div class="carousel-item">
                                <img
                                    class="d-block w-100"
                                    src="resources/assets/image/thumbnail2.jpg"
                                    alt="Second slide"
                                />
                            </div>
                            <div class="carousel-item">
                                <img
                                    class="d-block w-100"
                                    src="resources/assets/image/thumbnail3.jpg"
                                    alt="Third slide"
                                />
                            </div>
                        </div>
                        <a
                            class="carousel-control-prev"
                            href="#carouselExampleIndicators"
                            role="button"
                            data-slide="prev"
                        >
                            <span
                                class="carousel-control-prev-icon"
                                aria-hidden="true"
                            ></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a
                            class="carousel-control-next"
                            href="#carouselExampleIndicators"
                            role="button"
                            data-slide="next"
                        >
                            <span
                                class="carousel-control-next-icon"
                                aria-hidden="true"
                            ></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <div class="footer">
                    <div class="gird">
                        <div class="row">
                            <div class="col-4 footer-item">
                                <h1 class="footer_title">Category</h1>
                                <ul class="categoryt-list">
                                    <li class="category-item">
                                        <a href="#" class="category-link"
                                            >Photography
                                            <span class="category-count"
                                                >(6)</span
                                            >
                                        </a>
                                    </li>
                                    <li class="category-item">
                                        <a href="#" class="category-link"
                                            >Fashion
                                            <span class="category-count"
                                                >(8)</span
                                            >
                                        </a>
                                    </li>
                                    <li class="category-item">
                                        <a href="#" class="category-link"
                                            >Technology
                                            <span class="category-count"
                                                >(2)</span
                                            >
                                        </a>
                                    </li>
                                    <li class="category-item">
                                        <a href="#" class="category-link"
                                            >Travel
                                            <span class="category-count"
                                                >(2)</span
                                            >
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-4">
                                <h1 class="footer_title">Archives</h1>
                                <ul class="categoryt-list">
                                    <li class="category-item">
                                        <a href="#" class="category-link"
                                            >November 2018
                                            <span class="category-count"
                                                >(105)</span
                                            >
                                        </a>
                                    </li>
                                    <li class="category-item">
                                        <a href="#" class="category-link"
                                            >October 2018
                                            <span class="category-count"
                                                >(212)</span
                                            >
                                        </a>
                                    </li>
                                    <li class="category-item">
                                        <a href="#" class="category-link"
                                            >September 2018
                                            <span class="category-count"
                                                >(150)</span
                                            >
                                        </a>
                                    </li>
                                    <li class="category-item">
                                        <a href="#" class="category-link"
                                            >August 2018
                                            <span class="category-count"
                                                >(100)</span
                                            >
                                        </a>
                                    </li>
                                    <li class="category-item">
                                        <a href="#" class="category-link"
                                            >July 2018
                                            <span class="category-count"
                                                >(200)</span
                                            >
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-4 question">
                                <h1 class="footer_title">Have a Questions?</h1>
                                <ul class="question-list">
                                    <li class="question-item">
                                        <i class="question-icon fas fa-map-marker-alt"></i>
                                        <span class="question-info"
                                        style="color: #849291"
                                            >203 Fake St. Mountain View, San
                                            Francisco, California, USA</span
                                        >
                                    </li>
                                    <li class="question-item">
                                        <i class="question-icon fas fa-phone"></i>
                                        <span class="question-info"> +2 392 3929 210 </span>
                                    </li>
                                    <li class="question-item">
                                        <i class="question-icon fas fa-envelope"></i>
                                        <span class="question-info">info@yourdomain.com</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script
            src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
