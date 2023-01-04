package com.maker.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

/**
 * 基于SpringMVC拦截器，进行数据验证的案例
 * validate-case为核心功能模块，common-case为基础公共模块
 * 将一些公共内容都定义在该模块中，validate-case需要引用该模块
 * 搭建环境
 *  1.对两个模块引入相关的依赖
 *  2.在common-case中创建AbstractAction，DispatcherServlet（配置404错误页），视图解析器等公共组件
 *  3.在核心模块validate-case中创建配置类，来扫描所需要注册Bean组件
 *  4.在核心模块validate-case中创建SpringMVC的启动类
 *
 * 包装请求对象（ServletRequest）
 *  如果用户现在发送来的数据是一个JSON结构，那么本质上和发送文件是没有区别的，都是一组数据流进行传输，但是这个数据流只允许
 *  接收一次，为了解决数据接收的问题，就需要对请求结构进行包装处理，在JavaEE（JakartaEE）中提供了专属的包装类
 *      HttpServletRequestWrapper
 *      HttpServletResponseWrapper
 *  在进行参数验证的时候，JSON参数，会在拦截器中先获取一次（本质上使用的是request.getInputStream()方法获取），由于原生的inputStream()方法
 *  只能读取一次（指针读取数据，读到末尾，指针无法回到开头处，所以自然只能读取一次数据），所以为了后面Controller中获取参数，必须对request进行包装
 *  以确保可以重复获取到JSON数据
 *      1.在common-case模块中创建数据读取类：ReadRequestBodyData
 *      2.在common-case模块中创建HttpServletRequestWrapper的子类，用于重写getInputStream方法
 *      3.在common-case模块中创建过滤器，进行request对象的替换
 *      4.在validate-case的StartWebApplication中注册该过滤器
 *
 * 定义基础数据验证规则
 *      1.在common-case模块中创建数据验证接口：IValidateRule
 *      2.在common-case模块中创建一个抽象类：AbstractValidateRule
 *      3.在common-case模块中根据需要创建若干个AbstractValidateRule和IValidateRule实现子类
 *
 *  获取验证规则
 *      1.在common-case中创建自定义注解，用来标记是否需要验证，以及用什么验证规则
 *      2.在common-case中创建拦截器，让所有请求在访问action之前都经过拦截器，进行验证
 *      3.在validate-case的SpringMvcConfig中注册该拦截器
 *      4.在validate-case中创建EmpAction对参数接收进行测试
 *      5.使用curl进行测试
 *          curl -X POST -d "empno=7369&ename=smith&sal=2450&hiredate=1979-09-19&roles=news&roles=system&roles=message" "http://localhost:8080/validate/pages/emp/add"
 *          curl -X POST "http://localhost:8080/validate/pages/emp/edit" -H "Content-Type:application/json;charset=utf-8" -d "{\"empno\":\"7369\",\"ename\":\"Smith\",\"hiredate\":\"1969-09-19\",\"sal\":\"800\",\"roles\":[\"news\",\"system\",\"message\"]}"
 *          curl -X DELETE "http://localhost:8080/validate/pages/emp/delete?ids=7369&ids=7566&ids=7839"
 *
 *  验证规则处理：
 *      1.在common模块下创建验证工具类ValidateUtils进行请求参数的验证处理
 *      2.在common模块下的MyValidateInterceptor类中，调用ValidateUtils进行验证处理
 *      3.在common模块util包下创建ResponseHandler类，作为验证回应的处理，主要为后续的错误显示做准备
 *
 *  错误显示：
 *      1.在common模块下定义一个ErrorPage错误页注解，用在action的方法中，如果需要单独指定错误页，在action对应的方法上用上此注解即可
 *      2.在validate模块下定义全局错误处理类（ControllerAdvice）
 *      3.在validate模块下定义ErrorAction进行错误页的跳转
 *      4.修改common下ResponseHandler类，根据不同情况返回错误信息或者跳转到错误页
 *
 *
 *  文件上传验证
 *      本质上是根据MIME类型来进行验证，需要再次对request进行包装并且创建一个在参数上使用的注解，配置上传规则
 *      1.在common下创建一个Filter的实现子类，用于对request对象进行包装，主要是针对上传的请求
 *      2.在common下创建一个存储工具类，用于存储每个线程的HandlerMethod对象，以便于在进行验证获取验证相关注解时使用
 *          在interceptor中将HandlerMethod保存到该工具类中
 *      3.在common下创建一个文件上传类型规则的注解，主要用于配置允许上传哪些类型的文件
 *      4.在common下创建上传文件规则验证处理类
 *      5.为了测试方便，在common下创建文件上传工具类
 * */
public class validateTest {
    HttpServletRequestWrapper req;
    HttpServletRequest request;

}
