package musicload.controller;

import musicload.model.dao.UserDao;
import musicload.model.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

    @RequestMapping("/register")
    public String register(String userName,String password,Model model){
        boolean b = userDao.insertUser(userName, password);
        if (b){
            model.addAttribute("successInfo","注册成功");
        }else {
            model.addAttribute("failInfo","该用户名已经存在");
        }
        return null;                                                           /*返回页面待定*/
    }


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

    /**
     *  显示用户信息
     * @return
     */
    @RequestMapping("/userHome")
    public String userHome(String userName,Model model){
        User user = userDao.selectByUserName(userName);
        model.addAttribute("user",user);
        return "/jsp/userHome.jsp";
    }
    
    /*显示编辑个人资料*/
    @RequestMapping(value = "/userEdit",method = RequestMethod.GET)
    public String userEdit(Model model,HttpSession session){
        String userName = (String) session.getAttribute(USER_NAME);
        User user = userDao.selectByUserName(userName);
        model.addAttribute("user",user);
        return "/jsp/userEdit.jsp";
    }

    /*修改性别爱好签名*/
    @RequestMapping(value = "/userEdit",method = RequestMethod.POST)
    public String userEdit(String signature,String hobby,Model model,HttpSession session){
        String userName = (String) session.getAttribute(USER_NAME);
        User user1=new User();
        user1.setUserName(userName);
        if (signature!=null&&!signature.isEmpty()) {
            user1.setSignature(signature);
            userDao.updateUserSignature(user1);
        }
        if (hobby!=null&&!hobby.isEmpty()) {
            user1.setHobby(hobby);
            userDao.updateUserHobby(user1);
        }
        User user = userDao.selectByUserName(userName);
        model.addAttribute("user",user);
        return "/jsp/userEdit.jsp";
    }
}
