package musicload.controller;

import com.github.pagehelper.PageHelper;
import musicload.model.dao.MusicDao;
import musicload.model.entity.Music;
import musicload.model.entity.RankingList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
    * 查询歌曲信息
    * */
    @RequestMapping(value = "/musicMessage", method = RequestMethod.GET)
    public String musicMessage(Integer musicId, Model model) {
        Music music = musicDao.selectMusic(musicId);
        model.addAttribute("music", music);
        return "/jsp/musicMessage.jsp";
    }

    /*
      * 查询音乐排行榜类型
      * */
    @RequestMapping(value = "/rankingList")
    public String rankingList(Model model) {
        List<RankingList> rankingLists = musicDao.selectAllRankingList();
        model.addAttribute("rankingLists", rankingLists);
        return "/jsp/rankingList.jsp";
    }

    /*
    * 飙升榜查询
    * */
    @RequestMapping(value = "/soarList")
    public String soarList(Model model) {
        List<Music> musics1 = musicDao.selectSoarList();
        List<Music> musics2 = musicDao.selectNewMusicList();
        int count = 1;
        for (Music music : musics1) {
            music.setCount(count++);
        }
        for (Music music : musics2) {
            music.setCount(count++);
        }
        model.addAttribute("musics1", musics1);
        model.addAttribute("musics2", musics2);
        return "/jsp/rankingList.jsp";
    }
    /*下载音乐*/
    @RequestMapping(value = "downloadMusic")
    public String downloadMusic(HttpServletRequest request, HttpServletResponse response){
          String a="";
        return a;
    }

}
