package com.model.find;

import java.util.List;
import com.model.index.Db;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * @program: team2
 * @description: 搜索模型
 * @author: cnzxo
 * @create: 2019-08-05 22:50
 */
public class Find {

    /**
     * 搜索关键词
     * @param keyword 关键词
     * @return 搜索结果
     */
    public List search(String keyword){
        List<String> arr = new ArrayList<>();
        try{
            Db db = new Db();       //实例化数据库对象
            ResultSet rs = db.Search("goods", "title", keyword);
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
            System.out.println("[Find.search]:Unable to find goods title like " + keyword + ".");
        }
        return arr;
    }
}
