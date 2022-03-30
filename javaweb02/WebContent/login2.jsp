<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("id");
	String res = "<h3>User ID : " + uid + "</h3>";
	out.print(res);	// System.out.println(res);
	                // JSP 에서는 System을 쓰지 않는다. println ln도 사용하지 않는다. 

%>
</body>
</html>