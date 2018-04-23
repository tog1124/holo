function setsave(name, value, expiredays)
{
 var today = new Date();
 today.setDate( today.getDate() + expiredays );
 document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + today.toGMTString() + ";"
}
function saveLogin(id)
{
 if(id != "")
 {
  // userid 쿠키에 id 값을 7일간 저장
  setsave("userid", id, 7);
 }else{
  // userid 쿠키 삭제
  setsave("userid", id, -1);
 }
}
function saveCookie(){
	if(loginForm.remember.checked) 
		saveLogin(loginForm.email.value);
 else {
saveLogin("");
 }
}

function getLogin()
{
 // userid 쿠키에서 id 값을 가져온다.
 var cook = document.cookie + ";";
 var idx = cook.indexOf("userid", 0);
 var val = "";

 if(idx != -1)
 {
  cook = cook.substring(idx, cook.length);
  begin = cook.indexOf("=", 0) + 1;
  end = cook.indexOf(";", begin);
  val = unescape( cook.substring(begin, end) );
 }

 // 가져온 쿠키값이 있으면
 if(val!= "")
 {
  document.loginForm.email.value = val;
  document.loginForm.remember.checked = true;
 }
}