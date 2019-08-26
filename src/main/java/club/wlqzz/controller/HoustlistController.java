package club.wlqzz.controller;

import club.wlqzz.pojo.Houselist;
import club.wlqzz.service.HouselistService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

@Controller

public class HoustlistController {
    @Autowired
    private HouselistService houselistService;

    @RequestMapping("/houselist")
    public String houselist(Model model, @RequestParam(required = false, defaultValue = "1") Integer page,
                            @RequestParam(required = false, defaultValue = "2") Integer pageSize) {

        PageHelper.startPage(page, pageSize);
        List<Houselist> houselist = houselistService.selectAll();
        PageInfo<Houselist> p = new PageInfo<Houselist>(houselist);
        model.addAttribute("p", p);
        model.addAttribute("houselist", houselist);
        model.addAttribute("mainPage", "houselist");
        return "houselist";
    }

    @RequestMapping("/ahouselist")
    public String ahouselist(Model model, @RequestParam(required = false, defaultValue = "1") Integer page,
                             @RequestParam(required = false, defaultValue = "2") Integer pageSize) {
        PageHelper.startPage(page, pageSize);
        List<Houselist> houselist = houselistService.selectAll();
        PageInfo<Houselist> p = new PageInfo<Houselist>(houselist);
        model.addAttribute("p", p);
        model.addAttribute("houselist", houselist);
        model.addAttribute("mainPage", "ahouselist");
        return "ahouselist";
    }

    @RequestMapping("/addhouse")
    public String addhouse(Model model, Houselist houselist) {
        String houseid = houselist.getHouseid();
        Houselist houselist1 = houselistService.findhouseid(houseid);
        if (houselist1 != null) {
            model.addAttribute("error", "该房屋id已存在");
            model.addAttribute("houselist", houselist);
            model.addAttribute("mainPage", "addhouse");
            return "addhouse";
        } else {
            model.addAttribute("error", "添加成功");
            houselistService.inserthouse(houselist);
            model.addAttribute("houselist", houselist);
            model.addAttribute("mainPage", "addhouse");
            return "addhouse";
        }
    }

    @RequestMapping("/toaddhouse")
    public String toaddhoust(Model model) {
        model.addAttribute("mainPage", "addhouse.jsp");
        return "addhouse";
    }

    @RequestMapping("/deletehouse")
    public String deletehouse(Integer id) {
        houselistService.deletehouse(id);
        return "redirect:ahouselist";
    }

    @RequestMapping("/toahouselist")
    public String toahouselist() {
        return "ahouselist";
    }

    @RequestMapping("/findid")
    public String findid(Integer id, Model model) {
        Houselist list = houselistService.findid(id);
        model.addAttribute("houselist", list);
        model.addAttribute("mainPage", "changehouse");
        return "changehouse";
    }

    @RequestMapping("/findhouseidupdate")
    public String findhouseidupdate(Houselist houselist, Model model) {
        Houselist list = houselistService.findhouseidupdate(houselist);
        if (list != null) {
            model.addAttribute("houselist", houselist);
            model.addAttribute("mainPage", "changehouse");
            model.addAttribute("error", "该房屋id已存在");
            return "main1";
        } else {
            houselistService.updatehouse(houselist);
            model.addAttribute("houselist", houselist);
            model.addAttribute("mainPage", "changehouse");
            model.addAttribute("error", "更新成功");
            return "main1";
        }
    }
}
