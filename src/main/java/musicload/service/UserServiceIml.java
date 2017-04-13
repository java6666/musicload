package musicload.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import musicload.model.dao.MusicDao;
import musicload.model.dao.UserMusicDao;
import musicload.model.entity.Music;
import musicload.model.entity.UserMusic;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by hasee on 2017/4/11.
 */
@Service
public class UserServiceIml implements UserService {
    @Resource
    private UserMusicDao userMusicDao;
    @Override
    public PageInfo selectUserMusicByUserName(Integer pageNow, String userName) {
        pageNow=pageNow==null||pageNow==0?1:pageNow;
        PageHelper.startPage(pageNow,5);
        List<UserMusic> userMusics = userMusicDao.selectByUserName(userName);
        PageInfo<UserMusic> userMusicPageInfo = new PageInfo<>(userMusics);
        return userMusicPageInfo;
    }
}
