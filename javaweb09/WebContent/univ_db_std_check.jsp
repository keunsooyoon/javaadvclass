<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//객체 3개
Connection conn = null;  //연결객체
PreparedStatement pstmt = null; //구문객체
ResultSet rset = null;   //결과객체

//JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");
//디비 연결
	String url = "jdbc:mysql://localhost:3306/university";
	String id = "root";
	String pw = "0000";
	
	conn = DriverManager.getConnection(url, id, pw);
	
// 디비 검색

	String hakbun = request.getParameter("hakbun");
	String sql = "SELECT * from student where hakbun = ?";
	pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hakbun);
	rset = pstmt.executeQuery();

// 질의 결과 확인 
	if (!rset.isBeforeFirst()) {
		out.print("<script>alert('존재하지 않는 학생입니다. !!');"
		+ "history.back();"
		+ "</script>");
	}
	out.print("학생 정보 검색 성공!<br>");
	
	String db_hakbun = rset.getString("hakbun");
	String db_name = rset.getString("name");
	
	if (hakbun.equals(db_hakbun)) {
		session.setAttribute("hakbun", db_hakbun);
		session.setAttribute("name", db_name);

	out.print(session.getAttribute("hakbun") + "(" + session.getAttribute("name") + ") 님 방문을 환영합니다.<br>");
	
	
	}



%>
</body>
</html>