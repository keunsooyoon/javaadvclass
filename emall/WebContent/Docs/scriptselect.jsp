<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script>
function mailcheck(){
	i = document.join.mail3.selectedindex //선택한 항목 인텍스
	var mail = document.join.mail3.options[i].value // 선택 항목 value
	document.join.mail2.value = mail
}
</script>
<form name="join" action="joindb.jsp">
<select name = "mail3" onChange="mailcheck()">
<option selected>직접입력</option>
<option value = hanmail.net>한메일</option>
<option value = naver.com>네이버</option>
<option value = gmail.com>구글</option>
</select>

<input type="text" name="mail2">

</form>


</body>
</html>