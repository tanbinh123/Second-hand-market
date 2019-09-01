package com.model.index;

import java.util.List;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * @program: team2
 * @description: 首页数据
 * @author: cnzxo
 * @create: 2019-08-05 20:42
 */
public class Main {

    /**
     * 获取全部分类
     * @return 全部分类
     */
    public static List AllClass(){
        try{
            Db db = new Db();
            ResultSet rs = db.fetchAll("classify");
            Com com = new Com();
            return com.ResultSetToList(rs);
        }catch(Exception e){
            System.out.println("[Main.AllClass]:Unable to find classify.");
            return null;
        }
    }

    /**
     * 获取商品信息
     * @return 信息列表
     */
    public static List AllGoods(){
        List<String> arr = new ArrayList<>();   // 保存商品信息
        try{
            Db db = new Db();
            ResultSet rs = db.fetchAllDesc("goods");    // 查询全部商品
            while(rs.next()){
                arr.add(rs.getString(2));
                arr.add(rs.getString(5));
                arr.add(rs.getString(6));
                arr.add(rs.getString(7));
                arr.add(rs.getString(8));
                arr.add(rs.getString(9));
                arr.add(rs.getString(10));
            }
        }catch(Exception e){
            System.out.println("[User.getUserList]:Unable to find goods.");
        }
        return arr;
    }

    /**
     * 获取推荐商品
     * @return 推荐商品
     */
    public static List Recommend(){
        try{
            Db db = new Db();
            ResultSet s = db.Query("select gid,title,image from `goods` where recommend='1' order by id desc limit 5");
            Com com = new Com();
            return com.ResultSetToList(s);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 获取分类商品
     * @param classify 商品类别
     * @return 分类商品
     */
    public static List Detail(String classify, String limit){
        try{
            Db db = new Db();
            ResultSet s = db.Query("select gid,title,image from `goods` where classify='" + classify + "' order by id desc limit " + limit);
            Com com = new Com();
            return com.ResultSetToList(s);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
