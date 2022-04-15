<% request.setCharacterEncoding("UTF-8"); %>
<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id= "user" class = "jdbc.UserDTO" scope="page" />
<jsp:setProperty property = "*" name="user"/>


 <%
 UserDAO dao = new UserDAO();
 int result = dao.insert(user.getUid(), 
		 user.getUpw(), 
		 uname, 
		 ugender, ubirth, uemail, uphone, uaddr);
 
 if(result == 1) {
	 response.sendRedirect("/user/login.jsp");
 }else{
	 response.sendRedirect("/user/useradd.jsp");
 }
 %> 
 
 아이디 : <jsp:getProperty property="uid" name="user" />
 암   호 : <jsp:getProperty property="upw" name="user" />
 이   름 : <jsp:getProperty property="uname" name="user" />
 