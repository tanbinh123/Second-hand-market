package com.model.cart;

import com.model.index.Db;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @program: team2
 * @description: 购物车模型
 * @author: cnzxo
 * @create: 2019-08-10 14:53
 **/
public class Cart {

    /**
     * 获取购物车列表
     * @param uid 用户ID
     * @return 购物车列表
     */
    public List cartList(String uid){
        List list = new ArrayList();
        try{
            Db db = new Db();
            ResultSet rs = db.fetchOne("cart", "uid", uid);
            while(rs.next()){
                Map map = new HashMap();
                map.put("oid", rs.getString("oid"));
                map.put("title", rs.getString("title"));
                map.put("price", rs.getString("price"));
                map.put("time", rs.getString("time"));
                list.add(map);
            }
            return list;
        }catch (Exception e){
            return null;
        }
    }

    /**
     * 加入购物车
     * @param gid 商品ID
     * @param oid 订单ID
     * @param uid 用户ID
     * @param title 商品标题
     * @param price 商品价格
     * @param time 下单时间
     */
    public void Add(String gid, String oid, String uid, String title,String price, String time){
        Db db = new Db();
        String [] key = {"gid", "oid", "uid", "title", "price", "time"};
        String [] val = {gid, oid, uid, title, price, time};
        db.Insert("cart", key, val);
    }

    /**
     * 删除订单
     * @param oid 订单号
     * @return 删除情况
     */
    public boolean Del(String oid){
        try{
            Db db = new Db();
            db.Delete("cart", "oid", oid);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
