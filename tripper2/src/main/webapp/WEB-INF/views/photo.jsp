<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<html lang="en">
    <head>
    <meta charset='utf-8' />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Pixel | Agency - Responsive Multipurpose HTML5 Template">
<meta name="keywords" content="Pixel">
<meta name="author" content="rkwebdesigns">
        <title>jQuery lightGallery demo</title>
        <!-- Fav Icons   -->
<link rel="icon" href="resources/images/favicon.ico" type="image/x-icon">
<!-- Bootstrap -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap-dropdownhover.min.css"
	rel="stylesheet">
	<!-- Fonts Awesome -->
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,800italic,800,600italic,600,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
	<!-- animate Effect -->
<link href="resources/css/animate.css" rel="stylesheet">
<!-- OWL CSS -->
<link href="resources/css/owl.carousel.css" rel="stylesheet">
<!-- Main CSS -->
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive CSS -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Skins Style-->
<link rel="stylesheet" type="text/css"
	href="resources/css/skins/blue.css" title="blue" media="all" />
<link href="resources/css/search.css" rel="stylesheet">
<link href="resources/SRC2/lightgallery/dist/css/lightgallery.css"
	rel="stylesheet">
<link href="resources/SRC2/lightgallery/dist/css/photo.css"
	rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    </head>
    <body class="home">
<header id="header" class="head">
		<div class="top-header">
			<div class="container">
				<div class="row ">
					<ul class="contact-detail2 col-sm-6 pull-left">
						<li><a href="#" target="_blank"><i class="fa fa-mobile"></i>${sessionScope.phonenum}</a></li>
						<li><a href="#" target="_blank"><i
								class="fa fa-envelope-o"></i> ${sessionScope.email}</a></li>
					</ul>
					<div class="social-links col-sm-6 pull-right">
						<ul class="social-icons pull-right">
							<li><a href="http://facebook.com" target="_blank"><i
									class="fa fa-facebook"></i></a></li>
							<li><a href="http://twitter.com" target="_blank"><i
									class="fa fa-twitter"></i></a></li>
							<li><a href="http://pinterest.com" target="_blank"><i
									class="fa fa-pinterest"></i></a></li>
							<li><a href="http://dribble.com/" target="_blank"><i
									class="fa fa-skype"></i></a></li>
							<li><a href="http://pinterest.com" target="_blank"><i
									class="fa fa-dribbble"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-default navbar-1">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="main">
						<div class="logo-text">
							<span><samp>HT</samp>Holo</span>Tripper
						</div>
					</a>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1" data-hover="dropdown"
					data-animations="fadeIn">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="main">Home</a></li>
						<li><a href="other.do">See card </a></li>
						<li><a href="services.jsp">Services </a></li>
						<li class="dropdown active"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-expanded="false">명소 <span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="play">오락거리</a></li>
								<li><a href="food">음식점</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">Blog
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="blog-listing.jsp">Blog Listing</a></li>
								<li><a href="blog-details.jsp">Blog Details</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">내
								정보 <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="writeinfo">내 정보 수정</a></li>
								<li><a href="findpassword">비밀번호 변경</a></li>
								<li><a href="logout">로그아웃</a></li>
							</ul></li>
						<li><div class="d5">
								<form action="searchPost" method="get">
									<input type="text" placeholder="검색어 입력">
								</form>
							</div></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
	</header>
	<section id="inner-title" class="inner-title">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-6">
					<h2>오락거리 찾기</h2>
				</div>
				<div class="col-md-6 col-lg-6">
					<div class="breadcrumbs">
						<ul>
							<li>Current Page:</li>
							<li><a href="main">Home</a></li>
							<li><a href="#">Pages</a></li>
							<li><a href="#">명소</a></li>
							<li><a href="play">오락거리</a></li>
							<li><a href="#">현재글</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
        <div class="demo-gallery">
            <ul id="lightgallery" class="list-unstyled row">
                <li class="col-xs-6 col-sm-4 col-md-3" data-responsive="resources/SRC2/lightgallery/demo/img/1-375.jpg 375, resources/SRC2/lightgallery/demo/img/1-480.jpg 480, resources/SRC2/lightgallery/demo/img/1.jpg 800" data-src="resources/SRC2/lightgallery/demo/img/1-1600.jpg" data-sub-html="<h4>Fading Light</h4><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                    <a href="">
                        <img class="img-responsive" src="resources/SRC2/lightgallery/demo/img/thumb-1.jpg">
                    </a>
                </li>
                <li class="col-xs-6 col-sm-4 col-md-3" data-responsive="resources/SRC2/lightgallery/demo/img/2-375.jpg 375, resources/SRC2/lightgallery/demo/img/2-480.jpg 480, resources/SRC2/lightgallery/demo/img/2.jpg 800" data-src="resources/SRC2/lightgallery/demo/img/2-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                    <a href="">
                        <img class="img-responsive" src="resources/SRC2/lightgallery/demo/img/thumb-2.jpg">
                    </a>
                </li>
                <li class="col-xs-6 col-sm-4 col-md-3" data-responsive="resources/SRC2/lightgallery/demo/img/1-375.jpg 375, resources/SRC2/lightgallery/demo/img/1-480.jpg 480, resources/SRC2/lightgallery/demo/img/1.jpg 800" data-src="resources/SRC2/lightgallery/demo/img/1-1600.jpg" data-sub-html="<h4>Fading Light</h4><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                    <a href="">
                        <img class="img-responsive" src="resources/SRC2/lightgallery/demo/img/thumb-1.jpg">
                    </a>
                </li>
                <li class="col-xs-6 col-sm-4 col-md-3" data-responsive="resources/SRC2/lightgallery/demo/img/2-375.jpg 375, resources/SRC2/lightgallery/demo/img/2-480.jpg 480, resources/SRC2/lightgallery/demo/img/2.jpg 800" data-src="resources/SRC2/lightgallery/demo/img/2-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                    <a href="">
                        <img class="img-responsive" src="resources/SRC2/lightgallery/demo/img/thumb-2.jpg">
                    </a>
                </li>
                <li class="col-xs-6 col-sm-4 col-md-3" data-responsive="resources/SRC2/lightgallery/demo/img/1-375.jpg 375, resources/SRC2/lightgallery/demo/img/1-480.jpg 480, resources/SRC2/lightgallery/demo/img/1.jpg 800" data-src="resources/SRC2/lightgallery/demo/img/1-1600.jpg" data-sub-html="<h4>Fading Light</h4><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                    <a href="">
                        <img class="img-responsive" src="resources/SRC2/lightgallery/demo/img/thumb-1.jpg">
                    </a>
                </li>
                <li class="col-xs-6 col-sm-4 col-md-3" data-responsive="resources/SRC2/lightgallery/demo/img/2-375.jpg 375, resources/SRC2/lightgallery/demo/img/2-480.jpg 480, resources/SRC2/lightgallery/demo/img/2.jpg 800" data-src="resources/SRC2/lightgallery/demo/img/2-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                    <a href="">
                        <img class="img-responsive" src="resources/SRC2/lightgallery/demo/img/thumb-2.jpg">
                    </a>
                </li>
                <li class="col-xs-6 col-sm-4 col-md-3" data-responsive="resources/SRC2/lightgallery/demo/img/1-375.jpg 375, resources/SRC2/lightgallery/demo/img/1-480.jpg 480, resources/SRC2/lightgallery/demo/img/1.jpg 800" data-src="resources/SRC2/lightgallery/demo/img/1-1600.jpg" data-sub-html="<h4>Fading Light</h4><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                    <a href="">
                        <img class="img-responsive" src="resources/SRC2/lightgallery/demo/img/thumb-1.jpg">
                    </a>
                </li>
                <li class="col-xs-6 col-sm-4 col-md-3" data-responsive="resources/SRC2/lightgallery/demo/img/2-375.jpg 375, resources/SRC2/lightgallery/demo/img/2-480.jpg 480, resources/SRC2/lightgallery/demo/img/2.jpg 800" data-src="resources/SRC2/lightgallery/demo/img/2-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                    <a href="">
                        <img class="img-responsive" src="resources/SRC2/lightgallery/demo/img/thumb-2.jpg">
                    </a>
                </li>
            </ul>
        </div>
        <section id="footer-top" class="footer-top">
		<div class="container">
			<div class="row" id="row">
				<div class="col-md-3 col-lg-3">
					<div class="footer-top-box">
						<h4>About Us</h4>
						<p>저희는 공부를 열심히 할 것이며, 정당한 방법으로 수익을 높게 만들 것 입니다.</p>
					</div>
					<div class="footer-top-box">
						<h4>Office Hour</h4>
						<b>Mon-Fri :</b> 09am to 06pm <br /> <b> Weekend :</b> Special
						Appointment
					</div>
				</div>
				<div class="col-md-3 col-lg-3">
					<div class="footer-top-box">
						<h4>Latest Posts</h4>
						<ul>
							<li><a href="#">Lorem ipsum dolor sit amet</a></li>
							<li><a href="#">Eonsectetur adipisicing elit</a></li>
							<li><a href="#">Reader will be distracted </a></li>
							<li><a href="#">Special Video Demo</a></li>
							<li><a href="#">Itaque, optio corporis quae</a></li>
							<li><a href="#">Super developed template</a></li>
							<li><a href="#">It has many features</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-lg-3">
					<div class="footer-top-box">
						<h4>Tags</h4>
						<div class="tag">
							<a href="#">Construction</a>
						</div>
						<div class="tag">
							<a href="#">Joomla</a>
						</div>
						<div class="tag">
							<a href="#">Builder</a>
						</div>
						<div class="tag">
							<a href="#">Magento</a>
						</div>
						<div class="tag">
							<a href="#">Wordpress</a>
						</div>
						<div class="tag">
							<a href="#">Presta shop</a>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-lg-3">
					<div class="footer-top-box">
						<h4>Contact us</h4>
						<p>
							<b>Location : 10층</b> 디지털로 130, 서울특별시 금천구 <br /> <b>Call: </b>
							+82 10-2977-1539 <br /> <b>Mail: </b> donghyun1538@gmail.com
						</p>
					</div>
					<div class="footer-top-box">
						<h4>Subscribe</h4>
						<div class="cs-form">
							<form action="#" method="post">
								<div class="input-holder">
									<input type="email" placeholder="Enter Valid Email Address">
									<label> <i class="fa fa-location-arrow fa-2x"></i> <input
										class="submit-bgcolor" type="submit" value="submit">
									</label>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="footer-bottom" class="footer-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-lg-9">
					<div class="copyright">Copyright &copy; 2016. All Rights
						Reserved</div>
				</div>
				<div class="col-lg-3">
					<ul class="list-inline social-buttons">
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
        <script type="text/javascript">
        $(document).ready(function(){
            $('#lightgallery').lightGallery();
        });
        </script>
        <script src="resources/SRC2/lightgallery/lib/picturefill.min.js"></script>
        <script src="resources/SRC2/lightgallery/dist/js/lightgallery.js"></script>
        <script src="resources/SRC2/lightgallery/dist/js/lg-fullscreen.js"></script>
        <script src="resources/SRC2/lightgallery/dist/js/lg-thumbnail.js"></script>
        <script src="resources/SRC2/lightgallery/dist/js/lg-video.js"></script>
        <script src="resources/SRC2/lightgallery/dist/js/lg-autoplay.js"></script>
        <script src="resources/SRC2/lightgallery/dist/js/lg-zoom.js"></script>
        <script src="resources/SRC2/lightgallery/dist/js/lg-hash.js"></script>
        <script src="resources/SRC2/lightgallery/dist/js/lg-pager.js"></script>
        <script src="resources/SRC2/lightgallery/lib/jquery.mousewheel.min.js"></script>
    </body>
</html>