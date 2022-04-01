<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<%@ include file="menu.jsp" %>


<div class = "container bg-warning shadow mx-auto mt-5 p-5 w-75">

<!-- container : 화면 전체를  차지하지 않는 고정된 크기를 지정하는 컨테이너로 브라우저의
            크기 변동에 반응하게 된다. 
bg-warning : 배경색을 지정한다.   shadow 그림자 효과를 추가
mx-auto :자동으로 크기를 적절하게 배치
mt-5 박스가 브라우저 상단에 붙지 않도록 최대 마진을 설정 0-5
p-5 박스 안쪽 여백을 설정 
w-75 박스의 크기를 브라우저 크기의 75%으로 유지 -->



<table align=center>
<tr height=40><td><b>방명록 리스트</b></td>
<td align = right>
<a href = "feed.jsp"><button type="button" class="btn btn-primary">글쓰기</button></a>
</td></tr>

<%
	request.setCharacterEncoding("UTF-8");

// JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");
// DB연결
	String url = "jdbc:mysql://localhost:3306/visit";
	String id = "root";
	String pw = "0000";
	
	Connection conn = null;  // 디비 연결 객체
	PreparedStatement pstmt = null; // 디비에 전달할 SQL 구문객체
	ResultSet rset = null;   // 디비에서 꺼내올 데이터들을 담을 객체
	
	conn = DriverManager.getConnection(url, id, pw);
	
// 테이블 데이터 넣는 SQL

	String sql = "SELECT * FROM feed ORDER BY ts DESC";
	pstmt = conn.prepareStatement(sql);

	rset = pstmt.executeQuery(); 
%>	

<%
	while(rset.next()) {
		
		String name = rset.getString("name");
		String content = rset.getString("content");
		String ts = rset.getString("ts");
%>		
<tr><td colspan=2><hr></td></tr>
<tr>
<td><small><%=name %></small></td>
<td><small><%=ts %></small></td>
<tr><td colspan=2><%=content %></td></tr>	

<% 	
	}

%>

</table>

</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>