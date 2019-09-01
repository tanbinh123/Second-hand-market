package com.controller;

import java.util.Map;
import java.util.Date;
import java.io.IOException;
import java.io.OutputStream;
import com.model.vcode.Vcode;
import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: www
 * @description: 验证码控制器
 * @author: cnzxo
 * @create: 2019-08-13 11:08
 **/

@Controller
@RequestMapping("vcode")
public class VcodeController {

    /**
     * 生成验证码
     * @param request 页面请求
     * @param response 页面属性
     * @throws Exception 抛出异常
     */
    @RequestMapping("vcode")
    public void Vcode(HttpServletRequest request, HttpServletResponse response) throws Exception {
        OutputStream os = response.getOutputStream();
        Map<String,Object> map = Vcode.getImageCode(60, 20);
        request.getSession().setAttribute("vcode", map.get("strEnsure").toString().toLowerCase());
        request.getSession().setAttribute("time",new Date().getTime());
        try {
            ImageIO.write((BufferedImage) map.get("image"), "JPEG", os);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
