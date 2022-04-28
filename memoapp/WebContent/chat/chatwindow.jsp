<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
대화명:<input type="text" id="chatid" value="${ param.chatId }" readonly />
<button id ="closeBtn" onclick="disconnect();"> 채팅 종료</button>
<div id = "chatWindow"></div>
<div>
<input type="text" id="chatMessage" onkeyup="enterKey();">
<button id="sendBtn" onclick="sendMessage();">전송</button>
</div>

</body>
</html>