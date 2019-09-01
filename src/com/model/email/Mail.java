package com.model.email;

/**
 * @program: www
 * @description: 邮件模型
 * @author: cnzxo
 * @create: 2019-08-16 15:50
 **/

public class Mail {
	
	static MailUtil mu = new MailUtil();
	
	public static boolean Send(String email, String vcode){
		try {
			MailConfig mc = new MailConfig();

			//设置发件人地址
			mc.setSenderAddress("www@cnzxo.com");
			//设置发件人账户名
			mc.setSenderAccount("www@cnzxo.com");
			//设置发件人密码(备注：密码需要用邮箱SMTP客户端授权密码，而非登录密码，此处需注意)
			mc.setSenderPassword("Zx5522055220");

			//设置邮件主题
			mc.setSubject("【转转网】邮箱验证码");
			//设置收件人地址，多个地址可用逗号隔开
			mc.setRecipientAddresses(email);
			//设置抄送人地址，多个地址可用逗号隔开
			//mc.setCopyToAddresses("2217709027@qq.com");
			//设置邮件内容
			String html = "<div>尊敬的" + email + "，您好</div><br>" +
					"<div><h1 style=\"color:#00500\">&nbsp;&nbsp;&nbsp;&nbsp;验证码：" + vcode + "</h1><div><br>" +
					"<div>感谢您对转转网的支持!</div>" +
					"<div>-----------------------------------------------------------</div>" +
					"<div>本邮件由转转网系统自动发出，请勿回复。</div>" +
					"<div>版权所有：辽宁科技大学大数据协会</div>" +
					"<div>开发团队：开发者大赛项目C组</div>" +
					"<div>QQ群：688723925</div>" +
					"<img src=\"http://140.143.33.99/static/img/logo.png\" width=\"100%\"/>";
			mc.setContent(html);
			//设置附件地址，多个附件地址用逗号隔开
			//String[] s = {"C:/测试附件1.txt","C:/测试附件2.pdf"};
			//mc.setAttachmentPaths(s);

			mu.sendMail(mc);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
