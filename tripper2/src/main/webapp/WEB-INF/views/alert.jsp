<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<form id="frm">
</form>
	<script>
	var message = '${msg}'; 
	var returnUrl = '${url}'; 
	var action = '${action}';
		alert(message);
		document.getElementById('frm').method = action; 
		document.getElementById('frm').action = returnUrl;
		document.getElementById('frm').submit();
	</script>	
</body>
</html>