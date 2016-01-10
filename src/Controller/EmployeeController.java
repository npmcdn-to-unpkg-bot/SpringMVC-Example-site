package Controller;

import EmployeeDAO.EmployeeDao;
import HashCode.MD5;
import Model.Employee;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by root on 11/28/15.
 */
@Controller
@RequestMapping(value = "/employee")
public class EmployeeController {
    @RequestMapping(value = "/urlSaveEmployee", method = RequestMethod.POST)
    @ResponseBody
    public Employee saveEmployee(@RequestParam(value = "hideId") String hideId, @RequestParam(value = "firstName") String firstName, @RequestParam(value = "lastName") String lastName,
                                 @RequestParam(value = "mobile") String mobile, @RequestParam(value = "email") String email,
                                 @RequestParam(value = "password") String password,
                                 @RequestParam(value = "state") String state) {
        password = MD5.getMD5(password);
        EmployeeDao dao = new EmployeeDao();
        Employee employee;
        if (hideId.equals("")) {
            employee = dao.saveEmployee(new Employee(firstName, lastName, mobile, email, password, state));
        } else {
            employee = dao.updateEmployee(hideId, firstName, lastName, mobile, email, password, state);
        }
        return employee;
    }

    @RequestMapping(value = "/urlListEmployee", method = RequestMethod.GET)
    @ResponseBody
    String listEmployee() {
        EmployeeDao dao = new EmployeeDao();
        List list = dao.listEmployee();
        Gson gson = new Gson();
        return gson.toJson(list, list.getClass());
    }

    @RequestMapping(value = "/urlDeleteEmployee", method = RequestMethod.POST)
    @ResponseBody
    public String deleteEmployee(@RequestParam(value = "id") String id) {
        EmployeeDao dao = new EmployeeDao();
        dao.deleteEmployee(id);
        return id;
    }

    @RequestMapping(value = "/urlGetEmployee", method = RequestMethod.POST)
    @ResponseBody
    public String urlGetEmployee(@RequestParam(value = "id") Integer id) {
        EmployeeDao dao = new EmployeeDao();
        Employee employee = dao.getEmployee(id);
        Gson gson = new Gson();
        return gson.toJson(employee, employee.getClass());
    }

    @RequestMapping(value = "/getData", method = RequestMethod.POST)
    @ResponseBody
    public String getData(@RequestParam(value = "text") String text) {
        List list = new EmployeeDao().getDataList(text);
        Gson gson = new Gson();
        return gson.toJson(list, list.getClass());
    }

    @RequestMapping(value = "/urlTest", method = RequestMethod.GET)
    @ResponseBody
    public String getTextForUrl(String text){
        String word = text;
        return text + " salom";
    }
}