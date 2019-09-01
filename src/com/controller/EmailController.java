package com.controller;

import com.model.email.Mail;
import com.model.vcode.Vcode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * @program: mvc
 * @description: 邮件控制器
 * @author: cnzxo
 * @create: 2019-08-17 00:09
 **/

@Controller
@RequestMapping("email")
public class EmailController {

    @RequestMapping("send")
    public void Send(String email, HttpSession session){
        Map<String,Object> map = Vcode.getImageCode(60, 20);
        String vcode = map.get("strEnsure").toString().toLowerCase();
        session.setAttribute("vcode", vcode);
        Mail.Send(email, vcode);
    }
}
