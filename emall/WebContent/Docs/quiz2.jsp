<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
1 quiz3.jsp를 생성하여
	- 선언문 태그에 문자형 전역 변수를 선언하고 Hello JSP 를 저장하세요
	- 문자형 변수 값을 반환하는 전역 메서드 getString()을 작성하세요
	- getString 메서드를 호출하여 문자형 변수 값을 출력하세요. -->
	
<%! String st = "Hello JSP"; 
	String getString(String st) {
		return st;
	}
%>

<% out.print(getString(st)); %>

</body>
</html>