import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;

/**
 * Created by dexter on 1/24/16.
 */
@ServerEndpoint("/websocket")
public class Websocket {

    @OnMessage
    public void onMessage(String message, Session session) throws IOException, InterruptedException {
        System.out.println("User input : " + message);
//        session.getBasicRemote().sendText("User : " + message);
        session.getAsyncRemote().sendText("User : " + message);
    }

    @OnOpen
    public void onOpen(){
        System.out.println("Client Connected");
    }

    @OnClose
    public void onClose(){
        System.out.println("Client Closed");
    }
}
