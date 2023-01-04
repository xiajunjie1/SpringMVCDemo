package com.maker.common.http.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.UUID;
/**
 * 文件上传工具类
 *  包含文件的保存、覆盖
 *  文件的删除的功能
 * */
public class UploadFileUtils {
    private static final Logger LOGGER= LoggerFactory.getLogger(UploadFileUtils.class);
    public static final String NO_PHOTO="nophoto.png";//默认文件名称
    private UploadFileUtils(){}

    public static String save(MultipartFile file,String saveDir)throws Exception{
        if(file==null || file.getSize()==0){//没有上传的文件
            return NO_PHOTO;//未上传图片，返回默认图片名
        }
        //MIME类型：image/png
        String filename= UUID.randomUUID()+"."+file.getContentType()
                .substring(file.getContentType().lastIndexOf("/")+1);
        LOGGER.debug("生成文件名称：{}",filename);
        LOGGER.debug("文件存储结果：{}",save(file,saveDir,filename));
        return filename;
    }
    /**
     * 存储具体的文件，传入文件名称，对于已经存在的文件，可以直接进行覆盖更新
     * 在进行文件更新的时候，使用该方法会更好
     * */
    public static boolean save(MultipartFile file,String saveDir,String fileName){
        String filepath= ContextLoader.getCurrentWebApplicationContext()
                .getServletContext().getRealPath(saveDir)+ File.separator+fileName;
        LOGGER.info("文件存储路径：{}",filepath);
        try{
            file.transferTo(new File(filepath));
        }catch (Exception e){
            LOGGER.error("存储文件失败：{}",e.getMessage());
            return false;
        }
        return true;

    }
    /**
     * 文件的删除
     * */
    public static boolean delete(String saveDir,String filename){
        if(!StringUtils.hasLength(filename)){
            return true;//文件不存在，不需要删除
        }
        File file=new File(ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath(saveDir)+File.separator+filename);
        if(file.exists()){
            return file.delete();
        }
        return true;
    }
}
