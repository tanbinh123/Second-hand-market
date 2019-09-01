package com.model.index;

import java.sql.*;
import java.util.Arrays;

/**
 * @program: team2
 * @description: 数据库模型
 * @author: cnzxo
 * @create: 2019-08-09 08:57
 */
public class Db {

    /**
     * 数据库配置
     */
    private final String driver = "org.gjt.mm.mysql.Driver";
    private final String url = "jdbc:mysql://39.105.28.118:3306/c2c?autoReconnect=true&amp;characterEncoding=UTF-8&amp;failOverReadOnly=false";
    private final String username = "c2c";
    private final String password = "c2c";

    /**
     * 多数据方法
     * @param table 数据表名
     * @return 返回全部数据
     */
    public ResultSet fetchAll(String table) {
        try{
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, username, password);
            String sql = String.format("select * from %s", table);
            PreparedStatement data = conn.prepareStatement(sql);
            return data.executeQuery();
        }catch(Exception e){
            System.out.println("[Db.fetchAll]:Unable to find " + table + " in tables.");
            return null;
        }
    }

    /**
     * 倒序查找全部
     * @param table 数据表
     * @return 多个检索结果
     */
    public ResultSet fetchAllDesc(String table) {
        try{
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, username, password);
            String sql = String.format("select * from `%s` order by id desc", table);
            PreparedStatement data = conn.prepareStatement(sql);
            return data.executeQuery();
        }catch(Exception e){
            System.out.println("[Db.fetchAll]:Unable to find " + table + " in tables.");
            return null;
        }
    }

    /**
     * 倒序查找部分
     * @param table 数据表
     * @param key 关键词
     * @param val 检索值
     * @return 多个检索结果
     */
    public ResultSet fetchDesc(String table, String key, String val) {
        try{
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, username, password);
            String sql = String.format("select * from `%s` where %s='%s' order by id desc", table, key, val);
            PreparedStatement data = conn.prepareStatement(sql);
            return data.executeQuery();
        }catch(Exception e){
            System.out.println("[Db.fetchAll]:Unable to find " + table + " in tables.");
            return null;
        }
    }

    /**
     * 检索关键词
     * @param table 数据表
     * @param key 关键词
     * @param val 值
     * @return 检索的数据
     */
    public ResultSet Search(String table, String key, String val){
        try{
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, username, password);
            String sql = String.format("select * from `%s` where %s like '%%%s%%'", table, key, val);
            PreparedStatement data = conn.prepareStatement(sql);
            return data.executeQuery();
        }catch(Exception e){
            System.out.println("[Db.Search]:Unable to find " + table + " in tables.");
            return null;
        }
    }

    /**
     * 单数据 方法
     * @param table 数据表名
     * @param key 字段名
     * @param value 检索值
     * @return 返回单个数据
     */
    public ResultSet fetchOne(String table, String key, String value){
        try{
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, username, password);
            String sql = String.format("SELECT * FROM `%s` WHERE %s = '%s'", table, key, value);
            PreparedStatement data = conn.prepareStatement(sql);
            return data.executeQuery();
        }catch(Exception e){
            System.out.println("[Db.fetchOne]:Unable to find it where " + key + "=" + value + " in " + table);
            return null;
        }
    }

    /**
     * 数据库插入
     * @param table 数据表名
     * @param keys 字段名数组
     * @param values 插入值数组
     */
    public void Insert(String table, String[] keys, String[] values){
        try{
            Class.forName(driver);
            StringBuilder key = new StringBuilder(keys[0]);
            StringBuilder val = new StringBuilder("'" + values[0] + "'");
            for(int i=1; i<keys.length; i++){
                key.append(",").append(keys[i]);
                val.append(String.format(",'%s'", values[i]));
            }
            Connection conn = DriverManager.getConnection(url, username, password);
            String sql = String.format("insert into `%s`(%s) value(%s)", table, key.toString(), val.toString());
            PreparedStatement data = conn.prepareStatement(sql);
            data.executeUpdate() ;
        }catch(Exception e){
            System.out.printf("[Db.Insert]:Unable to insert into %s with %s and %s%n", table, Arrays.toString(keys), Arrays.toString(values));
        }
    }

    /**
     * 数据库更新
     * @param table 数据表
     * @param keys 更新词集合
     * @param values 更新值集合
     * @param key 关键词
     * @param val 检索值
     */
    public void Update(String table, String [] keys, String [] values, String key, String val){
        try{
            Class.forName(driver);
            StringBuilder value = new StringBuilder(keys[0] + "='" + values[0] + "'");
            for(int i=1; i<keys.length; i++){
                value.append(", ").append(keys[i]).append("='").append(values[i]).append("'");
            }
            value.append(" where ").append(key).append("='").append(val).append("'");
            Connection conn = DriverManager.getConnection(url, username, password);
            String sql = String.format("update %s set %s", table, value.toString());
            PreparedStatement data = conn.prepareStatement(sql);
            System.out.println(sql);
            data.executeUpdate();
        }catch(Exception e){
            System.out.printf("[Db.Update]:Unable to update %s with %s and %s where %s = %s%n", table, Arrays.toString(keys), Arrays.toString(values), key, val);
        }
    }

    /**
     * 数据库删除
     */
    public int Delete(String table, String key, String val){
        try{
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, username, password);
            String sql = String.format("delete from `%s` where %s='%s'%n", table, key, val);
            PreparedStatement data = conn.prepareStatement(sql);
            return data.executeUpdate();
        }
        catch (Exception e){
            System.out.printf("[Db.Delete]:Unable to delete %s where %s = %s%n", table, key, val);
            return 0;
        }
    }

    /**
     * 原生查询
     * @param sql 查询语句
     * @return 查询结果
     */
    public ResultSet Query(String sql){
        try{
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, username, password);
            PreparedStatement data = conn.prepareStatement(sql);
            return data.executeQuery();
        }catch(Exception e){
            System.out.println("[Db.fetchOne]:Unable to use this sql command.");
            return null;
        }
    }
}
