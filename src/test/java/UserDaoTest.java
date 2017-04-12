
import musicload.model.dao.UserDao;
import musicload.model.dao.UserMusicDao;
import musicload.model.entity.User;
import musicload.model.entity.UserMusic;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * UserDao测试
 * author: 陈誉巧
 */

@Ignore
public class UserDaoTest {
    private ApplicationContext context = new ClassPathXmlApplicationContext("spring-mybatis.xml");
    private UserDao userDao = context.getBean(UserDao.class);
    private UserMusicDao userMusicDao=context .getBean(UserMusicDao.class);

    /*测试查询所有用户*/
    @Test
    @Ignore
    public void testSelectAll() {
        List<User> users = userDao.selectAll();
        for (User user : users) {
            System.out.print(user.getUserName() + " ");
            System.out.print(user.getPassword() + " ");
            System.out.print(user.getUserHeadName() + " ");
            System.out.println();
        }
    }

    /*测试通过用户名查询*/
    @Test
    @Ignore
    public void testSelectByUserName() {
        User user = userDao.selectByUserName("tom");
        System.out.println(user.getUserName());
        System.out.println(user.getPassword());
        System.out.println(user.getUserHeadName());
    }


    @Test
    @Ignore
    public void testInsertUser(){
        boolean result = userDao.insertUser("rose", "77049");
        System.out.println(result);
    }


    @Test
    @Ignore
    public void testUpdatePassword(){
        User user = new User();
        user.setUserName("rose");
        user.setPassword("77049");
        boolean b = userDao.updatePassword(user);
        System.out.println(b);
    }


    @Test
    @Ignore
    public void testUpdateUserHeadName(){
        User user = new User();
        user.setUserName("rose");
        user.setUserHeadName("roseHead");
        boolean b = userDao.updateUserHeadName(user);
        System.out.println(b);
    }

    @Test
    @Ignore
    public void testSelectAllUserMusic(){
        List<UserMusic> userMusics = userMusicDao.selectAll();
        System.out.println(userMusics);
    }
}

