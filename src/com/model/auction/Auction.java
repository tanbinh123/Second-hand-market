package com.model.auction;

import com.model.index.Com;
import com.model.index.Db;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @program: www
 * @description: 拍卖会模型
 * @author: cnzxo
 * @create: 2019-08-15 22:39
 **/
public class Auction {

    /**
     * 检测商品api
     * @param gid 商品ID
     * @return 商品信息
     */
    public List Check(String gid){
        Db db = new Db();
        return Com.ResultSetToList(db.fetchOne("auction", "gid", gid));
    }

    /**
     * 获取商品列表
     * @param uid 商品ID
     * @return 商品列表
     */
    public List goodsList(String uid){
        Db db = new Db();
        return Com.ResultSetToList(db.Search("auction", "uid", uid));
    }

    /**
     * 获取订单列表
     * @param uid 商品ID
     * @return 订单列表
     */
    public List orderList(String uid){
        Db db = new Db();
        return Com.ResultSetToList(db.fetchOne("auction_order", "uid", uid));
    }

    /**
     * 添加商品
     * @param gid 商品ID
     * @param uid 用户ID
     * @param title 商品名称
     * @param price 商品价格
     * @return 执行状态
     */
    public boolean addOrder(String gid, String uid, String title, String price){
        try{
            Db db = new Db();
            String time = Com.Time();
            String [] key = {"gid", "uid", "title", "price", "time"};
            String [] val = {gid, uid, title, price, time};
            db.Insert("auction_order", key, val);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 添加拍卖
     * @param uid 用户ID
     * @param gid 商品ID
     * @param time 截止时间
     * @param price 商品价格
     * @return 执行结果
     */
    public boolean Add(String uid, String gid, String image, String title, String content, String time, String price){
        try{
            Db db = new Db();
            String [] key = {"uid", "gid", "image", "title", "content", "end_time", "begin_price"};
            String [] val = {uid, gid, image, title, content, time, price};
            db.Insert("auction", key, val);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 删除商品
     * @param gid 商品ID
     * @return 执行结果
     */
    public boolean Del(String gid){
        try{
            Db db = new Db();
            db.Delete("auction", "gid", gid);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 获取商品列表
     * @return 商品列表
     */
    public List List(){
        Db db = new Db();
        return Com.ResultSetToList(db.fetchAllDesc("auction"));
    }

    /**
     * 获取商品信息
     * @param gid 商品ID
     * @return 商品信息
     */
    public List Find(String gid){
        Db db = new Db();
        return Com.ResultSetToList(db.fetchOne("auction", "gid", gid));
    }
}
