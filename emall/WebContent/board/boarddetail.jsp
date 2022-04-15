<%@page import="jdbc.*"%>

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
<title>상세 보기</title>
</head>
<body>
	<%!// 선언문
	String title = "상세 보기";%>
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
		String bid = request.getParameter("bid");
	BoardDTO board = (new BoardDAO()).getDetail(bid);
	%>


<div class="container my-3">
	<img src="/images/<%=board.getBimage() %>" style="width: 100%">

    <h2 class="border-bottom py-2"><%=board.getBtitle() %></h2>
    <div class="card my-3">
        <div class="card-body">
            <div class="card-text" style="white-space: pre-line;"><%=board.getBcontent() %></div>
            <div class="d-flex justify-content-end">
                <div class="badge bg-light text-dark p-2">
                    <%=board.getBdate() %>
                </div>
            </div>
        </div>
    </div>


	<%@ include file="/_footer.jsp"%>


	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


</body>
</html>