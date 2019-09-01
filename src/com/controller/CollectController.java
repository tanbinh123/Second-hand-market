package com.controller;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @program: team2
 * @description: 收藏夹控制器
 * @author: cnzxo
 * @create: 2019-08-09 07:08
 **/
@Controller
@RequestMapping("collect")
public class CollectController {

    /**
     * 默认页面
     */
    @RequestMapping("index")
    public String Index(Model model, HttpSession session){
        if(session.getAttribute("uid") == null){
            return "redirect:../user/login";
        }
        else{
            model.addAttribute("title","收藏夹");
            return "collect/index";
        }
    }
}
