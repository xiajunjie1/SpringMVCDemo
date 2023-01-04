package com.maker.main;

import org.springframework.web.SpringServletContainerInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * 配置相关的Web发开jar包
 * 使用社区版的IDEA工具，创建web项目，需要配置相应的插件（smart Tomcat）
 *  配置项目结构(project structure)，在main下创建webapp/WEB-INF/classes
 *  之后排出classes
 *
 *  配置SpringMVC开发环境
 *      1.创建spring/spring-base.xml和spring/spring-mvc.xml Spring核心配置文件和SpringMVC核心配置文件
 *      2.在WEB-INF下创建web.xml，配置相关的核心配置类
 *
 *  ModelAndView
    @Nullable
    private Object view;//视图名称（除了字符串还可以是View类对象）
    @Nullable
    private ModelMap model;//Map集合，保存所需要传递的内容
    @Nullable
    private HttpStatus status; //Http状态响应码
    private boolean cleared=false;//清除标记

 *
 *  WebApplicationContext
 *      继承了ApplicationContext接口，所以此时表示的是WEB应用上下文（启动了另外一个Spring容器，这个容器是与WEB有关的）
 *      在web.xml中配置了一个监听器org.springframework.web.context.ContextLoaderListener，
 *      ContextLoaderListener继承了ContextLoader，ContextLoader中又维护有一个WebApplicationContext对象
 *      通过ContextLoaderListener在启动Web容器的时候，创建并初始化WebApplicationContext（调用相应的刷新方法）
 *      如果现在想要完全抛弃掉xml的配置方式（包括web.xml），那么首先要考虑的是如何启动监听器
 *
 *  WebApplicationInitializer
 *      要抛弃所有xml的配置，可以将所有的xml文件引导test下的resources下面
 *      SpringServletContainerInitializer处理类
 *          此类实现了ServletContainerInitializer接口（javax.servlet提供，新版本由JakartaEE提供）
 *          是作为动态初始化配置的程序类，也就是说利用ServletContainerInitializer来取代web.xml
 *          在web容器启动时为提供给第三方组件机会做一些初始化的工作，例如注册servlet或者filtes等，servlet规范中通过ServletContainerInitializer实现此功能。
 *          每个框架要使用ServletContainerInitializer就必须在对应的jar包的META-INF/services 目录创建一个名为javax.servlet.ServletContainerInitializer的文件，
 *          文件内容指定具体的ServletContainerInitializer实现类，那么，当web容器启动时就会运行这个初始化器做一些组件内的初始化工作。
 *          一般伴随着ServletContainerInitializer一起使用的还有HandlesTypes注解，通过HandlesTypes可以将感兴趣的一些类注入到ServletContainerInitializerde的onStartup方法作为参数传入
 *      当Web容器运行的时候，会自动调用SpringServletContainerInitializer的onStartup方法，并且会注入WebApplicationInitializer接口实现类
 *      此后，就是将获取的到的子类集合进行遍历，然后在执行此接口子类中实现的onStartup()方法，此方法会传入ServletContext(Servlet上下文对象)，
 *      所以可以在WebApplicationInitializer实现类中重写onStartup()方法，并且进行Servlet（DispatcherServlet）或者Filter（EncodingFilter）的注册，
 *      同时可以在启动的同时，初始化WebApplicationContext对象，从而实现对web.xml、spring-base.xml、spring-mvc.xml等配置文件的替代
 *      创建com.maker.web.config.StartWEBApplication类，此类实现WebApplicationInitializer接口
 *
 *  AbstractAnnotationConfigDispatcherServletInitializer
 *      此类是对WebApplicationInitializer的实现，将初始化更加进一步的细分，使用此类，只需要编写
     *  Spring的配置类和SpringMVC的配置然后由此类加载即可，具体的Servlet配置和Spring容器的实例化，
     *  都是交由此类及其父类完成的
     *
     *
     *
     *
 * @RequestMapping注解
 *
 *
 * SpringMVC与表单提交处理
 *
 * @RequestParam
 *  在SpringMVC想要接收某些参数，如果想接收某些请求参数，直接将参数定义
 *  在方法之中即可，在每次进行HTTP请求提交的时候，会自动将该请求中指定的参数名称
 *  与方法中的参数进行匹配，匹配成功后实现参数内容的注入
 *  但是如果表单中参数名称和方法的参数名称是不同的，那么肯定是无法进行成功注入的，此时就需要用到
 *  RequestParam注解
 *  一般情况下，还是建议表单参数名称与方法参数名称保持一致，单RequestParam注解的好处在于可以配置一个
 *  defaultValue-----@RequestParam(value="message",defaultValue="xiajunjie")
 *  在没有注入内容的时候，可以注入此defaultValue
 *
 *@PathVariable
 *  按照传统请求参数提交，都是基于get、post等模式发送的，而SpringMvc在设计的时候充分考虑到
 *  RESTful要求，可以基于路径来传递参数
 *      1.修改MessageAction中的echo方法
 *      2.访问路径为：http://localhost:8080/mvc/message/echo/xia/junjie/1
 *
 * @MatrixVariable
 *  矩阵参数是一种SpringMVC扩展的参数接收形式，参数传递形式为："参数名=内容;参数名=内容;..."
 *  要启用矩阵参数，需要在SpringMVC的配置模块中进行配置
 *      1.修改SpringMvcConfig类
 *      2.在action中编写echo_second方法进行测试
 *      3.访问地址：http://localhost:8080/mvc/message/echo2/xia;title=xia;msg=jun;level=2
 *
 *  也可以直接用map对象来接收矩阵参数
 *      1.在action中编写echo_map方法
 *      2.访问：http://localhost:8080/mvc/message/echomap/title=夏;msg=俊;level=1
 *
 * @InitBinder
 *  在SpringMVC中接收参数时，接收到的其实都是字符串，而SpringMVC可以对多数的基本类型变量进行自动转型
 *  但是部分类型的变量，SpringMVC并没有办法进行自动转型，这个时候，就是依靠@initBinder来进行初始化类型转换
 *  此注解用于控制层，表示为当前控制器注册一个属性编辑器，属性的编辑是通过Spring提供的PropertyEditorSupport类完成的
 *  此类实现PropertyEditor接口，在Spring启动的时候，会加载所有注册了的PropertyEditor对象
 *  例如前端有日期参数传过来的时候，SpringMVC就需要为控制层注册一个日期属性编辑器
 *  考虑到所有的Action都会存在类型转换的问题，可以考虑创建一个抽象Action类，对抽象Action类进行
 *  属性编辑器的注册，后面需要用到属性转换的子Action类可以继承此抽象类
 *  1.创建抽象Action类
 *  2.让MessageAction继承此抽象类
 *  3.前端编写日期控件，进行测试
 *
 *
 * @ModelAttribute
 *  将视图跳转和请求处理的方法分开，进行请求处理的方法不返回任何内容，仅进行请求处理
 *  由访问的路径对应的方法负责跳转视图
 *
 * RedirectAttributes
 *  SpringMVC提供了跳转机制
 *      客户端跳转（redirect:/路径）
 *      服务端跳转(forward:/路径)
 *  如果想进行这种跳转的操作，这里会存在一个核心的接口RedirectAttributes，
 *  此接口的目的是为了处理路径跳转时属性传递的问题
 *  1.创建DataAction控制器
 *  2.创建pages/data/list.jsp
 *
 *
 *  请求参数与对象的转换
 *     SpringMVC支持将表单传过来的多个属性，自动封装成一个实体对象
 *     该实体对象中的属性名要与表单提交的参数名对应
 *     1.在pages下创建emp/input.jsp文件
 *     2.创建EmpAction对象
 *     3.在pages下创建emp/show.jsp用来显示接收到的信息内容
 *
 * @RequestBody
 *  如果说此时前端发送来的数据内容是JSON，那么就需要将这个数据转为对象实例
 *  那么这时在进行控制层参数接收的时候，不能在简单的声明一个对象，这个对象上需要
 *  使用到@RequestBody注解进行定义
 *  要使用到JSON，首先则必须引入相关JSON处理的依赖，Spring推荐使用Jackson组件
 *  1.引入Jackson的依赖包
 *      implementation('com.fasterxml.jackson.core:jackson-core:2.13.4')
 *      implementation('com.fasterxml.jackson.core:jackson-databind:2.13.4')
 *      implementation('com.fasterxml.jackson.core:jackson-annotations:2.13.4')
 *  2.编写Jackson的配置类JacksonConfig
 *  3.在EmpAction中编写测试的方法
 *  4.使用curl进行测试curl -X POST "http://localhost:8080/mvc/emp/add_json" -H "Content-Type: application/json;charset=utf-8" -d "{\"empno\": \"7369\", \"ename\": \"xia\", \"hiredate\": \"2050-09-19\", \"dept\": {\"deptno\": \"10\", \"dname\": \"Edu.Tec\", \"loc\": \"LuoYang\"}}"
 *
 * @ResponseBody
 *      业务处理完成后也应该进行数据的响应，所以想要进行响应，则需要在控制层上使用@ResponseBody注解进行配置
 *      而这个注解也需要由Jackson进行支持
 *      以此方法可以返回JSON，但是对象中如果有日期类型，转成JSON也会是返回的时间戳
 *      如果想要将时间戳进行转型，可以全局配置一个转换器或者在返回的对象属性上使用@JsonFormat的方式进行局部的配置
 *
 *  RequestContextHolder
 *      在一些特殊的环境下，需要使用到内置对象，为了解决内置对象的获取问题，SpringMVC提供了RequestContextHolder处理类
 *      此类可以用来获取一些web开发的内置对象，如果是对于控制层，可以更简单的获取内置对象，那就是通过方法的参数列表进行自动的注入
 *      创建InnerObjectAction进行测试
 *
 *
 * @RequestHeader
 *  可以获取到相应的头信息
 *  编写HeaderAction进行测试
 *
 *
 * @CookieValue
 *  按照头信息的设计来讲，每一次Http都会将Cookie发送到服务端，为了便于
 *  Cookie的获取，可以使用@CookieValue注解进行接收，这样可以避免数据为空
 *  的场景出现
 *      创建CookieAction进行Cookie接收测试
 *
 *  Session管理
 *      SpringMVC可以通过@SessionAttributes注解配置Session的属性名
 *      从而达到设置Session属性或者获取Session属性的操作
 *      创建SessionAction模拟登录成功，设置Session
 *
 *  SpringMVC文件上传支持
 *      MultipartFile接口
 *      本次使用配置MultipartConfigElement的方式实现上传文件的处理
 *      与SpringMVC一般使用的CommonsMultipartResolver不同，CommonsMultipartResolver
 *      还需要导入FileUpload的相关依赖，MultipartConfigElement是JavaEE提供的实现标准
 *      相当于在web.xml中注册此类，所以需要修改StartWEBApplicationSecond类
 *
 *  WEB资源安全访问
 *      为了静态资源和一些视图层资源的安全性，建议存放在WEB-INF下
 *      因为该目录下的资源是无法直接访问的，但是SpringMVC的控制层是可以
 *      进行访问的，可以配置视图解析器进行路径前缀的配置
 *      修改SpringMvcConfig类，注册InternalResourceViewResolver
 *      对于静态资源的访问，进行资源处理器的映射，实现WebMvcConfigurer接口
 *      提供的addResourceHandlers方法
 *
 *  统一异常处理
 *      SpringMVC可以为项目提供一个总的异常处理页
 *      需要用到@ControllerAdvice注解
 *      定义advice.ErrorAdvice进行异常的拦截
 *      定义ExceptionAction进行异常的抛出，作为测试
 *
 *  自定义404错误处理
 *      目前的404页面是Tomcat提供的，而SpringMVC当中并没有提供有404错误页面的支持，
 *      但是可以通过继承并覆写某些方法来实现所需要的效果
 *     1. 在DispatcherServlet中有一个noHandleFound方法，需要创建一个自定义的DispatcherServlet类
 *      继承SpringMVC的DispatcherServlet，并重写noHandleFound方法
 *     2.在StartWEBApplicationSecond中进行自定义DispatcherServlet的配置
 *
 *  拦截器
 *      自定义拦截器，实现HandleInterceptor接口
 *      在SpringMvcConfig中进行拦截器的配置addInterceptors
 *
 *  WebApplicationContextUtils
 *      可以通过此类获取到WebApplicationContext容器对象
 *      由分析可知，WebApplicationContext是在初始化的时候，作为ServletContext
 *      的属性存放在了ServletContext对象中的，可以方便的在于DispatcherServlet同
 *      级别的Servlet、Filter、Listener中获取SpringWeb容器对象
 *      1.创建一个自定义的Filter过滤器，在过滤器中获取WebApplicationContext对象
 *      2.在StartWEBApplicationSecond中注册Filter过滤器
 *      3.创建IMessageService对象，在Filter中通过Spring容器获取该对象
 *
 */
public class SpringmvcTest {
    //SpringServletContainerInitializer
    AbstractAnnotationConfigDispatcherServletInitializer a;
    MultipartFile m;
}
