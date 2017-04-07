package musicload.controller;

import musicload.model.dao.UserDao;
import musicload.model.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2017/4/6.
 */
@Controller
public class UserController {
    /* ctrl+alt+c: 设置静态变量*/
    public static final String USER_NAME = "user_name";

    @Resource
    private UserDao userDao;

    /**
     *  用户登录
     * @param userName key
     * @param password password
     * @param model request
     * @param session session
     * @return
     */
    @RequestMapping("/login")
    public String login(String userName, String password, Model model, HttpSession session){
        if (userName==null||userName.isEmpty()||password==null||password.isEmpty()){
            return "/jsp/login.jsp";
        }else {
            User user = userDao.selectByUserName(userName);
            if (user==null){
                model.addAttribute("notExists",true);
                return "/jsp/login.jsp";
            }else if (user.getPassword().equals(password)){                    /*登录成功*/
                session.setAttribute(USER_NAME,userName);
                model.addAttribute("user",user);
                return "/jsp/userMusic.jsp";
            }else {
                model.addAttribute("failInfo",true);
                return "/jsp/login.jsp";
            }
        }
    }

    @RequestMapping("/userMusic")
    public String userMusic(){
        return "/jsp/userMusic.jsp";
    }

    /**
     * 退出登录
     * @return
     */
    @RequestMapping("/loginOut")
    public String loginOut(HttpSession session){
        session.removeAttribute(USER_NAME);
        return "redirect:login";
    }
}
