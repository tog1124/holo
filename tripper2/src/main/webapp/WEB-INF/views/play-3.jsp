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
<link rel="stylesheet" type="text/css" href="resources/css/skins/blue.css" title="blue" media="all" />
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
							<li><a href="#" target="_blank"><i class="fa fa-mobile"></i>${sessionScope.phonenum}</a></li>
						<li><a href="#" target="_blank"><i
								class="fa fa-envelope-o"></i>  ${sessionScope.email}</a></li>
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
						<li class="dropdown active"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">명소
								<span class="caret"></span>
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
							data-toggle="dropdown" role="button" aria-expanded="false">내 정보
								<span class="caret"></span>
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
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="section-12">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-md-12">
        <div class="portfolioFilter text-center"> 
          <a href="#" data-filter="*" class="current">All Categories</a>/ 
          <a href="#" data-filter=".people">Layout</a>/ 
          <a href="#" data-filter=".places">HTML</a>/ 
          <a href="#" data-filter=".food">Wordpress</a>/ 
          <a href="#" data-filter=".objects">Responsive</a> 
        </div>
        <div class="portfolioContainer">
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 objects text-center"> <a class="magnific-popup" href="./resources/images/portfolio/1.jpg"><img src="images/portfolio/1.jpg" class="img-responsive wow zoomIn" alt="image"></a> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 people places text-center"> <a class="magnific-popup" href="resources/images/portfolio/2.jpg"><img src="images/portfolio/2.jpg" class="img-responsive wow zoomIn" alt="image"></a> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 food text-center"><a class="magnific-popup" href="resources/images/portfolio/3.jpg"> <img src="images/portfolio/3.jpg" alt="image" class="img-responsive wow zoomIn"></a> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 people places text-center"><a class="magnific-popup" href="resources/images/portfolio/4.jpg"> <img src="images/portfolio/4.jpg" alt="image" class="img-responsive wow zoomIn"></a> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 places objects text-center"><a class="magnific-popup" href="resources/images/portfolio/5.jpg"> <img src="images/portfolio/5.jpg" alt="image" class="img-responsive wow zoomIn"></a> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 people food objects text-center"><a class="magnific-popup" href="resources/images/portfolio/6.jpg"> <img src="images/portfolio/6.jpg" alt="image" class="img-responsive wow zoomIn"></a> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 food objects text-center"><a class="magnific-popup" href="resources/images/portfolio/7.jpg"> <img src="images/portfolio/7.jpg" alt="image" class="img-responsive wow zoomIn"></a> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 food text-center"><a class="magnific-popup" href="resources/images/portfolio/8.jpg"> <img src="images/portfolio/8.jpg" alt="image" class="img-responsive wow zoomIn"></a> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 people food objects text-center"><a class="magnific-popup" href="resources/images/portfolio/9.jpg"> <img src="images/portfolio/9.jpg" alt="image" class="img-responsive wow zoomIn"></a> </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="section10" class="section-10-background">
  <div class="container">
    <div class="row">
      <div class="col-md-9 col-lg-9">
        <div class="section-10-box-text-cont">
          <h3>Pixel Agency HTML Template. Buy this theme.</h3>
          <p>Create beautiful, unique websites with impact full landing pages and banners, without any coding or design skills.</p>
        </div>
      </div>
      <div class="col-md-3 col-lg-3">
        <div class="section-10-btn-cont"><a href="#" class="btn btn-seconday wow tada">Get Started!</a></div>
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
						<p>저희는 공부를 열심히 할 것이며, 정당한 방법으로 수익을 높게 만들 것 입니다.</p>
					</div>
					<div class="footer-top-box">
						<h4>Office Hour</h4>
						<b>Mon-Fri :</b> 09am to 06pm <br /> <b>
Weekend :</b> Special
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