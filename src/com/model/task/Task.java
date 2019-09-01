package com.model.task;

import com.model.index.Db;

/**
 * @program: www
 * @description: 任务分配
 * @author: cnzxo
 * @create: 2019-08-15 22:28
 **/
public class Task implements Runnable{

    /**
     * 数据成员
     */
    private String gid;
    private Long time;

    /**
     * 构造函数
     * @param gid 商品ID
     * @param time 截止时间
     */
    public Task(String gid, Long time) {
        this.gid = gid;
        this.time = time;
        System.out.println(time);
    }

    /**
     * 开启线程
     */
    @Override
    public void run() {
        System.out.println("开始拍卖："+ gid);
        try {
            Thread.sleep(this.time);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        try{
            Db db = new Db();
            db.Delete("auction", "gid", gid);
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("结束拍卖：" + gid);
    }
}
