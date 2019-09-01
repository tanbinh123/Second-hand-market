package com.controller;

import com.model.index.Com;
import com.model.task.Task;
import com.model.auction.Auction;

import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import com.model.upload.Upload;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.servlet.http.HttpSession;

/**
 * @program: www
 * @description: 拍卖会控制器
 * @author: cnzxo
 * @create: 2019-08-15 19:31
 **/

@Controller
@RequestMapping("auction")
public class AuctionController {

    /**
     * 数据成员
     */
    private String Img;

    /**
     * 构造函数
     */
    public AuctionController() {
        Img = null;
    }

    /**
     * 拍卖首页
     * @return 显示页面
     */
    @RequestMapping("index")
    public String Index(Model model, HttpSession session){
        if(session.getAttribute("auction") == null){
            Auction auction = new Auction();
            List list = auction.List();
            ArrayList<Object> data = new ArrayList<>();
            for (Object o : list) {
                Map map = (Map) o;
                for (Object key : map.keySet()) {
                    if ("gid".equals(key)) {
                        data.add(auction.Find((String) map.get(key)).get(0));
                    }
                }
            }
            session.setAttribute("auction", data);
            model.addAttribute("list", data);
        }
        else{
            model.addAttribute("list", session.getAttribute("auction"));
        }
        model.addAttribute("title", "拍卖会");
        return "auction/index";
    }

    /**
     * 拍卖详情
     * @return 显示页面
     */
    @RequestMapping("detail")
    public String Detail(String gid, Model model){
        if("".equals(gid) || gid == null){
            return "auction/error";
        }
        model.addAttribute("title", "拍卖详情");
        return "auction/detail";
    }

    /**
     * 检测拍卖情况
     * @param gid 商品ID
     * @return 执行结果
     */
    @PostMapping("check")
    @ResponseBody
    public List Check(String gid){
        Auction auction = new Auction();
        return auction.Check(gid);
    }

    /**
     * 上传图片
     * @param file 图片文件
     * @return 图片地址
     */
    @RequestMapping("upload")
    public String Upload(@RequestParam("file") CommonsMultipartFile file, RedirectAttributes attributes){
        //图片名称
        String url = new Date().getTime() + file.getOriginalFilename();
        //上传文件
        Upload.Fun(file, url);
        //图片路径
        Img = "../upload/" + url;
        //返回数据
        attributes.addFlashAttribute("img", Img);
        attributes.addFlashAttribute("msg", "上传成功");
        return "redirect:add";
    }

    /**
     * 添加商品
     * @param title 商品标题
     * @param content 商品简介
     * @param date 结束时间
     * @param price 商品价格
     * @return 显示页面
     */
    @RequestMapping("add")
    public String Add(String title, String content, String date, String price, Model model, RedirectAttributes attributes, HttpSession session){
        if("".equals(title)||title==null||"".equals(content)||content==null||"".equals(date)||date==null||"".equals(price)||price==null){
            model.addAttribute("title", "添加拍卖");
            return "auction/add";
        }
        String gid = Com.UUID();
        Long time = Com.DateToLong(date);
        Long now = new Date().getTime();
        Auction auction = new Auction();
        String uid = "123";
        if(session.getAttribute("uid") != null){
            uid = (String)session.getAttribute("uid");
        }
        if(auction.Add(uid, gid, Img, title, content, time.toString(), price)){
            ThreadPoolExecutor executor = new ThreadPoolExecutor(5, 10, 200, TimeUnit.MILLISECONDS, new ArrayBlockingQueue<>(5));
            Task task = new Task(gid, time - now);
            executor.execute(task);
            executor.shutdown();
        }
        attributes.addFlashAttribute("msg", "添加成功");
        return "redirect:add";
    }

    /**
     * 删除拍卖
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("delete")
    public String Delete(Model model){
        model.addAttribute("title", "删除拍卖");
        return "auction/delete";
    }

    /**
     * 添加竞拍
     * @param gid 商品ID
     * @param title 商品标题
     * @param price 商品价格
     * @param session 会话属性
     * @return 执行状态
     */
    @RequestMapping("add_order")
    @ResponseBody
    public boolean AddOrder(String gid, String title, String price, HttpSession session){
        Auction auction = new Auction();
        return auction.addOrder((String)session.getAttribute("uid"), gid, title, price);
    }

    /**
     * 竞拍管理
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("order")
    public String Order(Model model){
        model.addAttribute("title", "我的竞拍");
        return "auction/order";
    }

    /**
     * 获取商品列表
     * @param session 会话属性
     * @return 商品列表
     */
    @RequestMapping("goods_list")
    @ResponseBody
    public List GoodsList(HttpSession session){
        Auction auction = new Auction();
        if(session.getAttribute("uid") == null){
            return null;
        }
        return auction.goodsList((String)session.getAttribute("uid"));
    }

    /**
     * 获取订单列表
     * @param session 会话属性
     * @return 订单列表
     */
    @RequestMapping("order_list")
    @ResponseBody
    public List OrderList(HttpSession session){
        Auction auction = new Auction();
        if(session.getAttribute("uid") == null){
            return null;
        }
        return auction.orderList((String)session.getAttribute("uid"));
    }

    /**
     * 删除拍卖
     * @param gid 商品ID
     * @return 显示页面
     */
    @RequestMapping("del")
    public String Del(String gid){
        Auction auction = new Auction();
        if(auction.Del(gid)){
            return "redirect:index";
        }
        return "redirect:error";
    }

    /**
     * 错误页面
     * @return 显示页面
     */
    @RequestMapping("error")
    public String Error(){
        return "auction/error";
    }

    /**
     * 拍卖管理
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("manager")
    public String Manager(Model model){
        model.addAttribute("title", "拍卖管理");
        return "auction/manager";
    }
}