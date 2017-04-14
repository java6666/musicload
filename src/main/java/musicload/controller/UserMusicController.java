package musicload.controller;

import musicload.model.dao.UserSingerDao;
import musicload.model.entity.UserSinger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 陈誉巧
 */
@Controller
public class UserMusicController {
    @Resource
    private UserSingerDao userSingerDao;

    @RequestMapping("/showUserMusic")
    public String showUserMusic(Model model){
        /*用户收藏的歌手*/
        List<UserSinger> userSingers = userSingerDao.selectAllUserSinger();
        model.addAttribute("userSingers",userSingers);
        /* 用户创建的歌单 */
        return "/jsp/userMusic.jsp";
    }
}
