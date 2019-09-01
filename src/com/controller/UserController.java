package com.controller;

import java.util.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.index.Com;
import com.model.index.Db;
import com.model.user.User;
import com.model.upload.Upload;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 * @program: team2
 * @description: 用户控制器
 * @author: cnzxo
 * @create: 2019-08-09 07:34
 **/
@Controller
@RequestMapping("user")
public class UserController {

    /**
     * 参数表
     */
    private String Image;
    private String Nickname;
    private String Username;
    private String College;
    private String Room;

    /**
     * 构造函数
     */
    public UserController(){
        this.Image = "../static/img/login.png";
        this.Nickname = "";
        this.Username = "";
        this.College = "";
        this.Room = "";
    }

    /**
     * 用户首页
     * @param model 页面属性
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("index")
    public String Index(Model model, HttpSession session, HttpServletRequest request){
        if(session.getAttribute("uid") == null){
            return "redirect:login";
        }
        User user = new User();
        try{
            Db db = new Db();
            ResultSet res = db.fetchOne("user_info", "uuid", (String)session.getAttribute("uid"));
            res.next();
            Image = res.getString("image");
            Nickname = res.getString("nickname");
            College = res.getString("college");
            Room = res.getString("room");
            ArrayList<String> info = new ArrayList<>();
            info.add(Image);
            info.add(Nickname);
            info.add(Username);
            info.add(College);
            info.add(Room);
            model.addAttribute("info", info);
        }catch (Exception e){
            e.printStackTrace();
        }
        ArrayList list = (ArrayList)user.getUserList();
        model.addAttribute("list", list);
        model.addAttribute("uid", session.getAttribute("uid"));
        model.addAttribute("title","用户中心");
        //移动设备自适应
        if(Com.isMobileDevice(request)){
            return "m/user/index";
        }
        return "user/index";
    }

    /**
     * 用户登录
     * @param username 用户名
     * @param password 密码
     * @param model 页面属性
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("login")
    public String Login(String username, String password, String vcode, Model model, HttpSession session, HttpServletRequest request){
        //检测登录状态
        if(session.getAttribute("uid") != null){
            return "redirect:index";
        }
        //判断输入是否完整
        if(username == null || "".equals(username) || password == null || "".equals(password) || vcode == null || "".equals(vcode)){
            model.addAttribute("title","用户登录");
            //移动设备自适应
            if(Com.isMobileDevice(request)){
                return "m/user/login";
            }
            return "user/login";
        }
        //检测验证码是否正确
//        if(!vcode.equals(session.getAttribute("vcode"))){
//            model.addAttribute("msg","验证码错误");
//            model.addAttribute("title","用户登录");
//            //移动设备自适应
//            if(Com.isMobileDevice(request)){
//                return "m/user/login";
//            }
//            return "user/login";
//        }
        try{
            User user = new User(username, password);
            if(user.checkLogin()){
                this.Image = user.getImage();
                this.Nickname = user.getNickname();
                this.Username = user.getUsername();
                this.College = user.getCollege();
                this.Room = user.getRoom();
                ArrayList<String> info = new ArrayList<>();
                info.add(this.Image);
                info.add(this.Nickname);
                info.add(this.Username);
                info.add(this.College);
                info.add(this.Room);
                session.setAttribute("info", info);
                session.setAttribute("uid", user.getUid());
                session.setAttribute("sid", user.getSid());
                System.out.println("[LOGIN]:" + username);
                return "redirect:index";
            }
            else{
                model.addAttribute("title","用户登录");
                //移动设备自适应
                if(Com.isMobileDevice(request)){
                    return "m/user/login";
                }
                return "user/login";
            }
        }catch (Exception e){
            model.addAttribute("title","用户登录");
            //移动设备自适应
            if(Com.isMobileDevice(request)){
                return "m/user/login";
            }
            return "user/login";
        }
    }

    /**
     * 注销登录
     * @param sessionStatus 会话状态
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("logout")
    public String Logout(SessionStatus sessionStatus, HttpSession session){
        System.out.println("[LOGOUT]:" + this.Username);
        sessionStatus.setComplete();
        session.invalidate();
        return "redirect:index";
    }

    /**
     * 用户注册
     * @param username 用户名
     * @param password 密码
     * @param check 状态检测
     * @param model 页面属性
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("register")
    public String Register(String username, String password, String check, String vcode, Model model, HttpSession session, HttpServletRequest request){
        //判断输入是否完整
        if(username == null || "".equals(username) || password == null || "".equals(password) || check == null ||"".equals(check) || vcode == null || "".equals(vcode)){
            model.addAttribute("title","用户注册");
            //移动设备自适应
            if(Com.isMobileDevice(request)){
                return "m/user/register";
            }
            return "user/register";
        }
        //检测两次密码是否一致
        if(!password.equals(check)){
            model.addAttribute("msg","两次密码不一致");
            model.addAttribute("title","用户注册");
            //移动设备自适应
            if(Com.isMobileDevice(request)){
                return "m/user/register";
            }
            return "user/register";
        }
        //检测验证码是否正确
        if(!vcode.equals(session.getAttribute("vcode"))){
            model.addAttribute("msg","验证码错误");
            model.addAttribute("title","用户注册");
            //移动设备自适应
            if(Com.isMobileDevice(request)){
                return "m/user/register";
            }
            return "user/register";
        }
        //实例化用户对象
        User user = new User(username, password);
        //检测用户名是否重复
        if(!user.checkRegister()){
            model.addAttribute("msg","账号已存在");
            //移动设备自适应
            if(Com.isMobileDevice(request)){
                return "m/user/register";
            }
            return "user/register";
        }
        //执行注册
        if (!user.Register()) {
            model.addAttribute("title","用户注册");
            //移动设备自适应
            if(Com.isMobileDevice(request)){
                return "m/user/register";
            }
            return "user/register";
        }
        //执行登录
        if(user.checkLogin()){
            //获取用户信息
            Image = user.getImage();
            Nickname = user.getNickname();
            Username = user.getUsername();
            College = user.getCollege();
            Room = user.getRoom();
            //将用户信息存入ArrayList
            ArrayList<String> info = new ArrayList<>();
            info.add(Image);
            info.add(Nickname);
            info.add(Username);
            info.add(College);
            info.add(Room);
            //添加session属性
            session.setAttribute("info", info);
            session.setAttribute("uid", user.getUid());
            session.setAttribute("sid", user.getSid());
            //控制台显示登录的用户
            System.out.println("[LOGIN]:" + username);
            return "redirect:index";
        }
        else{
            model.addAttribute("title","用户登录");
            //移动设备自适应
            if(Com.isMobileDevice(request)){
                return "m/user/login";
            }
            return "user/login";
        }
    }

    /**
     * 修改头像
     * @param model 页面属性
     * @param session 传递参数
     * @return 显示页面
     */
    @RequestMapping("img")
    public String Img(Model model, HttpSession session){
        if(session.getAttribute("uid") == null){
            return "redirect:../user/login";
        }
        model.addAttribute("title", "修改头像");
        return "user/img";
    }

    /**
     * 联系人
     * @param model 页面属性
     * @param session 传递参数
     * @return 显示页面
     */
    @RequestMapping("link")
    public String Link(Model model, HttpSession session){
        if(session.getAttribute("uid") == null){
            return "redirect:../user/login";
        }
        else{
            try{
                User user = new User();
                ArrayList list = (ArrayList)user.getUserList();
                model.addAttribute("list", list);
                model.addAttribute("title","联系人");
                return "user/link";
            }catch (Exception e){
                model.addAttribute("title","联系人");
                return "user/link";
            }
        }
    }

    /**
     * 用户信息
     * @param model 页面属性
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("info")
    public String Info(Model model, HttpSession session){
        if(session.getAttribute("uid") == null){
            return "redirect:../user/login";
        }
        else{
            try{
                Db db = new Db();
                ResultSet res = db.fetchOne("user_info", "uuid", (String)session.getAttribute("uid"));
                res.next();
                this.Image = res.getString("image");
                this.Nickname = res.getString("nickname");
                this.College = res.getString("college");
                this.Room = res.getString("room");
                ArrayList<String> info = new ArrayList<>();
                info.add(Image);
                info.add(Nickname);
                info.add(Username);
                info.add(College);
                info.add(Room);
                model.addAttribute("info", info);
                model.addAttribute("title","修改资料");
                return "user/info";
            }catch (Exception e){
                model.addAttribute("title","修改资料");
                return "user/info";
            }
        }
    }

    /**
     * 更新信息
     * @param nickname 昵称
     * @param college 学院
     * @param room 寝室号
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("update")
    public String Update(String nickname, String college, String room, HttpSession session){
        String uid = (String)session.getAttribute("uid");
        Db db = new Db();
        String [] key = {"nickname", "college", "room"};
        String [] val = {nickname, college, room};
        db.Update("user_info", key, val, "uuid", uid);
        return "redirect:../user/info";
    }

    /**
     * 更新头像
     * @param file 图片文件
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("userImg")
    public String UserImg(@RequestParam("file") CommonsMultipartFile file, HttpSession session){
        String url = new Date().getTime()+file.getOriginalFilename();
        Upload.Fun(file, url);
        String uid = (String)session.getAttribute("uid");
        Db db = new Db();
        String [] key = {"image"};
        String [] val = {"/upload/" + url};
        db.Update("user_info", key, val, "uuid", uid);
        return "redirect:../user/index";
    }

    @RequestMapping("message")
    public String Message(Model model, HttpSession session){
        if(session.getAttribute("uid") == null){    //登录检测
            return "redirect:login";
        }
        String uid = (String)session.getAttribute("uid");
        User user = new User();
        List list = user.getMessage(uid);
        if(list != null){
            model.addAttribute("list", list);
        }
        model.addAttribute("title", "消息中心");
        return "user/message";
    }
}
