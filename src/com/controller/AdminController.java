package com.controller;

import com.model.admin.Admin;
import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * @program: team2
 * @description: 管理员控制器
 * @author: cnzxo
 * @create: 2019-08-09 07:07
 **/
@Controller
@RequestMapping("admin")
public class AdminController {

    /**
     * 页面参数
     */
    private String Username;

    /**
     * 默认页面
     * @return 显示页面
     */
    @RequestMapping("index")
    public String Index(Model model, HttpSession session){
        if(session.getAttribute("admin") != null){
            model.addAttribute("title", "后台管理");
            return "admin/index";
        }
        return "redirect:login";
    }

    /**
     * 管理员登录
     * @param username 账号
     * @param password 密码
     * @param vcode 验证码
     * @param submit 是否已提交
     * @param session 会话属性
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("login")
    public String Login(String username, String password, String vcode, String submit, HttpSession session, Model model){
        // 判断是否已登录
        if(session.getAttribute("admin") != null){
            return "redirect:index";
        }
        // 判断是否已提交
        if("".equals(submit) || submit == null){
            model.addAttribute("title", "后台登陆");
            return "admin/login";
        }
        // 账号为空
        if("".equals(username) || username == null){
            model.addAttribute("title", "后台登陆");
            model.addAttribute("msg", "请输入账号");
            return "admin/login";
        }
        // 密码为空
        if("".equals(password) || password == null){
            model.addAttribute("title", "后台登陆");
            model.addAttribute("msg", "请输入密码");
            return "admin/login";
        }
        // 验证码是否为空
        if("".equals(vcode) || vcode == null){
            model.addAttribute("title", "后台登陆");
            model.addAttribute("msg", "请输入验证码");
            return "admin/login";
        }
        // 判断验证码是否正确
        if(!session.getAttribute("vcode").equals(vcode)){
            model.addAttribute("title", "后台登陆");
            model.addAttribute("msg", "验证码错误");
            return "admin/login";
        }
        // 验证账号和密码是否正确
        Admin admin = new Admin();
        if(admin.Login(username, password)){
            Username = username;
            session.setAttribute("admin", username);
            System.out.println("[LOGIN]:" + Username);
            return "redirect:index";
        }
        // 账号和密码错误
        model.addAttribute("title", "后台登陆");
        model.addAttribute("msg", "登录失败");
        return "admin/login";
    }

    /**
     * 注销登录
     * @param sessionStatus 会话状态
     * @param session 会话属性
     * @param attributes 页面参数
     * @return 显示页面
     */
    @RequestMapping("logout")
    public String Logout(SessionStatus sessionStatus, HttpSession session, RedirectAttributes attributes){
        System.out.println("[LOGOUT]:" + Username);
        sessionStatus.setComplete();
        session.invalidate();
        attributes.addFlashAttribute("msg", "注销成功");
        return "redirect:login";
    }

    /**
     * 后台首页
     * @return 显示页面
     */
    @RequestMapping("main")
    public String Main(){
        return "admin/main";
    }

    /**
     * 系统设置
     * @return 显示页面
     */
    @RequestMapping("setting")
    public String Setting(){
        return "admin/setting";
    }

    /**
     * 用户管理
     * @return 显示页面
     */
    @RequestMapping("user")
    public String User(){
        return "admin/user";
    }

    /**
     * 订单管理
     * @return 显示页面
     */
    @RequestMapping("order")
    public String Order(){
        return "admin/order";
    }

    /**
     * 商品管理
     * @return 显示页面
     */
    @RequestMapping("goods")
    public String Goods(){
        return "admin/goods";
    }

    /**
     * 购物管理
     * @return 显示页面
     */
    @RequestMapping("shop")
    public String Shop(){
        return "admin/shop";
    }

    /**
     * 安全管理
     * @return 显示页面
     */
    @RequestMapping("safe")
    public String Safe(){
        return "admin/safe";
    }

    /**
     * 财务管理
     * @return 显示页面
     */
    @RequestMapping("money")
    public String Money(){
        return "admin/money";
    }

    /**
     * 数据监控
     * @return 显示页面
     */
    @RequestMapping("data")
    public String Data(){
        return "admin/data";
    }
}
