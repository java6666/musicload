package musicload.model.dao;

import musicload.model.entity.UserMusic;

import java.util.List;

/**
 * Created by hasee on 2017/4/11.
 */
public interface UserMusicDao {
    List<UserMusic> selectByUserName(String userName);
}
