<!doctype html>
<%@page import="java.util.List"%>
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
<!-- Site Title   -->
<title>Tripper</title>
<!-- Card script -->
<link rel="stylesheet" type="text/css" href="css/cardstyle.css" />
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
<link href="css/cardstyle.css" rel="stylesheet">
<link href="css/othercard.css" rel="stylesheet">
<!-- Responsive CSS -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Skins Style-->
<link rel="stylesheet" type="text/css"
	href="resources/css/skins/blue.css" title="blue" media="all" />
<link href="resources/css/search.css" rel="stylesheet">
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<body>
	<header id="header" class="head">
		<div class="top-header">
			<div class="container">
				<div class="row ">
					<ul class="contact-detail2 col-sm-6 pull-left">
						<li><a href="#" target="_blank"><i class="fa fa-mobile"></i>Call
								+82 10-2977-1539</a></li>
						<li><a href="#" target="_blank"><i
								class="fa fa-envelope-o"></i> donghyun1538@gmail.com</a></li>
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
					<a class="navbar-brand" href="main.do">
						<div class="logo-text">
							<span><samp>HOLO</samp>Tripper</span>
						</div>
					</a>
				</div>
				
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1" data-hover="dropdown"
					data-animations="fadeIn">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="main.do">Home</a></li>
						<li><a href="other.do">See card </a></li>
						<li><a href="services.jsp">Services </a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">Work
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="portfolio-3.jsp">3 colums</a></li>
								<li><a href="portfolio-4.jsp">4 colums</a></li>
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
								<li><a href="write.do">내 정보 수정</a></li>
								<li><a href="login">로그아웃</a></li>
							</ul></li>
						<li><div class="d5">
						<form>
							<input type="text" placeholder="검색어 입력">
						</form>
					</div></li>
					</ul>
					
				</div>
				<!--/.nav-collapse -->
				
			</div>
		</nav>
	</header>
	<section id="slider" class="">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Carousel indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for carousel items -->
			<div class="carousel-inner">
				<!--1st item start-->
				<div class="item active">
					<img src="resources/images/slide/1.jpg" class="img-responsive"
						alt="First Slide Image">
					<div class="carousel-caption">
						<h1 class="wow slideInLeft color-white">IF YOU WOULD BE
							LOVED, LOVE AND BE LOVABLE. (BENJAMIN FRANKLIN)</h1>
						<h3 class="wow slideInRight color-white">사랑 받고 싶다면 사랑하라, 그리고
							사랑스럽게 행동하라. (벤자민 프랭클린)</h3>
						<a href="https://www.lge.co.kr/lgekor/event/eventProgressList.do"
							class="btn btn-primary wow bounceInUp">Get Started! <i
							class="fa fa-angle-double-right"></i>
						</a> &nbsp; <a
							href="https://www.lge.co.kr/lgekor/event/eventProgressList.do"
							class="btn btn-seconday wow bounceInUp">Know More <i
							class="fa fa-angle-double-right"></i>
						</a>
					</div>
				</div>
				<!--1st item end-->
				<!--2nd item start-->
				<div class="item">
					<img src="resources/images/slide/2.jpg" class="img-responsive"
						alt="Second Slide Image">
					<div class="carousel-caption">
						<h1 class="wow slideInLeft color-white">WE CAN ONLY LEARN TO
							LOVE BY LOVING. (IRIS MURDOCH)</h1>
						<h3 class="wow slideInRight color-white">우리는 오로지 사랑을 함으로써 사랑을
							배울 수 있다. (아이리스 머독)</h3>
						<a href="http://www.samsungsales.co.kr/event/list.sesc?menu=w101"
							class="btn btn-primary wow bounceInUp">Get Started! <i
							class="fa fa-angle-double-right"></i>
						</a> &nbsp; <a
							href="http://www.samsungsales.co.kr/event/list.sesc?menu=w101"
							class="btn btn-seconday wow bounceInUp">Know More <i
							class="fa fa-angle-double-right"></i>
						</a>
					</div>
				</div>
				<!--2nd item end-->
				<!--3rd item start-->
				<div class="item">
					<img src="resources/images/slide/3.jpg" class="img-responsive"
						alt="Third Slide Image">
					<div class="carousel-caption">
						<h1 class="wow slideInLeft color-white">THERE IS NO REMEDY
							FOR LOVE BUT TO LOVE MORE. (HENRY DAVID THOREAU)</h1>
						<h3 class="wow slideInRight color-white">더 많이 사랑하는 것 외에 다른
							사랑의 치료약은 없다. (헨리 데이비드 소로우)</h3>
						<a href="https://www.lge.co.kr/lgekor/event/eventProgressList.do"
							class="btn btn-primary wow bounceInUp">Get Started! <i
							class="fa fa-angle-double-right"></i>
						</a> &nbsp; <a href="https://web.dominos.co.kr/event/list?gubun=E0200"
							class="btn btn-seconday wow bounceInUp">Know More <i
							class="fa fa-angle-double-right"></i>
						</a>
					</div>
				</div>
				<!--3rd item end-->
			</div>
			<!-- Carousel controls -->

			<a class="carousel-control left" href="#myCarousel" data-slide="prev">
				<span class="carousel-arrow"> <i
					class="fa fa-angle-left fa-2x"></i></span>
			</a> <a class="carousel-control right" href="#myCarousel"
				data-slide="next"> <span class="carousel-arrow"><i
					class="fa fa-angle-right fa-2x"></i></span>
			</a>
		</div>
	</section>
	<section id="section1" class="section-margine">
		<form method="get" action="write.do">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-lg-4 ">
						<div class="section-1-box wow bounceIn"></div>
					</div>
					<div class="col-md-4 col-lg-4">
						<div class="section-1-box wow bounceIn" data-wow-delay=".1s">
							<div class="card-image" id="card-image">
								<img src="">
							</div>
							<div>
								<h4 class="text-center" name="card-name" id="card-name"></h4>
								<h4 class="text-center" name="card-age" id="card-age"></h4>
								<h4 class="text-center" name="card-location" id="card-location"></h4>
								<p class="text-center" name="card-content" id="card-content"></p>
								<div style="text-align: right; padding-bottom: 15px;">
									<button>수정</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-lg-4">
						<div class="section-1-box wow bounceIn" data-wow-delay=".1s">
						</div>
					</div>
				</div>
			</div>
		</form>
	</section>
	<section id="section5" class="section-margine section-5-background">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="section-5-box-text-cont wow fadeInUp">
						<h2>더 많은 장소들 보러가기</h2>
						<p>재미있는곳 보러가기</p>
						<a href="other.do" class="btn btn-primary">Get Started!</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="section8" class="section-8 section-margine">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="sec-title text-center wow fadeInUp">
						<span class="tagline">Happy users</span>
						<h2>People Say</h2>
						<span class="double-border"></span>
						<p>새로운 사람들을 만나고 소통해봐요!</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="testimonial_wrapper">
						<div class="testimonial_slider wow fadeInUp">

							<form method="post" action="" name="myform" class="myform">
								<div class="single_testimonial">
									<div class="testmonial_img">
										<img src=alt=
											"images"	style="height: 100%; width: 100%; border-radius: 50%;">
									</div>
									<div class="testimonial_contents">
										<div class="name_desig">
											<p class="name"></p>
											<span class="desig" id="age">세</span>
										</div>
										<span class="cardlocation" id="location"></span>
										<div class="testimonial_text" id="content">
											<p></p>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="footer-top" class="footer-top">
		<div class="container">
			<div class="row" id="row">
				<div class="col-md-3 col-lg-3">
					<div class="footer-top-box">
						<h4>About Us</h4>
						<p>공부를 열심히 해야겠습니다..</p>
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

	<!-- JS Files -->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.plugin.min.js"></script>
	<script src="resources/js/jquery.isotope.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/bootstrap-dropdownhover.min.js"></script>
	<script src="resources/js/wow.min.js"></script>
	<script src="resources/js/waypoints.min.js"></script>
	<script src="resources/js/jquery.counterup.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/main.js"></script>
</body>
</html>





