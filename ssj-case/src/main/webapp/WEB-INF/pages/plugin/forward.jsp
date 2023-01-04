<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="/WEB-INF/pages/plugin/menu/common/menu_page_header.jsp"/>
</head>

<body class="t-bg-primary mx-sidenav-not-collapsed">

    <!-- Preloader  -->
    <div class="preloader-container">
        <div class="cssload-thecube m-auto">
            <div class="cssload-cube cssload-c1"></div>
            <div class="cssload-cube cssload-c2"></div>
            <div class="cssload-cube cssload-c4"></div>
            <div class="cssload-cube cssload-c3"></div>
        </div>
    </div>
    <!-- Preloader End -->
    <jsp:include page="/WEB-INF/pages/plugin/menu/common/menu_content_nav_small.jsp"/>
    <!-- Page Wrapper -->
    <div class="container-fluid p-0">
        <div class="row g-0">
            <!--SideNav / Display Only Small Screen  -->
            <div class="col-12 d-xl-none">
                <jsp:include page="/WEB-INF/pages/plugin/menu/common/menu_content_header.jsp"/>
            </div>
            <!--HSideNav/ Display Only Small Screen End -->

            <!--SideNav / Display Only Large Screen  -->
            <jsp:include page="/WEB-INF/pages/plugin/menu/common/menu_content_nav_large.jsp"/>
            <!--SideNav / Display Only Large Screen End -->

            <div class="col-9 col-xxl-10 flex-grow-1">
                <div class="container-fluid px-2 px-xxl-0">
                    <div class="row g-2 g-xxl-0">
                        <div class="col-12">
                            <div class="mx-body">
                                <jsp:include page="/WEB-INF/pages/plugin/menu/common/menu_content_top.jsp"/>
                                <div class="mx-body__content" data-simplebar>
                                    <main class="main-content t-mt-15 t-mb-15">
                                        <div class="container-fluid px-3">
                                            <div class="row g-3">
                                                <div class="col-md-12">
                                                <%
                                                    String msg = (String) request.getAttribute("msg") ;	// 提示信息
                                                    String url = (String) request.getAttribute("url") ;
                                                %>
                                                <!-- 此处编写页面展示代码 -->
                                                <script type="text/javascript">
                                                	window.onload = function() {
                                                		goForward() ;
                                                	}
                                                	function goForward() {
                                                		spanObject = document.getElementById("countSpan") ;
                                                		count = parseInt(spanObject.innerHTML) ;	// 取得当前计数的内容
                                                		count -- ;
                                                		if (count == 0) {	// 要进行跳转
                                                			window.location = "<%=url%>" ;	// 跳转
                                                		} else {
                                                			spanObject.innerHTML = count ;
                                                			setTimeout(goForward,1000) ;
                                                		}
                                                	}
                                                </script>
                                                <div class="mx-callout t-bg-white">
                                                    <div class="mx-callout__float-icon t-text-gamma">
                                                        <i class="fa fa-headphones" aria-hidden="true"></i>
                                                    </div>
                                                    <div class="mx-callout__left-content">
                                                        <h6 class="mt-0 text-capitalize">
                                                            数据更新操作完成
                                                        </h6>
                                                        <p class="sm-text">
                                                            <div><%=msg%></div>
                                                            <div><span class="info" id="countSpan">5</span>秒后跳转到其它页面！</div>
                                                        </p>
                                                    </div>
                                                    <div class="mx-callout__right-content">
                                                        <a href="<%=url%>" class="btn btn-primary sm-text text-uppercase">操作完成</a>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </main>
                                   <jsp:include page="/WEB-INF/pages/plugin/menu/common/menu_content_footer.jsp"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Wrapper End -->
    <jsp:include page="/WEB-INF/pages/plugin/menu/common/menu_script.jsp"/>
</body>

</html>
