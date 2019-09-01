package com.model.store;

import com.model.index.Db;
import java.sql.ResultSet;

/**
 * @program: team2
 * @description: 店铺模型
 * @author: cnzxo
 * @create: 2019-08-09 09:06
 **/
public class Store {

    /**
     * 参数表
     */
    private String UID;
    private String SID;
    private String Title;
    private String Image;
    private String About;

    /**
     * 带参构造
     */
    public Store(){
        this.UID = "";
        this.SID = "";
        this.Title = "";
        this.Image = "";
        this.About = "";
    }

    /**
     * 获取用户ID
     * @return 用户ID
     */
    public String getUID(){
        return this.UID;
    }

    /**
     * 获取店铺ID
     * @return 店铺ID
     */
    public String getSID(){
        return this.SID;
    }

    /**
     * 获取店铺标题
     * @return 店铺标题
     */
    public String getTitle(){
        return this.Title;
    }

    /**
     * 获取店铺头像
     * @return 店铺头像
     */
    public String getImage() { return this.Image; }

    /**
     * 获取店铺简介
     * @return 店铺简介
     */
    public String getAbout(){
        return this.About;
    }

    /**
     * 申请开店
     * @param uid 用户ID
     * @param sid 店铺ID
     * @param title 店铺标题
     * @param about 店铺简介
     * @return 开店状态
     */
    public boolean Apply(String uid, String sid, String title, String about){
        try{
            Db db = new Db();
            this.UID = uid;
            this.SID = sid;
            this.Title = title;
            this.About = about;
            String [] key = {"sid", "title", "about", "seller"};
            String [] val = {this.SID, this.Title, this.About, this.UID};
            db.Insert("store", key, val);
            return true;
        }
        catch (Exception e){
            System.out.println("[Store.Apply]:Unable to apply the store.");
            return false;
        }
    }

    /**
     * 店铺信息
     * @param sid 店铺ID
     * @return 店铺状态
     */
    public boolean Info(String sid){
        try{
            Db db = new Db();
            ResultSet rs = db.fetchOne("store", "sid", sid);
            rs.next();
            this.UID = rs.getString("seller");
            this.Title = rs.getString("title");
            this.Image = rs.getString("image");
            this.About = rs.getString("about");
            this.SID = rs.getString("sid");
            return true;
        }
        catch (Exception e){
            System.out.println("[Store.Info]:Unable to find " + sid + " store.");
            return false;
        }
    }
}
