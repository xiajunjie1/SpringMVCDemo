package com.maker.action;

import com.maker.action.abs.AbstractAction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/upload/*")
public class UploadAction extends AbstractAction {
    @RequestMapping("input")
    public String input(){
        return "/pages/fileupload/input.jsp";
    }
    @PostMapping("get")
    @ResponseBody
    public Object get(String id,MultipartFile photo) throws Exception{
        Map map=new HashMap();
        map.put("id",id);
        map.put("contentType",photo.getContentType());
        map.put("OriginalFilename",photo.getOriginalFilename());
        map.put("size",photo.getSize());
        map.put("filepath",save(photo));
        return map;
    }

    public String save(MultipartFile file) throws Exception{
        //根据MiME获取文件名
        String fileName= UUID.randomUUID()+"."+file.getContentType().substring(file.getContentType().lastIndexOf("/")+1);
        String filePath= ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath("/upload/")+fileName;
        file.transferTo(new File(filePath));
        return filePath;
    }
}
