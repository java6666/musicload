package musicload.controller;

import musicload.model.dao.MusicDao;
import musicload.model.entity.Music;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/4/13.
 */
@Controller
public class SingleMessageController {
    @Resource
    private MusicDao musicDao;
  @RequestMapping("/playSingle")
    public String playSingle(Integer musicId, Model model){
      Music music = musicDao.selectMusic(musicId);
      model.addAttribute("music",music);
      return "/jsp/singleMessage.jsp";
  }
}
