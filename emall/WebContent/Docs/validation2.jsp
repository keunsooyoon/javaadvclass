<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type ="text/javascript">
function CheckForm() {
/* 	길이 검사
		  
	if (document.loginForm.id.value.length < 3 || document.loginForm.id.value.length > 20){
		alert("아이디 값이 너무 작거나 큽니다. 다시 입력하세요");
		form.id.focus();
		return false;
	} 
	
	if (document.loginForm.pw.value < 2){
		alert("비번은 2글자 이상으로 입력하세요");
		form.pw.focus();
		return false;
	}
	form.submit();
}

</script>
<form name="loginForm">
아이디 : <input type="text" name="id">
비   번 : <input type="password" name="pw">
<input type="submit" onclick="CheckForm()">


</form>
</body>
</html>