<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<% // 전송 한글 데이터 처리
   request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크 및 세션 설정(db_login_check.jsp)</title>
</head>
<body>
<%@ include file = "database_connect.inc" %>

 <%
  
     String hakbun= request.getParameter("hakbun");

     // 학생 테이블(student) 튜플 검색
     String sql = "select * from student where hakbun = ?";
     pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, hakbun);
     rset = pstmt.executeQuery(); 
     
     // 질의처리 결과(rset) 체크 - 커서 초기 상태
     if (!rset.isBeforeFirst()) {

        // 자바 스크립트
        out.print("<script>alert('존재하지 않는 학생입니다 !!');"
                        + "history.back();"
                + "</script>");
     }
     
     // 학생 정보 추출(학번, 이름)
     out.println("학생 테이블(student) 검색 성공!<Br>");

     rset.next();       // 커서 현재 위치 다음 행으로 이동
     String db_hakbun = rset.getString("hakbun");
     String db_name = rset.getString("name");

     // 로그인 인증 및 세션 객체의 속성(세션 변수) 설정
     if (hakbun.equals(db_hakbun)) {
    	 
        session.setAttribute("hakbun", db_hakbun);
        session.setAttribute("name", db_name);
        out.print(session.getAttribute("hakbun") + "("
                + session.getAttribute("name") + ")님 방문을 환영합니다 !<Br>");
     }
      


  // 지정 페이지(URL)로 강제 이동
  // response.sendRedirect("./db_std_ins_form.jsp");
 %>

 <p><a href="univ_db_std_form.jsp">[ 로그인 폼 ]</a>  
</body>
</html>