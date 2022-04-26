<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	session.invalidate();

out.print("<script> alert('아이디가 존재하지 않습니다. 회원가입페이지로 이동합니다.');");	
out.print("</script>");

response.sendRedirect("userlogin.jsp");


%>
