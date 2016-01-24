package Controller;

import com.google.gson.Gson;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by dexter on 1/13/16.
 */
 @RestController
 @RequestMapping(value = "/book")
public class BookController {
    @RequestMapping(value = "/upload", produces = "application/json; charset=UTF-8", method = RequestMethod.POST)
    @ResponseBody
    public String upload(HttpServletRequest request) {
        MultipartHttpServletRequest filereq = (MultipartHttpServletRequest) request;

        MultipartFile file = filereq.getFile("file");
        Map<String, String> status = new HashMap<>();

        if (!file.isEmpty()) {
            if (!file.getContentType().equals("image/jpeg")
                    || !file.getContentType().equals("image/jpg")
                    || !file.getContentType().equals("image/png")) {
                String rootPath = request.getServletContext().getRealPath("/book/upload/");
                File dir = new File(rootPath);

                if (!dir.exists()) {
                    Boolean mkdirs = dir.mkdirs();
                    if (!mkdirs) return "cannot create directory in server";
                }
                String ext = "";
                if (file.getOriginalFilename().length() > 1)
                    ext = "." + file.getOriginalFilename().split("\\.")[1];

                String filename = System.nanoTime() + ext;
                File serverFile = new File(dir.getAbsoluteFile() + File.separator + filename);
                try (BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile))) {
                    stream.write(file.getBytes());
                    status.put("img_id", filename);
                    String url = "http://localhost:8087/";
                    status.put("url", url + filename);
                    Gson gson = new Gson();
                    return gson.toJson(status);
                } catch (IOException e) {
                    e.printStackTrace();
                    return "cannot upload";
                }
            } else {
                return "wrong format";
            }
        } else {
            return "empty file";
        }
    }
}