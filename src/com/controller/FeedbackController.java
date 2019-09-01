package com.controller;

import com.model.feedback.feedback;
import com.model.index.Db;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.*;

/**
 * 反馈web
 */
@Controller
@RequestMapping("feedback")
public class FeedbackController{

    /**
     * 提交反馈
     * 默认页面
     * @param model
     * @return
     */
    @RequestMapping("page")
    public String Page(Model model){
            model.addAttribute("title","提交反馈");
            return "feedback/page";
    }

    /**
     * 查询反馈
     * @param model
     * @return
     */
    @RequestMapping("query")
    public String Query(Model model){
        model.addAttribute ("title","查询反馈");
        return "feedback/query";
    }

    @RequestMapping("result")
    public String Result(String author, Model model){
        List list = new ArrayList();
        try{
            Db db = new Db ();
            ResultSet rs = db.fetchOne ("feedback", "author", author);
            try{
                ResultSetMetaData md = rs.getMetaData();
                int columnCount = md.getColumnCount();
                while (rs.next()) {
                    Map rowData = new HashMap ();
                    for (int i = 1; i <= columnCount; i++) {
                        rowData.put(md.getColumnName(i), rs.getObject(i));
                    }
                    list.add(rowData);
                }
            }catch (Exception e){
                e.printStackTrace();
                return null;
            }
            model.addAttribute ("title", "查询到的反馈");   //页面标题
            model.addAttribute ("list", list);  //传参到视图
        }catch (Exception e){
            e.printStackTrace ();
        }
        return "feedback/result";
    }

    /**
     * 传入数据
     * @param author
     * @param title
     * @param content
     * @param date
     * @return
     */
    @RequestMapping("add")
    public String Add(String author, String title, String content, String date){
        feedback fb = new feedback ();
        fb.Add (author, title, content, date);
        return "feedback/success";
    }

    @RequestMapping("success")
    public String Success(){
        return "feedback/success";
    }
}
