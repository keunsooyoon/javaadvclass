package websocket;

import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;


// @ServerEndpoint 애너테이션으로 웹소켓 서버를 지정한다. 
// ws://호스트:포트번호/ChatingServer
@ServerEndpoint("/ChatingServer")
public class ChatServer {
	//
	private static Set<Session> clients
		=Collections.synchronizedSet(new HashSet<Session>());
	
	@OnOpen   //클라이언트가 접속시 실행
	public void onOpen(Session session) {
		clients.add(session);  //세션 추가
		System.out.println("웹 소켓 연결:" + session.getId());
	}
	
	@OnMessage //메시지를 받으면 실행
	public void onMessage(String message, Session session) 
			throws IOException {
		System.out.println("메시지 전송 : " + session.getId() + ":" + message);
		synchronized(clients) {
			for (Session client : clients) { //모든 클라이언트들에게 메세지 전달 반복
				if (!client.equals(session)) { //메세지 작성자는 제외
					client.getBasicRemote().sendText(message);
				}
			}
		}
	}
	
	@OnClose //클라이언트와의 연결이 끊기면 실행 
	public void onClose(Session session) {
		clients.remove(session);
		System.out.println("웹소켓 종료 :" + session.getId());
	}
	
	@OnError //에러가 발생할때 실행
	public void onError(Throwable e) {
		System.out.println("에러 발생");
		e.printStackTrace();
	}
	
	
	
}
