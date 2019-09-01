package com.controller;

import java.util.List;
import com.model.cart.Cart;
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
 * @description: 购物车控制器
 * @author: cnzxo
 * @create: 2019-08-09 07:08
 **/
@Controller
@RequestMapping("cart")
public class CartController {

    /**
     * 默认页面
     */
    @RequestMapping("index")
    public String Index(Model model, HttpSession session, HttpServletRequest request){
        if(session.getAttribute("uid") == null){
            return "redirect:../user/login";
        }
        Cart cart = new Cart();
        List list = cart.cartList((String)session.getAttribute("uid"));
        model.addAttribute("list", list);
        model.addAttribute("title", "购物车");
        //移动设备自适应
        if(Com.isMobileDevice(request)){
            return "m/cart/index";
        }
        return "cart/index";
    }

    /**
     * 加入购物车
     * @param session 页面属性
     * @param attributes 传参
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
            Cart cart = new Cart();
            String oid = com.NID();
            String time = com.Time();
            Goods goods = new Goods();
            List list = goods.Info(gid);
            String title = (String)list.get(1);
            String price = (String)list.get(4);
            cart.Add(gid, oid, uid, title, price, time);
            attributes.addFlashAttribute("msg", "已加入购物车");
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
        Cart cart = new Cart();
        if(cart.Del(oid)){
            attributes.addFlashAttribute("msg", "删除成功");
        }
        else{
            attributes.addFlashAttribute("msg", "删除失败");
        }
        return "redirect:index";
    }
}
