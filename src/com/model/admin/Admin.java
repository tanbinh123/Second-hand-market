package com.model.admin;

import com.model.index.Db;
import java.sql.ResultSet;

/**
 * @program: team2
 * @description: 管理员模型
 * @author: cnzxo
 * @create: 2019-08-09 07:04
 **/
public class Admin {

    /**
     * 管理员登录
     * @param username 账号
     * @param password 密码
     * @return 登录情况
     */
    public boolean Login(String username, String password){
        username = username.trim();
        password = password.trim();
        try{
            Db db = new Db();
            ResultSet rs = db.fetchOne("admin", "username", username);
            rs.next();
            return rs.getString("password").equals(password);
        }catch (Exception e){
            System.out.println("[Admin.Login]:Unable to login this user.");
            return false;
        }
    }
}
