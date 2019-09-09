package com.controller;

import com.model.index.Com;
import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: team2
 * @description: 首页控制器
 * @author: cnzxo
 * @create: 2019-08-09 07:22
 **/
@Controller
@RequestMapping("index")
public class IndexController {

    /**
     * 默认页面
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("index")
    public String Index(Model model, HttpServletRequest request, HttpSession session) {
        if(session.getAttribute("welcome") == null){
            session.setAttribute("welcome", Com.Time());
            model.addAttribute("msg", "欢迎来到转转网二手跳蚤市场！");
        }
        model.addAttribute("title", "转转网");
        //商品推荐
        model.addAttribute("recommend", request.getServletContext().getAttribute("recommend"));
        //分类商品1
        model.addAttribute("classLeft", request.getServletContext().getAttribute("classLeft"));
        //分类商品2
        model.addAttribute("classRight", request.getServletContext().getAttribute("classRight"));
        //全部商品
        model.addAttribute("goodsList", request.getServletContext().getAttribute("goodsList"));
        //商品分类
        model.addAttribute("classify", request.getServletContext().getAttribute("classify"));
        //移动设备自适应
        if(Com.isMobileDevice(request)){
            return "m/index/index";
        }
        return "index/index";
    }
}