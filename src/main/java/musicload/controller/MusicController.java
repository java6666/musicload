package musicload.controller;

import musicload.model.dao.MusicDao;
import musicload.model.entity.Music;
import musicload.model.entity.RankingList;
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
    /*
    * 查询所有音乐信息
    * */
    @Resource
    private MusicDao musicDao;
    @RequestMapping(value = "/selectAllMusic")
    public String showMusic(Model model){
        List<Music> musics = musicDao.selectAllMusic();
        model.addAttribute("musics",musics);
       /* List<RankingList> rankingLists = musicDao.selectAllRankingList();
        model.addAttribute("rankingLists",rankingLists);*/
        return "/jsp/rankingList.jsp";
    }
    /*
    * 查询歌曲信息
    * */
    @RequestMapping(value = "/musicMessage",method = RequestMethod.GET)
    public String musicMessage(Integer musicId,Model model){
        Music music = musicDao.selectMusic(musicId);
        model.addAttribute("music",music);
        return "/jsp/musicMessage.jsp";
    }
  /*  *//*
    * 查询音乐排行榜类型
    * *//*
    @RequestMapping(value = "/rankingList")
    public String rankingList(Model model){
       *//* model.addAttribute("rankingList",new RankingList());*//*
        List<RankingList> rankingLists = musicDao.selectAllRankingList();
        model.addAttribute("rankingLists",rankingLists);
        return "/jsp/rankingList.jsp";
    }*/
    /*
    * 飙升榜查询
    * */
    @RequestMapping(value = "/soarList")
    public String soarList(Model model){
        List<Music> musics = musicDao.selectSoarList();
        model.addAttribute("musics",musics);
        return "/jsp/rankingList.jsp";
    }
    /*
    * 新歌排行榜
    * */
    @RequestMapping(value = "/newMusicList")
    public String newMusicList(Model model){
        List<Music> musics = musicDao.selectNewMusicList();
        model.addAttribute("musics",musics);
        return "/jsp/rankingList.jsp";
    }
}
