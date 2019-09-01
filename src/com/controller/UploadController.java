package com.controller;

import java.util.Date;
import com.model.upload.Upload;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServlet;

/**
 * @program: team2
 * @description: 文件上传控制器
 * @author: cnzxo
 * @create: 2019-08-06 20:07
 */
@Controller
@RequestMapping("upload")
public class UploadController{

    /**
     * 文件上传页面
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("index")
    public String Index(Model model){
        model.addAttribute("title", "文件上传");
        return "upload/index";
    }

    /**
     * 上传请求页面
     * @param file 上传文件
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("upload")
    public String  Upload(@RequestParam("file") CommonsMultipartFile file, Model model){
        Upload up = new Upload();
        String url = new Date().getTime() + file.getOriginalFilename();
        if(up.Fun(file, url)){
            model.addAttribute("imgUrl", "../../upload/" + url);
            model.addAttribute("msg", "上传成功");
            return "upload/index";
        }
        else{
            model.addAttribute("msg", "上传失败");
            return "upload/index";
        }
    }
}
