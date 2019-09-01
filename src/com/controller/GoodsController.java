package com.controller;

import java.util.Date;
import java.util.List;
import java.util.ArrayList;
import com.model.goods.Goods;
import com.model.index.Com;
import com.model.upload.Upload;
import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * @program: team2
 * @description: 商品控制器
 * @author: cnzxo
 * @create: 2019-08-09 07:14
 **/
@Controller
@RequestMapping("goods")
public class GoodsController {

    /**
     * 参数变量
     */
    private String Img = null;
    private String Gid = null;
    private String Url = "../static/img/login.png";

    /**
     * 商品首页
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("index")
    public String Index(Model model){
        model.addAttribute("title", "商品首页");
        return "goods/index";
    }

    /**
     * 商品列表
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("list")
    public String List(String classify, Model model, HttpServletRequest request){
        if("".equals(classify) || classify == null){
            Goods goods = new Goods();
            List list = goods.AllClass();
            model.addAttribute("list", list);
            model.addAttribute("title", "商品列表");
            //移动设备自适应
            if(Com.isMobileDevice(request)){
                return "m/goods/list";
            }
            return "goods/list";
        }
        Goods goods = new Goods();
        List list = goods.SomeClass(classify);
        model.addAttribute("list", list);
        model.addAttribute("title", "商品列表");
        //移动设备自适应
        if(Com.isMobileDevice(request)){
            return "m/goods/list";
        }
        return "goods/list";
    }

    /**
     * 商品详情
     * @param model 页面属性
     * @param session 会话属性
     * @param request 请求属性
     * @return 显示页面
     */
    @RequestMapping("detail")
    public String Detail(Model model, HttpSession session, HttpServletRequest request){
        model.addAttribute("title", "商品详情");        //页面标题
        if(request.getParameter("gid") == null){
            //移动设备自适应
            if(Com.isMobileDevice(request)){
                return "m/goods/error";
            }
            return "goods/error";
        }
        else{
            String gid = request.getParameter("gid");
            session.setAttribute("gid", gid);
            Goods goods = new Goods();
            List list = goods.Info(gid);
            if(list != null){
                model.addAttribute("list", list);
                //移动设备自适应
                if(Com.isMobileDevice(request)){
                    return "m/goods/detail";
                }
                return "goods/detail";
            }
            else{
                //移动设备自适应
                if(Com.isMobileDevice(request)){
                    return "m/goods/error";
                }
                return "goods/error";
            }
        }
    }

    /**
     * 商品管理
     * @param session 会话属性
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("manager")
    public String Manager(HttpSession session, Model model){
        if(session.getAttribute("uid") == null){
            return "redirect:../user/login";
        }
        else{
            if(session.getAttribute("sid") == null){
                return "redirect:../store/apply";
            }
            else{
                Goods goods = new Goods();
                String sid = (String)session.getAttribute("sid");
                ArrayList list = (ArrayList)goods.All((sid));
                model.addAttribute("list", list);
                model.addAttribute("title", "商品管理");
                return "goods/manager";
            }
        }
    }

    @RequestMapping("online")
    public String Online(HttpSession session, Model model){
        if(session.getAttribute("uid") == null){
            return "redirect:../user/login";
        }
        if(session.getAttribute("sid") == null){
            return "redirect:../store/apply";
        }
        Goods goods = new Goods();
        String sid = (String)session.getAttribute("sid");
        ArrayList list = (ArrayList)goods.All((sid));
        model.addAttribute("list", list);
        model.addAttribute("title", "上架下架");
        return "goods/online";
    }

    @RequestMapping("add_online")
    public String AddOnline(String gid, RedirectAttributes attributes){
        Goods goods = new Goods();
        if(goods.AddOnline(gid)){
            attributes.addFlashAttribute("msg", "已上架");
            return "redirect:online";
        }
        attributes.addFlashAttribute("msg", "上架失败");
        return "redirect:online";
    }

    @RequestMapping("del_online")
    public String DelOnline(String gid, RedirectAttributes attributes){
        Goods goods = new Goods();
        if(goods.DelOnline(gid)){
            attributes.addFlashAttribute("msg", "已下架");
            return "redirect:online";
        }
        attributes.addFlashAttribute("msg", "下架失败");
        return "redirect:online";
    }

    @RequestMapping("upload")
    public String Upload(@RequestParam("file") CommonsMultipartFile file, RedirectAttributes attributes){
        Url = new Date().getTime()+file.getOriginalFilename();
        Upload.Fun(file, Url);
        Img = "../upload/" + Url;
        attributes.addFlashAttribute("msg", "上传成功");
        attributes.addFlashAttribute("img", Img);
        return "redirect:add";
    }

    /**
     * 添加商品
     * @param title 商品名称
     * @param about 商品简介
     * @param price 商品价格
     * @param session 会话属性
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("add")
    public String Add(String title, String about, String classify, String price, HttpSession session, Model model){
        if(Url != null){
            model.addAttribute("img", Img);
        }
        if(session.getAttribute("uid") == null){
            return "redirect:../user/login";
        }
        if(session.getAttribute("sid") == null){
            return "redirect:../store/apply";
        }
        if(title == null || "".equals(title) || about == null || "".equals(about)){
            model.addAttribute("title", "添加商品");
            return "goods/add";
        }
        else{
            String uid = (String)session.getAttribute("uid");
            String sid = (String)session.getAttribute("sid");
            Goods goods = new Goods();
            if(goods.Add(uid, sid, title, about, price, classify, Img)){
                model.addAttribute("msg", "添加成功");
                model.addAttribute("title", "添加商品");
                return "goods/add";
            }
            else{
                model.addAttribute("title", "添加商品");
                model.addAttribute("msg", "添加失败");
                return "goods/add";
            }
        }
    }

    /**
     * 上传商品图片
     * @param file 上传文件
     * @param attributes 页面属性
     * @return 显示页面
     */
    @RequestMapping("image")
    public String Image(@RequestParam("file") CommonsMultipartFile file, RedirectAttributes attributes){
        Url = new Date().getTime()+file.getOriginalFilename();
        Upload.Fun(file, Url);
        Img = "../upload/" + Url;
        attributes.addFlashAttribute("msg", "上传成功");
        attributes.addFlashAttribute("img", Img);
        Goods goods = new Goods();
        attributes.addFlashAttribute("list", goods.Info(Gid));
        return "redirect:update";
    }

    /**
     * 商品修改页面
     * @param gid 商品ID
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("update")
    public String Update(String gid, Model model){
        if(gid != null){
            Gid = gid;
            Goods goods = new Goods();
            List list = goods.Info(Gid);
            Img = (String)list.get(2);
            model.addAttribute("img", Img);
            model.addAttribute("list", list);
        }
        model.addAttribute("title", "更新商品");
        return "goods/update";
    }

    /**
     * 更新商品
     * @param title 商品名称
     * @param about 商品简介
     * @param price 商品价格
     * @param classify 商品分类
     * @param model 页面属性
     * @return 显示页面
     */
    @RequestMapping("getUpdate")
    public String getUpdate(String title, String about, String price, String classify, Model model){
        if(title == null || about == null || price == null || classify == null){
            return "goods/update";
        }
        Goods goods = new Goods();
        if(goods.Update(Gid, title, about, price, classify, Img)){
            model.addAttribute("img", Img);
            model.addAttribute("title", "更新商品");
            model.addAttribute("msg", "修改成功");
            return "goods/update";
        }
        else{
            model.addAttribute("img", Img);
            model.addAttribute("title", "更新商品");
            model.addAttribute("msg", "修改失败");
            return "goods/update";
        }
    }

    /**
     * 删除商品
     * @param gid 商品ID
     * @param attributes 传参属性
     * @param session 会话属性
     * @return 显示页面
     */
    @RequestMapping("del")
    public String Del(String gid, RedirectAttributes attributes, HttpSession session){
        if(session.getAttribute("uid") == null){
            return "redirect:../user/login";
        }
        else{
            if(session.getAttribute("sid") == null){
                return "redirect:../store/apply";
            }
            else{
                if(gid == null || "".equals(gid)){
                    return "redirect:manager";
                }
                else{
                    Goods goods = new Goods();
                    if(goods.Del(gid)){
                        attributes.addFlashAttribute("msg", "删除成功");
                        return "redirect:manager";
                    }
                    else{
                        attributes.addFlashAttribute("msg", "删除失败");
                        return "redirect:manager";
                    }
                }
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
        model.addAttribute("title", "商品不存在");
        return "goods/error";
    }

    @PostMapping("comment_list")
    @ResponseBody
    public List CommentList(String gid){
        Goods goods = new Goods();
        return goods.getComment(gid);
    }

    /**
     * 提交评论
     * @param gid 商品ID
     * @param nickname 用户昵称
     * @param content 评论内容
     * @param session 会话属性
     */
    @RequestMapping("comment")
    public void Comment(String gid, String nickname, String content, HttpSession session){
        Goods goods = new Goods();
        String date = Com.Time();
        String uid = (String)session.getAttribute("uid");
        goods.Comment(gid, uid, nickname, content, date);
    }
}
