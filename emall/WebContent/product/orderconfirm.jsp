<%@page import="jdbc.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String uid = (String) session.getAttribute("id");
	if (uid == null) {
		response.sendRedirect("/user/login.jsp");
		return;
	} //세션 정보를 확인해서 로그인 상태인지 확인한후 진입 허용 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!// 선언문
	String title = "상품 주문";%>
	<!-- CSS only -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">

	<%@ include file="/_header.jsp"%>
	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				<%=title%>
			</h1>
		</div>
	</div>

<%
	String pid = request.getParameter("pid");
	String pprice = request.getParameter("pprice");
	String pname = request.getParameter("pname");

%>
<table class="table table-hover">			
			<tr>
				<th class="text-center">제품아이디</th>
				<th class="text-center">제품가격</th>
				<th class="text-center">제품이름</th>
			</tr>
			<tr>
				<td class="text-center"><em><%=pid%> </em></td>
				<td class="text-center"><%=pprice%>원 </td>
				<td class="text-center"><%=pname%></td>
			</tr>

			</table>			
				<a href="./shippingThanks.jsp"  class="btn btn-success" role="button"> 주문 완료 </a>
				<a href="./shippingCancel.jsp" class="btn btn-secondary" role="button"> 취소 </a>		
				
				




	<%@ include file="/_footer.jsp"%>


	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


</body>
</html>