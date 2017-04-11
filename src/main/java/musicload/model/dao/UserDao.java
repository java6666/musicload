package musicload.model.dao;

import musicload.model.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * author ： 陈誉巧
 */
@Repository
public interface UserDao {
    /**
     * 查询所有
     *
     * @return all user
     */
    List<User> selectAll();

    /**
     * 通过主键查询
     *
     * @param userName key
     * @return user
     */
    User selectByUserName(String userName);

    /**
     *  新增用户
     * @param userName key
     * @param password password
     * @return boolean
     */
    boolean insertUser(@Param("userName") String userName, @Param("password") String password);

    /**
     * 更新用户密码
     * @param user user
     * @return boolean
     */
    boolean updatePassword(User user);

    /**
     *  更新用户头像
     * @param user user
     * @return boolean
     */
    boolean updateUserHeadName(User user);

    /**
     * 跟新用户签名
     * @param user user
     * @return boolean
     */
    boolean updateUserSignature(User user);

    /**
     * 跟新用户爱好
     * @param user user
     * @return boolean
     */
    boolean updateUserHobby(User user);
}
