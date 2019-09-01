package com.model.index;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.text.ParseException;
import java.util.*;
import java.text.SimpleDateFormat;
import org.springframework.util.DigestUtils;

import javax.servlet.http.HttpServletRequest;

/**
 * @program: team2
 * @description: 公共模型
 * @author: cnzxo
 * @create: 2019-08-09 08:53
 */
public class Com {

    /**
     * 当前日期
     * @return 时间字符串
     */
    public static String Time(){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        return df.format(new Date());
    }

    /**
     * 生成UUID随机数
     * @return UUID随机数
     */
    public static String UUID(){
        return UUID.randomUUID().toString().replace("-", "");
    }

    /**
     * 字符串加密
     * @param str 要加密的字符串
     * @return 加密后的字符串
     */
    public String MD5(String str) {
        String slat = "c2c";
        String base = str +"/"+ slat;
        return DigestUtils.md5DigestAsHex(base.getBytes());
    }

    private static int Guid = 100;      //静态变量

    /**
     * 生成订单号
     * @return 订单号字符串
     */
    public String NID(){
        Guid += 1;
        long now = System.currentTimeMillis();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
        String time = dateFormat.format(now);
        String info = now + "";
        if(Guid > 999){
            Guid = 100;
        }
        return time + info.substring(2) + Guid;
    }

    /**
     * ResultSet转List
     * @param rs Result
     * @return List
     */
    public static List ResultSetToList(ResultSet rs){
        try{
            List list = new ArrayList();
            ResultSetMetaData md = rs.getMetaData();
            int columnCount = md.getColumnCount();
            while (rs.next()) {
                Map rowData = new HashMap();
                for (int i = 1; i <= columnCount; i++) {
                    rowData.put(md.getColumnName(i), rs.getObject(i));
                }
                list.add(rowData);
            }
            return list;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 判断移动设备
     * @param request 请求参数
     * @return 是否为移动设备
     */
    public static boolean isMobileDevice(HttpServletRequest request){
        String requestHeader = request.getHeader("user-agent");
        String[] deviceArray = new String[]{"android", "mac os", "windows phone"};
        if(requestHeader == null){
            return false;
        }
        requestHeader = requestHeader.toLowerCase();
        for (String s : deviceArray) {
            if (requestHeader.indexOf(s) > 0) {
                return true;
            }
        }
        return false;
    }

    /**
     * 日期转时间戳
     * @param date 日期
     * @return 时间戳
     */
    public static long DateToLong(String date) {
        Date d = new Date();
        try {
            SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            d = sf.parse(date.replace("T", " "));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return d.getTime();
    }

    /**
     * 时间戳转换日期
     * @param stamp 时间戳
     * @return 日期
     */
    public String stampToTime(String stamp) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(new Date(Long.parseLong(stamp)));
    }
}
