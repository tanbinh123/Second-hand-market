package com.controller;

import com.model.index.Main;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 * @program: mvc
 * @description: 初始化控制器
 * @author: cnzxo
 * @create: 2019-08-16 21:55
 **/
public class InitController extends Thread implements ServletContextListener {

    private ServletContextEvent event;
    private boolean state = true;

    public void contextInitialized(ServletContextEvent event) {
        this.event = event;
        System.out.println("系统已启动");
        super.start();
    }

    public void contextDestroyed(ServletContextEvent event) {
        System.out.println("系统已关闭");
        state = false;
    }

    @Override
    public void run(){
        while(state){
            try {
                event.getServletContext().setAttribute("goodsList", Main.AllGoods());
                event.getServletContext().setAttribute("classify", Main.AllClass());
                event.getServletContext().setAttribute("recommend", Main.Recommend());
                event.getServletContext().setAttribute("classLeft", Main.Detail("手机", "1,2"));
                event.getServletContext().setAttribute("classRight", Main.Detail("手机", "3,4"));
                Thread.sleep(60000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
