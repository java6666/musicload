/*
import musicload.model.dao.UserDao;
import musicload.model.entity.User;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

*/
/**
 * UserDao测试
 * author: 陈誉巧
 *//*

public class UserDaoTest {
    private ApplicationContext context = new ClassPathXmlApplicationContext("spring-mybatis.xml");
    private UserDao userDao = context.getBean(UserDao.class);

    /*测试查询所有用户*/
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

    /*测试通过用户名查询*/
    @Test
    public void testSelectByUserName() {
        User user = userDao.selectByUserName("tom");
        System.out.println(user.getUserName());
        System.out.println(user.getPassword());
        System.out.println(user.getUserHeadName());
    }

    /*测试新增用户*//*
    @Test
    public void testInsertUser(){
        boolean result = userDao.insertUser("rose", "77049");
        System.out.println(result);
    }

    *//*测试更新密码*//*
    @Test
    public void testUpdatePassword(){
        User user = new User();
        user.setUserName("rose");
        user.setPassword("77049");
        boolean b = userDao.updatePassword(user);
        System.out.println(b);
    }

    *//*测试更新头像*//*
    @Test
    public void testUpdateUserHeadName(){
        User user = new User();
        user.setUserName("rose");
        user.setUserHeadName("roseHead");
        boolean b = userDao.updateUserHeadName(user);
        System.out.println(b);
    }*/
}
*/
