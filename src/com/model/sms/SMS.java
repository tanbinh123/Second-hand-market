package com.model.sms;

import com.github.qcloudsms.SmsSingleSender;
import com.github.qcloudsms.SmsSingleSenderResult;
import com.github.qcloudsms.httpclient.HTTPException;
import org.json.JSONException;
import java.io.IOException;

/**
 * @program: mvc
 * @description: 短信测试
 * @author: cnzxo
 * @create: 2019-08-17 11:46
 **/

public class SMS {
    public static void Send(String phone, String vcode) {
        // 短信应用 SDK AppID
        int appid = 1400246111; // SDK AppID 以1400开头
        // 短信应用 SDK AppKey
        String appkey = "97e9a6ac34608ddc250eee507f673fc0";
        // 需要发送短信的手机号码
        String[] phoneNumbers = {phone};
        // 短信模板 ID，需要在短信应用中申请
        int templateId = 398836; // NOTE: 这里的模板 ID`7839`只是示例，真实的模板 ID 需要在短信控制台中申请
        // 签名
        String smsSign = "大笑江湖"; // NOTE: 签名参数使用的是`签名内容`，而不是`签名ID`。这里的签名"腾讯云"只是示例，真实的签名需要在短信控制台申请

        try {
            String[] params = {vcode, "5"};
            SmsSingleSender sender = new SmsSingleSender(appid, appkey);
            SmsSingleSenderResult result = sender.sendWithParam("86", phoneNumbers[0],
                    templateId, params, smsSign, "1", "1");  // 签名参数未提供或者为空时，会使用默认签名发送短信
            System.out.println(result);
        } catch (HTTPException | JSONException | IOException e) {
            // HTTP 响应码错误
            e.printStackTrace();
        }
    }
}
