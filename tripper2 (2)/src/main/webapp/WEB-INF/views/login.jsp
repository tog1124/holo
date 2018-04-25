<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	    <%@ page session = "true" %> 

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Solo Escape">
<meta name="keywords" content="Pixel">
<meta name="author" content="rkwebdesigns">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<title>SOLO Escape</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/loginmainstyle.css" />
<!-- Fav Icons   -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
</head>
<body>

<section class="container">
		    <article class="half">
			        <h1>Azure</h1>
			        <div class="tabs">
				            <span class="tab signin active"><a href="#signin">Sign in</a></span>
				            <span class="tab signup"><a href="#signup">Sign up</a></span>
			        </div>
			        <div class="content">
				            <div class="signin-cont cont">
					                <form action="signin" method="post">
						                    <input type="email" name="email" id="email" class="inpt" required="required" placeholder="Your email">
						                    <label for="email">Your email</label>
						                    <input type="password" name="password" id="password" class="inpt" required="required" placeholder="Your password">
                						    <label for="password">Your password</label>
						                    <input type="checkbox" id="remember" class="checkbox" checked>
						                    <label for="remember">Remember me</label>
						                    <div class="submit-wrap">
							                        <input type="submit" value="Sign in" class="submit">
							                        <a href="forgetpassword" class="more">Forgot your password?</a>
						                    </div>
        					        </form>
    				        </div>
    				        <div class="signup-cont cont">
                <form action="signup" method="post">
                 						   <input type="email" name="signupemail" id="signupemail" class="inpt" required="required" placeholder="Your email">
						                    <label for="email">Your email</label>
						                    <input type="password" name="signuppassword" id="signuppassword" class="inpt" required="required" placeholder="Your password">
                						    <label for="password">Your password</label>
                						        <input type="password" name="cppassword" id="cppassword" class="inpt" required="required" placeholder="Again password">
                						    <label for="password">Again password</label>
						                    <div class="submit-wrap">
							                        <input type="submit" value="Sign up" class="submit">
							                        <a href="#" class="more">Terms and conditions</a>
						                    </div>
        					        </form>
            </div>
			        </div>
		    </article>
		    <div class="half bg"></div>
	</section>
			<script src="${pageContext.request.contextPath}/resources//js/loginmainscript.js"></script>
</body>
</html>