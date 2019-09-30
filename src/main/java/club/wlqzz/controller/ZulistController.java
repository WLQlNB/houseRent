package club.wlqzz.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import club.wlqzz.pojo.*;
import club.wlqzz.service.HouselistService;
import club.wlqzz.service.UserlistService;
import club.wlqzz.service.ZulistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/zulist")
public class ZulistController {
    @Autowired
    private ZulistService zulistService;
    @Autowired
    private UserlistService userlistService;
    @Autowired
    private HouselistService houselistService;

    //跳到增添合同的页面
    @RequestMapping("/toaddhetong")
    public String toaddhetong(Model model, String house_id) {
        Hetong hetong = new Hetong();
        hetong.setHouse_id(house_id);
        Houselist houselist=houselistService.findhouseid(house_id);
        hetong.setAddress(houselist.getAddress());
        model.addAttribute("hetong", hetong);
        model.addAttribute("mainPage", "addhetong.jsp");
        return "main1";
    }

    //管理员查看所有在租列表
    @RequestMapping("/findzulist")
    public String findzulist(Model model, @RequestParam(required = false, defaultValue = "1") Integer page,
                             @RequestParam(required = false, defaultValue = "2") Integer pageSize) throws Exception {
        PageHelper.startPage(page, pageSize);
        List<Zulist> zulist = zulistService.findzuuserlist();
        PageInfo<Zulist> p = new PageInfo<Zulist>(zulist);
        model.addAttribute("p", p);
        model.addAttribute("zulist", zulist);
        model.addAttribute("mainPage", "zulist.jsp");
        return "main1";
    }

    //查看我的在租列表
    @RequestMapping("/myzulist")
    public String myzulist(Model model, HttpSession httpSession, @RequestParam(required = false, defaultValue = "1") Integer page,
                           @RequestParam(required = false, defaultValue = "2") Integer pageSize) throws Exception {

        User user1 = (User) httpSession.getAttribute("user");
        Userlist userlist = userlistService.findhasuserlist(user1.getId());
        PageHelper.startPage(page, pageSize);
        List<Userlist> list = userlistService.getUserzuList(userlist.getId());
        PageInfo<Userlist> p = new PageInfo<Userlist>(list);
        model.addAttribute("userlistzu", list);
        model.addAttribute("p", p);
        model.addAttribute("mainPage", "myzulist.jsp");
        return "main";
    }

}
