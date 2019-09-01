package com.controller;

import com.model.sms.SMS;
import com.model.vcode.Vcode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * @program: mvc
 * @description: 短信控制器
 * @author: cnzxo
 * @create: 2019-08-16 17:27
 **/

@Controller
@RequestMapping("sms")
public class SMSController {

    @RequestMapping("send")
    public void Send(String phone, HttpSession session){
        Map<String,Object> map = Vcode.getImageCode(60, 20);
        String vcode = map.get("strEnsure").toString().toLowerCase();
        session.setAttribute("vcode", vcode);
        SMS.Send(phone, vcode);
    }
}
