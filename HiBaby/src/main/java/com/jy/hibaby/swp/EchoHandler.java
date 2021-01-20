package com.jy.hibaby.swp;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.jy.hibaby.message.MessageService;
import com.jy.hibaby.message.model.MessagePARAM;


public class EchoHandler extends TextWebSocketHandler{
	
	@Autowired
	private MessageService messageSservice;
	
	//세션 리스트
    private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

    private static Logger logger = LoggerFactory.getLogger(EchoHandler.class);

    //클라이언트가 연결 되었을 때 실행
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
    	System.out.println("처음 : " + session);
        sessionList.add(session);
        logger.info("{} 연결됨", session.getId()); 
    }
    

    //클라이언트가 웹소켓 서버로 메시지를 전송했을 때 실행
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
    	MessagePARAM param = new MessagePARAM();
    	
        logger.info("{}로 부터 {} 받음", session.getId(), message.getPayload());
        
        param.setCtnt(message.getPayload());
        
        // 임시용
        param.setTo_user(1);
        param.setFrom_user(2);
        //
        
        System.out.println("param.setCtnt : " + param.getCtnt());
        
        int result = messageSservice.intMessage(param);
        
        
        //모든 유저에게 메세지 출력
        for(WebSocketSession sess : sessionList){
            sess.sendMessage(new TextMessage(message.getPayload()));
        }
        
    }
    
    
    //클라이언트 연결을 끊었을 때 실행
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
    	System.out.println("마지막 : " + session);
        sessionList.remove(session);
        logger.info("{} 연결 끊김.", session.getId());
    }

}

