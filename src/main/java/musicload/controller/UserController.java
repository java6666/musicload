package musicload.controller;

import musicload.model.dao.UserDao;
import musicload.model.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/4/6.
 */
@Controller
public class UserController {

    @Resource
    private UserDao userDao;

    @RequestMapping("login")
    public String login(String userName, String password, Model model){
        if (userName==null||userName.isEmpty()||password==null||password.isEmpty()){
            return "/jsp/login.jsp";
        }else {
            User user = userDao.selectByUserName(userName);
            if (user==null){
                model.addAttribute("notExists",true);
                return "/jsp/login.jsp";
            }else if (user.getPassword().equals(password)){
                return "/jsp/userHome.jsp";                                          /* 跳转至成功页面*/
            }else {
                model.addAttribute("failInfo",true);
                return "/jsp/login.jsp";
            }
        }
    }
}
