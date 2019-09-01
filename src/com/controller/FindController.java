package com.controller;

import java.util.ArrayList;
import com.model.find.Find;
import com.model.index.Com;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @program: team2
 * @description: 发现控制器
 * @author: cnzxo
 * @create: 2019-08-09 07:12
 **/
@Controller
@RequestMapping("find")
public class FindController {

    /**
     * 默认页面
     * @param model 页面属性
     * @param keyword 关键词
     * @return 显示页面
     */
    @RequestMapping("index")
    public String Index(Model model, String keyword, HttpServletRequest request){
        if("".equals(keyword) || keyword == null){
            //移动设备自适应
            if(Com.isMobileDevice(request)){
                return "m/find/error";
            }
            return "find/error";
        }
        else{
            Find find = new Find();
            ArrayList list = (ArrayList)find.search(keyword);
            model.addAttribute("list", list);
            model.addAttribute("title", "搜索结果");
            //移动设备自适应
            if(Com.isMobileDevice(request)){
                return "m/find/index";
            }
            return "find/index";
        }
    }

    /**
     * 错误页面
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("error")
    public String Error(Model model){
        model.addAttribute("title", "未发现");
        return "find/error";
    }
}
