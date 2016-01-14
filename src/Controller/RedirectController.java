package Controller;

import EmployeeDAO.EmployeeDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by root on 12/15/15.
 */
@Controller
public class RedirectController {
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView login() {
        return new ModelAndView("WEB-INF/pages/login");
    }

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView index() {
        return new ModelAndView("/index");
    }

    @RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView checkLogin(HttpServletRequest request, HttpServletResponse response) {
        String log_username = request.getParameter("log_username");
        String log_password = request.getParameter("log_password");
        EmployeeDao dao = new EmployeeDao();
        String isYes = dao.UserType(log_username, log_password);
        if(isYes.equals("root")) return new ModelAndView("WEB-INF/pages/admin");
        else if(isYes.equals("yes")) return new ModelAndView("/index");
        else return new ModelAndView("WEB-INF/pages/login");
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView register() {
        return new ModelAndView("WEB-INF/pages/register");
    }

    @RequestMapping(value = "/employee", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView userAction() {
        return new ModelAndView("WEB-INF/pages/UserAction");
    }

    @RequestMapping(value = "/bookStory", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView bookStory(){
        return new ModelAndView("WEB-INF/pages/bookStory");
    }

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView contact(){
        return new ModelAndView("WEB-INF/pages/contact");
    }
    @RequestMapping(value = "translate")
    @ResponseBody
    public ModelAndView translate(){
        return new ModelAndView("WEB-INF/pages/translate");
    }
}
// session, cookie