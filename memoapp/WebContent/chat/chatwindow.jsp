<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
var webSocket = new WebSocket(
		"<%= application.getInitParameter("CHAT_ADDR") %>/ChatingServer");
var chatWindow, chatMessage, chatId;

//채팅창이 열릴때 자동으로 실행되는 함수
window.onload = function() {
	chatWindow = document.getElementById("chatWindow");
	chatMessage = document.getElementById("chatMessage");	
	chatId = document.getElementById('chatId').value;
}

// 메시지 전송

function sendMessage() {
	chatWindow.innerHTML += "<div class='myMsg'>" + chatMessage.value + "</div>"
	webSocket.send(chatId + '|' + chatMessage.value);   //서버로 전송
	chatMessage.value=""; //보냈으니까 메시지 입력창 내용 지우기
	chatWindow.scrollTop = chatWindow.scrollHeight;  // 대화창 스크롤
	
	
// 서버와 연결 종료
function disconnect() {
	webSocket.close();	
	}

// 엔터키 입력 처리
function enterKey() {
	if(window.event.keyCode == 13) {  //13 은 enter 코드값
		sendMessage();
	}
}
	
	
}

</script>

</head>
<body>
대화명:<input type="text" id="chatId" value="${ param.chatId }" readonly />
<button id ="closeBtn" onclick="disconnect();"> 채팅 종료</button>
<div id = "chatWindow"></div>
<div>
<input type="text" id="chatMessage" onkeyup="enterKey();">
<button id="sendBtn" onclick="sendMessage();">전송</button>
</div>

</body>
</html>