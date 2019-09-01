package com.model.coop;

import com.model.index.Com;
import com.model.index.Db;

/**
 * @program: www
 * @description: 商务合作模型
 * @author: cnzxo
 * @create: 2019-08-14 17:14
 **/
public class Coop {

    /**
     * 提交申请
     * @param name 姓名
     * @param phone 电话
     * @param content 内容
     * @return 提交情况
     */
    public boolean Add(String name, String phone, String content){
        try{
            Db db = new Db();
            Com com = new Com();
            String time = com.Time();
            String [] key = {"name", "phone", "content", "time"};
            String [] val = {name, phone, content, time};
            db.Insert("cooperation", key, val);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
