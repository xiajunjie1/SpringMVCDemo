package com.maker.ssj.action.util;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * 用来封装分页相关基础信息工具类，提供给前端使用
 *
 * */
public class PageUtil {
    private Integer currentPage=1;//默认页码为1
    private Integer lineSize=2;//默认每页的条数
    private String column;
    private String keyword;

    private HttpServletRequest request;
    //分页的处理路径
    private String url;
    //模糊查询的候选列，格式为colum:value|colum:value...的形式
    private String columnData;

    public PageUtil(String url){
        this(url,null);//不需要模糊查询
    }
    public PageUtil(String url,String columnData){
        this.url=url;
        this.columnData=columnData;
        this.request= ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        splitHandle();
    }
    /**
     * 分页处理
     * */
    public void splitHandle(){
        try{
            this.currentPage=Integer.parseInt(request.getParameter("cp"));//获取传递到action的页数
        }catch (Exception e){}
        try{
            this.lineSize=Integer.parseInt(request.getParameter("ls"));//获取传递到action的lineSize
        }catch (Exception e){}
        this.column=request.getParameter("col");
        this.keyword=request.getParameter("kw");
        this.request.setAttribute("currentPage",this.currentPage);
        this.request.setAttribute("lineSize",this.lineSize);
        this.request.setAttribute("column",this.column);
        this.request.setAttribute("keyword",this.keyword);
        this.request.setAttribute("url",this.url);
        this.request.setAttribute("columnData",this.columnData);

    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getLineSize() {
        return lineSize;
    }

    public void setLineSize(Integer lineSize) {
        this.lineSize = lineSize;
    }

    public String getColumn() {
        return column;
    }

    public void setColumn(String column) {
        this.column = column;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getColumnData() {
        return columnData;
    }

    public void setColumnData(String columnData) {
        this.columnData = columnData;
    }
}
