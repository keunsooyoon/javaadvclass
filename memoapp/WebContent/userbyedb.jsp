<%@page import="jdbc.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("UTF-8");

	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");

	
	UserDAO dao = new UserDAO();
	
	
	if (!dao.exists(userid)) {
		out.print("<script> alert('존재하지 않는 아이디입니다. 다시 입력하세요.');");%>
			history.back();			
			<%out.print("</script>");
	}else{
		dao.delete(userid); 
		session.removeAttribute("userid");
		response.sendRedirect("userjoin.jsp");
		}


	
	
	
%>