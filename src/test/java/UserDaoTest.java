import musicload.model.dao.UserDao;
import musicload.model.entity.User;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * UserDao测试
 * author: 陈誉巧
 */
public class UserDaoTest {
    private ApplicationContext context = new ClassPathXmlApplicationContext("spring-mybatis.xml");
    private UserDao userDao = context.getBean(UserDao.class);

    @Test
    public void testSelectAll() {
        List<User> users = userDao.selectAll();
        for (User user : users) {
            System.out.print(user.getUserName() + " ");
            System.out.print(user.getPassword() + " ");
            System.out.print(user.getUserHeadName() + " ");
            System.out.println();
        }
    }

    @Test
    public void testSelectByUserName() {
        User user = userDao.selectByUserName("tom");
        System.out.println(user.getUserName());
        System.out.println(user.getPassword());
        System.out.println(user.getUserHeadName());
    }
}
