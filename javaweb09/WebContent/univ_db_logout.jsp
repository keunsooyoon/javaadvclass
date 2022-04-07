<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

<title>log out</title>
</head>
<body>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<%@ include file="menu.jsp" %>
<div class="alert alert-primary" role="alert">  
<p class="text-center"> 로그인 성공 </p>
</div>
	
	<div class = "container bg-warning shadow mx-auto mt-5 p-5 w-75">
	


<%

out.print(session.getAttribute("hakbun") + "(" + session.getAttribute("name") + ") 님 방문을 환영합니다.<br>");

session.invalidate();
out.print("로그 아웃 되었습니다.");



%>
</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>