<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// 자바 영역
String uid = request.getParameter("id");
String ups = request.getParameter("ps");
%>

<h3>User ID:<%=uid %></h3><br>
<h3>User PS:<%=ups %></h3><br>
<h5>by 00홍길동</h5><br>
</body>
</html>