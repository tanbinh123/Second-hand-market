package com.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @program: mvc
 * @description: 测试控制器
 * @author: cnzxo
 * @create: 2019-08-28 14:21
 **/

@RequestMapping("test")
public class TestController {

    @RequestMapping("index")
    public String Index(){
        return "test/index";
    }

    @RequestMapping(value = "login", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String Login(String username, String password){
        System.out.println(username);
        System.out.println(password);
        return "登录成功";
    }
}
