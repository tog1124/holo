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
<title>Tripper</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/loginmainstyle.css" />
<!-- Fav Icons   -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
</head>
<body>

<section class="container">
		    <article class="half">
			        <h1>Change Password</h1>
			        <div class="tabs">
			        </div>
			        <div class="content">
				            <div class="signin-cont cont">
					                <form action="sendcode" method="post">
						                    <input type="email" name="email" id="email" class="inpt" required="required" placeholder="Your email">
						                    <label for="email">Your email</label>
						                    <div class="submit-wrap">
							                        <input type="submit" value="SEND CODE"  class="submit">
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