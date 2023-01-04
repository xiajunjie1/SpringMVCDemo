package com.maker.common.validate.rule;

import com.maker.common.annotation.UploadFileType;
import com.maker.common.http.util.HandlerMethodStorageUtils;
import com.maker.common.validate.IValidateRule;
import com.maker.common.validate.abs.AbstractValidateRule;
import org.springframework.core.MethodParameter;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.StandardMultipartHttpServletRequest;

import java.util.Map;
import java.util.Set;

/**
 * 验证上传文件是否为限制以内的类型
 * */
public class UploadValidateRule extends AbstractValidateRule implements IValidateRule {
    private Set<String> mimeTypes;
    @Override
    public boolean validate(Object str) {
        if(!(request() instanceof StandardMultipartHttpServletRequest)){
            //如果不为上传文件请求，那么就不需要验证，视为验证通过
            return true;
        }
        if(isValidate()){//参数上配置了相关注解，且为上传文件请求
            StandardMultipartHttpServletRequest multipartRequest=(StandardMultipartHttpServletRequest) request();
            Map<String, MultipartFile> fileMap=multipartRequest.getFileMap();//获取全部的上传文件
            MultipartFile file=fileMap.get(str);//获取指定的上传文件
            if(file!=null && file.getSize()>0){
                //文件存在
                return mimeTypes.contains(file.getContentType());//是否包含指定的类型
            }else{
                //未上传文件，视为通过验证(只要不上传超出mimeTypes中的类型文件都视作通过验证)
                return true;
            }

        }
        return true;
    }

    public boolean isValidate(){
        //判断当前是否需要验证
        boolean uploadFlag=false;
        if(request().getContentType().startsWith("multipart/form-data")){
            //是上传请求
            HandlerMethod handlerMethod= HandlerMethodStorageUtils.get();
            for(MethodParameter parameter : handlerMethod.getMethodParameters()){
                UploadFileType fileType=parameter.getParameterAnnotation(UploadFileType.class);
                if(fileType!=null){
                    //有参数配置了该注解
                    String mime=fileType.value();
                    if(mime!=null){
                        this.mimeTypes=Set.of(mime.split(";"));
                        uploadFlag=true;
                        break;
                    }
                }
            }
        }
        return uploadFlag;
    }

    @Override
    public String errorMsg() {
        if(this.mimeTypes!=null && this.mimeTypes.size()>0){
            return "上传文件类型不匹配，可选类型为：" + this.mimeTypes;
        }else{
            return "上传文件错误，无法接收请求";
        }
    }
}
