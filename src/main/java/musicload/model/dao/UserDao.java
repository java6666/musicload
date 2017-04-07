package musicload.model.dao;

import musicload.model.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *  author ： 陈誉巧
 */
@Repository
public interface UserDao {
    /**
     * 查询所有
     * @return all user
     */
    List<User> selectAll();

    /**
     *  通过主键查询
     * @param userName key
     * @return user
     */
    User selectByUserName(String userName);
}
