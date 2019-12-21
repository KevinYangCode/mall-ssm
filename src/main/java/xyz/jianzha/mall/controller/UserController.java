package xyz.jianzha.mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import xyz.jianzha.mall.pojo.User;
import xyz.jianzha.mall.service.UserService;

import javax.servlet.http.HttpSession;

/**
 * 用户信息请求处理
 *
 * @author Y_Kevin
 * @date 2019/6/9 - 09:30
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 获取注册页面
     *
     * @return
     */
    @RequestMapping("getRegister")
    public String getRegister() {
        return "register";
    }

    /**
     * 检测邮箱是否已用
     *
     * @param email
     * @return
     */
    @RequestMapping("checkEmail")
    @ResponseBody
    public String checkEmail(String email) {
        System.out.println("aa");
        String isExist = userService.checkEmail(email);
        return isExist;
    }

    /**
     * 注册用户
     *
     * @param model
     * @param user
     * @return
     */
    @RequestMapping("register")
    public String register(Model model, User user) {
        model.addAttribute("email", user.getEmail());
        userService.register(user);
        return "login";
    }

    /**
     * 获取登录页面
     *
     * @return
     */
    @RequestMapping("getLogin")
    public String getLogin() {
        return "login";
    }

    /**
     * 登录用户
     *
     * @param user
     * @param session
     * @return
     */
    @RequestMapping("login")
    @ResponseBody
    public String login(User user, HttpSession session) {
        String state = null;
        User user1 = userService.loginUser(user);
        if (user1 != null) {
            session.setAttribute("UserData", user1);
            state = "success";
        } else {
            state = "false";
        }
        return state;
    }

    /**
     * 获取商城主页
     *
     * @return
     */
    @RequestMapping("main")
    public String main() {
        return "main";
    }

    /**
     * 用户退出
     *
     * @param model
     * @param session
     * @return
     */
    @RequestMapping("exit")
    public String exit(Model model, HttpSession session) {
        User user = (User) session.getAttribute("UserData");
        model.addAttribute("email", user.getEmail());
        session.removeAttribute("UserData");
        return "login";
    }

    @RequestMapping("person")
    public String person() {
        return "person";
    }

    @RequestMapping("update")
    @ResponseBody
    public String update(User user, HttpSession session) {
        String msg = "1";
        try {
            userService.updateUserData(user);
            User user1 = (User) session.getAttribute("UserData");
            user.setPassword(user1.getPassword());
            user1 = userService.loginUser(user);
            System.out.println("密码" + user.getPassword());
            session.setAttribute("UserData", user1);
            msg = "0";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return msg;
    }


}
