package com.model.goods;

import java.util.List;
import com.model.index.Db;
import java.sql.ResultSet;
import java.util.ArrayList;
import com.model.index.Com;

/**
 * @program: team2
 * @description: 商品模型
 * @author: cnzxo
 * @create: 2019-08-05 22:50
 */
public class Goods {

    /**
     * 全部商品
     * @param sid 店铺ID
     * @return 商品列表
     */
    public List<String> All(String sid){
        List<String> l = new ArrayList<>();
        try{
            Db db = new Db();
            ResultSet rs = db.fetchDesc("goods", "sid", sid);
            while(rs.next()){
                l.add(rs.getString(2));
                l.add(rs.getString(5));
                l.add(rs.getString(6));
                l.add(rs.getString(7));
                l.add(rs.getString(8));
                l.add(rs.getString(10));
                l.add(rs.getString(9));
            }
        }catch(Exception e){
            System.out.println("[Goods.All]:Unable to find goods where sid=" + sid + ".");
        }
        return l;
    }

    /**
     * 添加商品
     * @param uid 用户ID
     * @param sid 店铺ID
     * @param title 商品标题
     * @param about 商品简介
     * @param price 商品价格
     * @return 添加状态
     */
    public boolean Add(String uid, String sid, String title, String about, String price, String classify, String image){
        try{
            Com com = new Com();
            String gid = com.UUID();
            String time = com.Time();
            Db db = new Db();
            String [] key = {"gid", "uid", "sid", "title", "about", "price", "time", "classify", "image"};
            String [] val = {gid, uid, sid, title, about, price, time, classify, image};
            db.Insert("goods", key, val);
            return true;
        }
        catch (Exception e){
            return false;
        }
    }

    /**
     * 更新商品
     * @param gid 商品ID
     * @param title 商品名称
     * @param about 商品简介
     * @param price 商品价格
     * @param classify 商品分类
     * @param image 商品图片
     * @return 执行结果
     */
    public boolean Update(String gid, String title, String about, String price, String classify, String image){
        try{
            String [] key = {"title", "about", "price", "classify", "image"};
            String [] val = {title, about, price, classify, image};
            Db db = new Db();
            db.Update("goods", key, val, "gid", gid);
        }catch (Exception e){
            e.printStackTrace();
        }
        return true;
    }

    /**
     * 商品上架
     * @param gid 商品ID
     * @return 执行结果
     */
    public boolean AddOnline(String gid){
        try{
            Db db = new Db();
            String [] key = {"putaway"};
            String [] val = {"1"};
            db.Update("goods", key, val, "gid", gid);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 商品下架
     * @param gid 商品ID
     * @return 执行结果
     */
    public boolean DelOnline(String gid){
        try{
            Db db = new Db();
            String [] key = {"putaway"};
            String [] val = {"0"};
            db.Update("goods", key, val, "gid", gid);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 删除商品
     * @param gid 商品ID
     * @return 删除状态
     */
    public boolean Del(String gid){
        try{
            Db db = new Db();
            int res = db.Delete("goods", "gid", gid);
            return res != 0;
        }
        catch (Exception e){
            return false;
        }
    }

    /**
     * 获取商品信息
     * @param gid 商品ID
     * @return 商品信息
     */
    public List<String> Info(String gid){
        try{
            Db db = new Db();
            ResultSet rs = db.fetchOne("goods", "gid", gid);
            List<String> list = new ArrayList<>();
            while (rs.next()) {
                list.add(rs.getString("uid"));
                list.add(rs.getString("title"));
                list.add(rs.getString("image"));
                list.add(rs.getString("about"));
                list.add(rs.getString("price"));
                list.add(rs.getString("about"));
            }
            return list;
        }catch (Exception e){
            return null;
        }
    }

    /**
     * 获取全部分类商品
     * @return 全部分类商品
     */
    public List AllClass(){
        try{
            Db db = new Db();
            ResultSet rs = db.fetchAll("goods");
            Com com = new Com();
            return com.ResultSetToList(rs);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 获取指定分类商品
     * @param classify 指定分类
     * @return 指定分类商品
     */
    public List SomeClass(String classify){
        try{
            Db db = new Db();
            ResultSet rs = db.Search("goods", "classify", classify);
            Com com = new Com();
            return com.ResultSetToList(rs);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public List getComment(String gid){
        Db db = new Db();
        List list = Com.ResultSetToList(db.fetchOne("comment", "gid", gid));
        return list;
    }

    /**
     * 添加评论
     * @param gid 商品ID
     * @param uid 用户ID
     * @param nickname 用户昵称
     * @param content 评论内容
     * @param date 提交日期
     */
    public void Comment(String gid, String uid, String nickname, String content, String date){
        Db db = new Db();
        String [] key = {"gid", "uid", "nickname", "content", "date"};
        String [] val = {gid, uid, nickname, content, date};
        db.Insert("comment", key, val);
    }
}
