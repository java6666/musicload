package musicload.model.dao;

import musicload.model.entity.UserSinger;

import java.util.List;

/**
 * Created by hasee on 2017/4/13.
 */
public interface UserSingerDao {
    List<UserSinger> selectAllUserSinger();
}
