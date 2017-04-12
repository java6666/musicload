package musicload.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

/**
 * 文件下载
 */
@Controller
public class FileDownload {
    @RequestMapping(value = "/download")
    @ResponseBody
    public void foo(HttpSession session, HttpServletResponse response) throws IOException {
        String realPath = session.getServletContext().getRealPath("\\webmusicpages\\music");
        File file = new File(realPath + "/a.mp3");
        FileInputStream input = new FileInputStream(file);
        response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode("ss.mp3", "UTF-8"));
        ServletOutputStream out = response.getOutputStream();
        byte[] temp = new byte[1025];
        for (int index=input.read(temp);index!=-1;index=input.read(temp)){
            out.write(temp,0,index);
        }
        out.flush();
        input.close();
        out.close();
    }
}
