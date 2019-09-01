package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: www
 * @description: 地图控制器
 * @author: cnzxo
 * @create: 2019-08-13 21:55
 **/
@Controller
@RequestMapping("map")
public class MapController {

    @RequestMapping("index")
    public String Index(Model model){
        model.addAttribute("title", "网站地图");
        return "map/index";
    }
}
