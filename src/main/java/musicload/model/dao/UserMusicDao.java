package musicload.model.dao;

import musicload.model.entity.UserMusic;

import java.util.List;

/**
 * @author 陈誉巧
 */
public interface UserMusicDao {
    List<UserMusic> selectByUserName(String userName);
    List<UserMusic> selectAll();
}
