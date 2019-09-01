package com.controller;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.index.Com;
import com.model.index.Db;
import com.model.user.User;
import com.model.store.Store;
import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: team2
 * @description: 店铺控制器
 * @author: cnzxo
 * @create: 2019-08-09 07:29
 **/
@Controller
@RequestMapping("store")
public class StoreController {

    /**
     * 默认页面
     * @param session 会话属性
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("index")
    public String Index(HttpSession session, Model model){
        if(checkUser(session)){
            return "redirect:../user/login";
        }
        if(checkStore(session)){
            return "redirect:../store/error";
        }
        model.addAttribute("title","卖家中心");
        return "store/index";
    }

    /**
     * 检测用户登录状态
     * @param session 会话属性
     * @return 登录状态
     */
    private static boolean checkUser(HttpSession session){
        return session.getAttribute("uid") == null;
    }

    /**
     * 检测店铺申请状态
     * @param session 会话属性
     * @return 申请状态
     */
    private static boolean checkStore(HttpSession session){
        return session.getAttribute("sid") == null;
    }

    /**
     * 申请开店
     * @param title 店铺名称
     * @param about 店铺简介
     * @param model 页面属性
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("apply")
    public String Apply(String title, String about, Model model, HttpSession session){
        model.addAttribute("title","申请开店");
        if(session.getAttribute("uid") == null){
            return "redirect:../user/login";
        }
        else{
            User user = new User();
            String uid = (String)session.getAttribute("uid");
            if(user.getStore(uid)){
                if(title == null || "".equals(title) || about == null || "".equals(about)){
                    return "store/apply";
                }
                else{
                    Store store = new Store();
                    Com com = new Com();
                    String sid = com.UUID();
                    if(store.Apply(uid, sid, title, about)){
                        user.addStore(uid, sid);
                        session.setAttribute("sid", sid);
                        return "redirect:../store/index";
                    }
                    else{
                        return "store/apply";
                    }
                }
            }
            else{
                return "store/apply";
            }
        }
    }

    /**
     * 店铺展示
     * @param sid 店铺ID
     * @param model 页面属性
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("show")
    public String Show(String sid, Model model, HttpSession session){
        model.addAttribute("title", "店铺展示");
        if(sid == null || "".equals(sid)){
            return "redirect:../store/error";
        }
        else{
            Store store = new Store();
            if(store.Info(sid)){
                ArrayList<String> info = new ArrayList<>();
                try{
                    Db db = new Db();
                    ResultSet rs = db.fetchOne("user_info", "uuid", store.getUID());
                    rs.next();
                    info.add(rs.getString("nickname"));
                }catch (Exception e){
                    e.printStackTrace();
                }
                try{
                    Db db = new Db();
                    ResultSet rs = db.fetchOne("goods", "sid", store.getSID());
                    Com com = new Com();
                    List goods = com.ResultSetToList(rs);
                    model.addAttribute("goods", goods);
                }catch (Exception e){
                    e.printStackTrace();
                }
                info.add(store.getImage());
                info.add(store.getTitle());
                info.add(store.getAbout());
                session.setAttribute("info", info);
                return "store/show";
            }
            else{
                return "redirect:../store/error";
            }
        }
    }

    /**
     * 错误页面
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("error")
    public String Error(Model model){
        model.addAttribute("title","访问错误");
        return "store/error";
    }

    /**
     * 店铺详情
     * @param model 页面属性
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("detail")
    public String Detail(Model model, HttpSession session){
        if(checkUser(session)){
            return "redirect:../user/login";
        }
        if(checkStore(session)){
            return "redirect:../store/error";
        }
        model.addAttribute("title", "查看店铺");
        return "store/detail";
    }

    /**
     * 店铺装修
     * @param model 页面属性
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("decorate")
    public String Decorate(Model model, HttpSession session){
        if(checkUser(session)){
            return "redirect:../user/login";
        }
        if(checkStore(session)){
            return "redirect:../store/error";
        }
        model.addAttribute("title", "查看店铺");
        return "store/decorate";
    }

    /**
     * 订单管理
     * @param model 页面属性
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("order")
    public String Order(Model model, HttpSession session){
        if(checkUser(session)){
            return "redirect:../user/login";
        }
        if(checkStore(session)){
            return "redirect:../store/error";
        }
        model.addAttribute("title", "查看店铺");
        return "store/order";
    }

    /**
     * 评论管理
     * @param model 页面属性
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("comment")
    public String Comment(Model model, HttpSession session){
        if(checkUser(session)){
            return "redirect:../user/login";
        }
        if(checkStore(session)){
            return "redirect:../store/error";
        }
        model.addAttribute("title", "查看店铺");
        return "store/comment";
    }
}
