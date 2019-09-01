package com.model.order;

import java.util.List;
import com.model.index.Com;
import com.model.index.Db;
import java.sql.ResultSet;

/**
 * @program: team2
 * @description: 订单模型
 * @author: cnzxo
 * @create: 2019-08-09 09:06
 **/
public class Order {

    public List orderList(String uid){
        try{
            Db db = new Db();
            ResultSet rs = db.fetchOne("order", "buyer", uid);
            Com com = new Com();
            return com.ResultSetToList(rs);
        }catch (Exception e){
            return null;
        }
    }

    /**
     * 创建订单
     * @param gid 商品ID
     * @param oid 订单ID
     * @param buyer 买家ID
     * @param seller 卖家ID
     * @param time 下单时间
     */
    public void Add(Object gid, String oid, String buyer, String seller, String title, String image, String about, String price, String time){
        Db db = new Db();
        String [] key = {"gid", "oid", "buyer", "seller", "title", "image", "about", "price", "time"};
        String [] val = {(String)gid, oid, buyer, seller, title, image, about, price, time};
        db.Insert("order", key, val);
    }

    /**
     * 删除订单
     * @param oid 订单号
     * @return 删除情况
     */
    public boolean Del(String oid){
        try{
            Db db = new Db();
            db.Delete("order", "oid", oid);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
