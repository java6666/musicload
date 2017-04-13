package musicload.controller;

import com.github.pagehelper.PageHelper;
import musicload.model.dao.MusicDao;
import musicload.model.entity.Music;
import musicload.model.entity.RankingList;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

/**
 * Created by Administrator on 2017/4/7.
 */
@Controller
public class MusicController {

    /*
    * 查询所有音乐信息
    * */
    @Resource
    private MusicDao musicDao;


    /*
    * 飙升榜查询
    * */
    @RequestMapping(value = "/soarList")
    public String soarList(Model model) {
        List<Music> musics1 = musicDao.selectSoarList();
        List<Music> musics2 = musicDao.selectNewMusicList();
        int count = 1;
        for (Music music1 : musics1) {
            music1.setCount(count++);
        }
        for (Music music2 : musics2) {
            music2.setCount(count++);
        }
        model.addAttribute("musics1", musics1);
        model.addAttribute("musics2", musics2);
        return "/jsp/rankingList.jsp";
    }

    /*音乐下载*/
    @RequestMapping(value = "/downloadMusic")
    @ResponseBody
    public void downloadMusic(HttpSession session, HttpServletResponse response, Integer musicId) throws IOException {
        Music music = musicDao.selectMusic(musicId);
        String realPath = session.getServletContext().getRealPath("\\webmusicpages\\music");
        File file = new File(realPath + "\\" + music.getMusicId() + ".mp3");
        FileInputStream input = new FileInputStream(file);
        response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(music.getMusicName() + ".mp3", "UTF-8"));
        ServletOutputStream out = response.getOutputStream();
        byte[] temp = new byte[1025];
        for (int index = input.read(temp); index != -1; index = input.read(temp)) {
            out.write(temp, 0, index);
        }
        out.flush();
        input.close();
        out.close();
    }

    /*
    * 单曲信息,
    * */
    @RequestMapping(value = "/musicMessage")
    public String musicMessage(Model model, Integer musicId) {
        Music music = musicDao.selectMusic(musicId);
        model.addAttribute("music", music);
        return "/jsp/singleMessage.jsp";
    }

    /*
    * 飙升榜音乐播放,
    * */
    @RequestMapping(value = "/soarMusicPlay")
    public String musicPlay1(Model model, Integer musicId) {
        Music music = musicDao.selectMusic(musicId);
        model.addAttribute("music", music);
        music.setSoarClicks(music.getSoarClicks()+1);
        return "/jsp/rankingList.jsp";
    }
    /*
     * 新歌榜音乐播放,
     * */
    @RequestMapping(value = "/newMusicPlay")
    public String musicPlay2(Model model, Integer musicId) {
        Music music = musicDao.selectMusic(musicId);
        music.setNewMusicClicks(music.getNewMusicClicks()+1);
        model.addAttribute("music", music);
        music.setSoarClicks(music.getSoarClicks()+1);
        return "/jsp/rankingList.jsp";
    }

}
