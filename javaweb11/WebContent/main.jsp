<%@page import="DAO.*"%>
<%@page import="DTO.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단톡방</title>
</head>
<body>
<form action = "feedAdd.jsp" method = "post">
<table align=center>
<tr><td colspan=2 align=center height=40><b>톡작성</b></td></tr>
<tr><td align=right>아이디</td>
<td><input type="text" name="uid" placeholder="글작성자 아이디" required></td></tr>
<tr><td align=right>글작성</td>
<td><textarea name = "ucon" rows=3 cols=20></textarea></td></tr>
<tr><td colspan=2 align=center height=40><input type="submit" value="등록"></td></tr>
</table>
</form>
<% 
ArrayList<FeedDTO> feeds = (new FeedDAO()).getList();

%>
</body>
</html>