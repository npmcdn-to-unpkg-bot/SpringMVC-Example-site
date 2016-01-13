package Controller;

import EmployeeDAO.MessageDao;
import Model.Message;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by dexter on 1/13/16.
 */
@Controller
@RequestMapping(value = "contact/")
public class MessageController {

    @RequestMapping(value = "message", method = RequestMethod.GET)
    @ResponseBody
    public Message message(@RequestParam(name = "name") String name, @RequestParam(name = "email") String email,
    @RequestParam(name = "phone") String phone, @RequestParam(name = "message") String message){
        Message message1 = new Message(name, email, phone, message);
        MessageDao messageController = new MessageDao();
        message1 =  messageController.saveMessage(message1);
        return  message1;
    }
}
