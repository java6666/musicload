package musicload.controller;

import musicload.model.dao.MusicDao;
import musicload.model.entity.Music;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/4/7.
 */
@Controller
public class MusicController {
    @Resource
    private MusicDao musicDao;
    @RequestMapping(value = "/selectAllMusic")
    public String showMusic(Model model){
        List<Music> musics = musicDao.selectAllMusic();
        model.addAttribute("musics",musics);
        return "/jsp/musicForm.jsp";
    }
    @RequestMapping(value = "/musicMessage",method = RequestMethod.GET)
    public String musicMessage(Integer musicId,Model model){
        Music music = musicDao.selectMusic(musicId);
        model.addAttribute("music",music);
        return "/jsp/musicMessage.jsp";
    }
}
