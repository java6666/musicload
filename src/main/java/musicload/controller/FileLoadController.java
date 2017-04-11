package musicload.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

/**
 *文件上传和下载控制
 */
@Controller
public class FileLoadController {

    @RequestMapping(value = "fileUpLoad",method = RequestMethod.POST)
    public String fileUpLoad(@RequestParam("upload") MultipartFile file, HttpSession session) throws IOException {
        String userName = (String) session.getAttribute(UserController.USER_NAME);
        if (file.isEmpty()){
            System.out.println("没有文件");
        }else {
            Files.copy(file.getInputStream(),new File("D:/gitWorkSpace/musicload/src/main/webapp/webmusicpages/images/"+userName+"Head.png").toPath());
            Files.copy(file.getInputStream(),new File("D:/gitWorkSpace/musicload/target/musicload-1.0-SNAPSHOT/webmusicpages/images/"+userName+"Head.png").toPath());
        }
        return "jsp/userEdit.jsp";
    }
}
