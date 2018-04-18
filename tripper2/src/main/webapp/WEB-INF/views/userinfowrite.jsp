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
<title>SOLO Escape</title>
<!-- Card script -->
<link rel="stylesheet" type="text/css" href="css/userinfowrite.css" />
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
<!-- Responsive CSS -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Skins Style-->
<link rel="stylesheet" type="text/css"
	href="resources/css/skins/blue.css" title="blue" media="all" />
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
							<span><samp>SE</samp>Solo</span>ESCAPE
						</div>
					</a>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1" data-hover="dropdown"
					data-animations="fadeIn">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="main.do">Home</a></li>
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
						<li class="dropdown active"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">내 정보
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
							<li><a href="write.do">내 정보 수정</a></li>
								<li><a href="logout.do">로그아웃</a></li>
							</ul></li>
						<li><a href="contact.jsp">Contact Us</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
	</header>
	
	<div class="writermain">
		<div class="writerminimain">
			<form class='writeform' method="post" enctype="multipart/form-data">
				<article>
					<p id="status"></p>
					<div id="profileholder"
						style='width: 250px; height: 300px; display: table-cell; vertical-align: middle; background: white;'>
						<img src='' style='width: 250px;'>
					</div>
					<p>
						<label class='upload' for="ex_filename" value="파일선택">사진 선택</label> <input
							type="file" id="ex_filename" class="upload-hidden" name='psa'>
					</p>
				</article>
				<div class='infodiv'>
					<input name='num' value=''
						type='hidden' readonly> <label>이름</label> <input
						class='memberinfo' type='text' name='name'
						value='' readonly> <label>나이</label>
					<input class='memberinfo' type='number' name='age'
						value='' readonly> <label>지역</label>
					<input class='memberinfo' type='text' name='location'
						value='' readonly>
				</div>
				
				
			
				<table id="write-form" class="bbs-table">
					<tr>
						<td>상태표시</td>
						<td><input class='status' type="text" name="condition" value='' style="width: 240px;"placeholder="카드에 보여질 내용입니다." /></td>
					</tr>
				</table>
				<div class='askdiv'>
					<label>가보고싶은 장소</label> 
					<input class='memberinfo' type='text'style="width: 450px;" name='wplace'value=''>
					 <label>좋아하는 체형</label> 
					 <input class='memberinfo' type='text' style="width: 450px;" name='wbodytype' value=''>
					<label>선호하는 스타일(옷,머리)</label> 
					<input class='memberinfo' type='text' style="width: 450px;" name='wstyle'	value=''> 
						<label>나를	한마디로 표현하자면?</label> 
						<input class='memberinfo' type='text' style="width: 450px;" name='wone'value=''> 
						<label>상대방과	하고싶은것</label> 
						<input class='memberinfo' type='text' style="width: 450px;"	name='wdo' value=''> 
						<label>좋아하는	음식</label> 
						<input class='memberinfo' type='text' style="width: 450px;"	name='wmeal' value=''> 
						<label>매력어필	한마디</label>
						<input class='memberinfo' type='text' style="width: 450px;"	name='wappeal' value=''>
				</div>
				<div
					style="text-align: center; padding-bottom: 15px; margin-top: 200px;">
					<button type="submit">저장</button>
					<button type="button" onclick="history.back();">닫기</button>
				</div>
			</form>
		</div>
	</div>
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
	<script src="script/infowrite.js"></script>
</body>
</html>





