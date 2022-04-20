
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>
	<%!// 선언문
	String title = "게시판 목록";%>
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

	<div class="container">
		<div class="row" align="center">
		

		
<div class="container my-3">
    <table class="table">
        <thead>
        <tr class="table-dark">
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일시</th>
        </tr>
        </thead>
        <tbody>

		<%

		//JDBC 드라이버 로딩 테스트

			Class.forName("com.mysql.jdbc.Driver");

		//DB 연결

			String url = "jdbc:mysql://localhost:3306/emall";
			String id = "root";
			String pw = "0000";
			
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			
			conn = DriverManager.getConnection(url, id, pw);
			
			// 테이블 데이터 넣는 SQL

			String sql = "SELECT * FROM board";
			pstmt = conn.prepareStatement(sql);

			rset = pstmt.executeQuery(); 
			
			
			int no = 1;
			while(rset.next()) {
				
				String bid = rset.getString("bid");
				String btitle = rset.getString("btitle");
				String bcontent = rset.getString("bcontent");
				String buser = rset.getString("buser");
				String bimage = rset.getString("bimage");
				String bdate = rset.getString("bdate");
		%>

        <tr>
<td><%=bid %></td>
<td><%=btitle %></td>
<td><%=buser %></td>
<td><%=bdate %></td>
        </tr>


<% } %>


        </tbody>
    </table>
    
    <a href="/board/boardwrite.jsp">글쓰기</a>
    
</div>




		



		</div>
		<hr>
	</div>









	<%@ include file="/_footer.jsp"%>


	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>