package club.wlqzz.controller;

import javax.servlet.http.HttpSession;

import club.wlqzz.pojo.User;
import club.wlqzz.service.UserService;
import club.wlqzz.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String userList() throws Exception {
        return "login";
    }

    @RequestMapping("/logincheck")
    public String login(User user, Model model, HttpSession httpSession) throws Exception {
        User user1 = userService.login(user);
        if (user1 != null) {
            httpSession.setAttribute("user", user1);
            if (user1.getType().equals("zuke")) {
                return "main";
            } else {
                return "main1";
            }
        } else {
            String error = "error";
            model.addAttribute("error", error);
            return "login";
        }
    }

    @GetMapping("/reg")
    public String Reg(){
        return "reg";
    }

    @PostMapping("/doReg")
    public String doReg(User user) throws Exception {
        user.setType("zuke");
        userService.addUser(user);
        return "redirect:login";
    }

    @RequestMapping("/toindex")
    public String toindex(Model model) throws Exception {
        return "index";
    }

    @RequestMapping("/main")
    public String toMain() throws Exception {
        return "main";
    }

    @RequestMapping("/main1")
    public String toMain1() throws Exception {
        return "main1";
    }
}

