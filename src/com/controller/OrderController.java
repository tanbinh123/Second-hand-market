package com.controller;

import java.util.List;
import com.model.index.Com;
import com.model.goods.Goods;
import com.model.order.Order;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * @program: team2
 * @description: 订单控制器
 * @author: cnzxo
 * @create: 2019-08-09 07:23
 **/
@Controller
@RequestMapping("order")
public class OrderController {

    /**
     * 订单页面
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("index")
    public String Index(Model model, HttpSession session, HttpServletRequest request){
        if(session.getAttribute("uid") == null){
            return "redirect:../user/login";
        }
        else{
            String uid = (String)session.getAttribute("uid");
            Order order = new Order();
            List list = order.orderList(uid);
            model.addAttribute("list", list);
            model.addAttribute("title", "我的订单");
            //移动设备自适应
            if(Com.isMobileDevice(request)){
                return "m/order/index";
            }
            return "order/index";
        }
    }

    /**
     * 提交订单
     * @param session 会话属性
     * @param attributes 页面属性
     * @return 显示页面
     */
    @RequestMapping("add")
    public String Add(HttpSession session, RedirectAttributes attributes){
        if(session.getAttribute("uid") == null){
            return "redirect:../user/login";
        }
        else{
            Com com = new Com();
            String gid = (String)session.getAttribute("gid");
            String uid = (String)session.getAttribute("uid");
            Order order = new Order();
            String oid = com.NID();
            String time = com.Time();
            Goods goods = new Goods();
            List list = goods.Info(gid);
            String seller = (String)list.get(0);
            String title = (String)list.get(1);
            String image = (String)list.get(2);
            String about = (String)list.get(3);
            String price = (String)list.get(4);
            order.Add(gid, oid, uid, seller, title, image, about, price, time);
            attributes.addFlashAttribute("msg", "下单成功");
            return "redirect:index";
        }
    }

    /**
     * 删除订单
     * @param oid 订单号
     * @param attributes 页面属性
     * @return 显示页面
     */
    @RequestMapping("del")
    public String Del(String oid, RedirectAttributes attributes){
        Order order = new Order();
        if(order.Del(oid)){
            attributes.addFlashAttribute("msg", "删除成功");
        }
        else{
            attributes.addFlashAttribute("msg", "删除失败");
        }
        return "redirect:index";
    }
}
