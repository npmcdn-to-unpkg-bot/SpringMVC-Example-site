package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

    @RequestMapping(value = "/index", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView index(@RequestParam(value = "log_username") String name, ModelMap modelMap) {
        System.out.println(name);
        modelMap.addAttribute("name", name);
        return new ModelAndView("/index");
    }

    @RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView checkLogin(HttpServletRequest request, HttpServletResponse response) {
        String log_username = request.getParameter("log_username");
        String log_password = request.getParameter("log_password");
        if (log_username.equals("root") && log_password.equals("10"))
            return new ModelAndView("/index");
        else
            return new ModelAndView("WEB-INF/pages/login");
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView register() {
        return new ModelAndView("WEB-INF/pages/register");
    }

    @RequestMapping(value = "/Employee", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView userAction() {
        return new ModelAndView("WEB-INF/pages/UserAction");
    }
}
// session, cookie