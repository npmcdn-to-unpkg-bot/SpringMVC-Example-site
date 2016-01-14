package Controller;

import EmployeeDAO.TranslateDao;
import Model.TranslateWord;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by dexter on 1/14/16.
 */
@Controller
public class TranslateWordController {
    @RequestMapping(value = "/translate", method = RequestMethod.POST)
    @ResponseBody
    public String urlGetEmployee(@RequestParam(value = "search") String search) {
        List list = new TranslateDao().getDataList(search);
        Gson gson = new Gson();
        return gson.toJson(list, list.getClass());
    }

    @RequestMapping(value = "/saveWord", method = RequestMethod.POST)
    @ResponseBody
    public TranslateWord saveEmployee(@RequestParam(value = "english") String english, @RequestParam(value = "uzbek") String uzbek) {
        TranslateWord word = new TranslateWord(english, uzbek);
        TranslateDao dao = new TranslateDao();
        TranslateWord translateWord = dao.saveWord(word);
        return translateWord;
    }
}
