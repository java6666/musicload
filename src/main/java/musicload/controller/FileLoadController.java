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
        /*拿到文件在servlet容器中的路劲*/
        String realPath = session.getServletContext().getRealPath("/upload");
        File dir = new File(realPath);
        if(!dir.exists()){
            dir.mkdirs(); /*如果不存在这个文件夹则创建这个文件夹*/
        }
        String userName = (String) session.getAttribute(UserController.USER_NAME);
        String picturePath=session.getServletContext().getRealPath("/upload/"+userName+"Head.png");
        File file1 = new File(picturePath);
        if (file1.exists()){
            file1.delete(); /*如若这个文件已经存在则删除这个文件*/
        }
        if (file.isEmpty()){
            System.out.println("没有文件");
        }else {
            Files.copy(file.getInputStream(),new File(realPath+"/"+userName+"Head.png").toPath());
        }
        return "/userEdit";
    }
}
