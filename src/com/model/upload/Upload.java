package com.model.upload;

import java.io.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 * @program: team2
 * @description: 文件上传
 * @author: cnzxo
 * @create: 2019-08-06 20:10
 */
public class Upload {

    /**
     * 文件上传 方法一
     * @param file 所选文件
     * @param url 文件名
     * @return 状态
     */
    public static boolean Fun(CommonsMultipartFile file, String url){
        try{
            String path="C:\\Users\\cnzxo\\Desktop\\www\\web\\upload\\" + url;     //系统绝对路径
            File newFile = new File(path);
            file.transferTo(newFile);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("[Upload.Fun1]:Unable to upload the file.");
            return false;
        }
    }

//    /**
//     * 文件上传 方法二
//     * @param file 所选文件
//     * @return 状态
//     */
//    public boolean Fun2(CommonsMultipartFile file){
//        try {
//            OutputStream os=new FileOutputStream("D:/"+new Date().getTime()+file.getOriginalFilename());
//            InputStream is=file.getInputStream();
//            int temp;
//            while((temp=is.read())!=(-1)){
//                os.write(temp);
//            }
//            os.flush();
//            os.close();
//            is.close();
//            return true;
//        } catch (IOException e) {
//            System.out.println("[Upload.Fun1]:Unable to upload the file.");
//            return false;
//        }
//    }

//    /**
//     * 文件上传 方法三
//     * @param request 上传请求
//     * @return 状态
//     */
//    public boolean Fun3(HttpServletRequest request){
//        try{
//            CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(request.getSession().getServletContext());
//            if(multipartResolver.isMultipart(request)){
//                MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
//                Iterator iter=multiRequest.getFileNames();
//                while(iter.hasNext()){
//                    MultipartFile file=multiRequest.getFile(iter.next().toString());
//                    if(file!=null){
//                        String path="D:/"+file.getOriginalFilename();
//                        file.transferTo(new File(path));
//                    }
//                }
//            }
//            return true;
//        }catch (Exception e){
//            System.out.println("[Upload.Fun1]:Unable to upload the file.");
//            return false;
//        }
//    }
}
