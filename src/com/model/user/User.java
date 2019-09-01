package com.model.user;

import java.sql.*;
import java.util.List;
import com.model.index.Db;
import com.model.index.Com;
import java.util.ArrayList;

/**
 * @program: team2
 * @description: 用户模型
 * @author: cnzxo
 * @create: 2019-08-09 09:13
 **/
public class User {

    /**
     * 用户信息
     */
    private String Username;
    private String Password;
    private String UID;
    private String Nickname;
    private String College;
    private String Room;
    private String Sid;
    private String Image;
    private final String Table = "user";
    private final String Table1 = "user_info";

    /**
     * 无参构造
     */
    public User(){
        this.Nickname = "";
        this.College = "";
        this.Room = "";
    }

    /**
     * 带参构造
     * @param username 用户名
     * @param password 密码
     */
    public User(String username, String password){
        this.Username = username;
        this.Password = password;
    }

    /**
     * 获取用户头像
     * @return 用户头像
     */
    public String getImage(){
        return this.Image;
    }

    /**
     * 获取用户昵称
     * @return 用户昵称
     */
    public String getNickname(){
        return this.Nickname;
    }

    /**
     * 获取用户名
     * @return 用户名
     */
    public String getUsername(){
        return this.Username;
    }

    /**
     * 获取学院名称
     * @return 学院名称
     */
    public String getCollege(){
        return this.College;
    }

    /**
     * 获取宿舍名称
     * @return 宿舍名称
     */
    public String getRoom(){
        return this.Room;
    }

    /**
     * 获取店铺ID
     * @return 店铺ID
     */
    public String getSid(){
        return this.Sid;
    }

    /**
     * 获取用户ID
     * @return 用户ID
     */
    public String getUid(){
        return this.UID;
    }

    /**
     * 登录验证
     * @return 登录状态
     */
    public boolean checkLogin(){
        try{
            Db db = new Db();
            ResultSet rs = db.fetchOne(this.Table, "username", this.Username);
            if(rs == null){
                return false;
            }
            else{
                rs.next();
                this.UID = rs.getString(4);
                ResultSet res = db.fetchOne(this.Table1, "uuid", this.UID);
                res.next();
                this.Image = res.getString("image");
                this.Nickname = res.getString("nickname");
                this.College = res.getString("college");
                this.Room = res.getString("room");
                this.Sid = res.getString("sid");
                Com com = new Com();
                String password = com.MD5(this.Password);
                return rs.getString("password").equals(password);
            }
        }
        catch (Exception e){
            return false;
        }
    }

    /**
     * 获取用户列表
     * @return 用户列表
     */
    public List getUserList() {
        List<String> l = new ArrayList<>();
        try{
            Db db = new Db();
            ResultSet rs = db.fetchAll(this.Table);
            while(rs.next()){
                l.add(rs.getString(2));
            }
        }catch(Exception e){
            System.out.println("[User.getUserList]:Unable to find users.");
        }
        return l;
    }

    /**
     * 用户注册
     * @return 注册状态
     */
    public boolean Register(){
        try{
            Db db = new Db();
            Com com = new Com();
            String uuid = com.UUID();
            String password = com.MD5(this.Password);
            String [] key = {"uuid", "username", "password"};
            String [] val = {uuid, this.Username, password};
            db.Insert(this.Table, key, val);
            String [] key1 = {"uuid", "username", "image"};
            String [] val1 = {uuid, this.Username, this.Image};
            db.Insert(this.Table1, key1, val1);
            return true;
        }
        catch (Exception e){
            System.out.println("[User.Register]:Unable to register this user.");
            return false;
        }
    }

    /**
     * 注册检测
     * @return 注册状态
     */
    public boolean checkRegister(){
        try{
            Db db = new Db();
            ResultSet rs = db.fetchOne(this.Table, "username", this.Username);
            rs.next();
            System.out.println("[User.checkRegister]:The user name " + rs.getString("username") + " already exists.");
            return false;
        }
        catch (Exception e){
            System.out.println("[User.checkRegister]:Unable to find " + this.Username);
            return true;
        }
    }

    /**
     * 修改信息
     * @param uid 用户ID
     * @param sid 店铺ID
     */
    public void addStore(String uid, String sid){
        Db db = new Db();
        String [] key = {"sid"};
        String [] val = {sid};
        db.Update("user_info", key, val, "uuid", uid);
    }

    /**
     * 获取店铺信息
     * @param uid 店铺ID
     * @return 店铺信息
     */
    public boolean getStore(String uid){
        try{
            Db db = new Db();
            ResultSet rs = db.fetchOne("user_info", "uuid", uid);
            rs.next();
            return rs.getString("sid") == null;
        }
        catch (Exception e){
            System.out.println("[User.getStore]:Unable to get the store.");
            return false;
        }
    }

    /**
     * 获取用户消息
     * @param uid 用户ID
     * @return 用户消息
     */
    public List getMessage(String uid){
        try{
            Db db = new Db();
            ResultSet rs = db.fetchDesc("message", "uid", uid);
            Com com = new Com();
            return com.ResultSetToList(rs);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
