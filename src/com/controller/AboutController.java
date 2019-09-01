package com.controller;

import com.model.index.Com;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @program: team2
 * @description: 关于我们控制器
 * @author: cnzxo
 * @create: 2019-08-09 07:05
 **/
@Controller
@RequestMapping("about")
public class AboutController {

    /**
     * 默认页面
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("index")
    public String Index(Model model, HttpServletRequest request){
        model.addAttribute("title", "关于我们");
        //移动自适应
        if(Com.isMobileDevice(request)){
            return "m/about/index";
        }
        return "about/index";
    }

    /**
     * 网站简介
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("team")
    public String Team(Model model, HttpServletRequest request){
        model.addAttribute("title", "团队介绍");
        //移动自适应
        if(Com.isMobileDevice(request)){
            return "m/about/team";
        }
        return "about/team";
    }

    /**
     * 联系方式
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("contact")
    public String Contact(Model model, HttpServletRequest request){
        model.addAttribute("title", "联系方式");
        //移动自适应
        if(Com.isMobileDevice(request)){
            return "m/about/contact";
        }
        return "about/contact";
    }

    /**
     * 办公地址
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("address")
    public String Address(Model model, HttpServletRequest request){
        model.addAttribute("title", "办公地址");
        //移动自适应
        if(Com.isMobileDevice(request)){
            return "m/about/address";
        }
        return "about/address";
    }
}
