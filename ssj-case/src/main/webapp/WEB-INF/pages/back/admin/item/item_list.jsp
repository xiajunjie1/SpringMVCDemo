<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<%!
    public static final String ITEM_ADD_URL = "/pages/back/admin/item/add_input";
    public static final String ITEM_REFRESH_URL = "/pages/back/admin/item/refresh";
%>
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
                                                <!-- 此处编写页面展示代码 -->
                                                <div class="col-12">
                                                    <div class="t-shadow t-bg-white t-pl-30 t-pr-30">
                                                        <div class="row justify-content-center justify-conten-sm-between t-pt-30">
                                                            <div class="col-sm-6">
                                                                <h3 class="mt-0 mb-sm-0 text-capitalize text-center text-sm-start">
                                                                    图书分类信息
                                                                </h3>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <ul class="t-list d-flex justify-content-center justify-content-sm-end">
                                                                    <li class="t-list__item">
                                                                        <a href="<%=ITEM_REFRESH_URL%>" class="btn btn-primary sm-text text-uppercase">强制刷新</a>
                                                                    </li>
                                                                    <li class="t-list__item">
                                                                        <a href="<%=ITEM_ADD_URL%>" class="btn btn-transparent btn-primary sm-text text-uppercase">新增分类</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="row t-mt-30">
                                                            <div class="col-12">
                                                                <div class="table-responsive">
                                                                    <table class=" t-mb-30 table table-bordered t-text-dark--light-15 sm-text">
                                                                        <thead>
                                                                            <tr>
                                                                                <th scope="col" class="text-center">#</th>
                                                                                <th scope="col" class="text-center">分类名称</th>
                                                                                <th scope="col" class="text-center">分类描述</th>
                                                                                <th scope="col" class="text-center">操作</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <c:forEach items="${allItems}" var="item">
                                                                                <tr>
                                                                                    <th scope="row" class="text-center">${item.iid}</th>
                                                                                    <td class="text-center">${item.name}</td>
                                                                                    <td class="text-left">${item.note}</td>
                                                                                    <td>
                                                                                        <ul class="t-list d-flex justify-content-center">
                                                                                            <li class="t-list__item">
                                                                                                <a href="#" class="t-link t-link--alpha">
                                                                                                    <span class="d-flex align-items-center">
                                                                                                        <span class="xlg-text t-mr-5">
                                                                                                            <i class="las la-eye"></i>
                                                                                                        </span>
                                                                                                        <span class="text-capitalize">查看详情</span>
                                                                                                    </span>
                                                                                                </a>
                                                                                            </li>
                                                                                            <li class="t-list__item">
                                                                                                <a href="#" class="t-link t-link--alpha">
                                                                                                    <span class="d-flex align-items-center">
                                                                                                        <span class="xlg-text t-mr-5">
                                                                                                            <i class="las la-cog"></i>
                                                                                                        </span>
                                                                                                        <span class="text-capitalize ">分类编辑</span>
                                                                                                    </span>
                                                                                                </a>
                                                                                            </li>
                                                                                            <li class="t-list__item">
                                                                                                <a href="#" class="t-link t-link--alpha">
                                                                                                    <span class="d-flex align-items-center">
                                                                                                        <span class="xlg-text t-mr-5">
                                                                                                            <i class="las la-trash"></i>
                                                                                                        </span>
                                                                                                        <span class="text-capitalize ">
                                                                                                            删除分类
                                                                                                        </span>
                                                                                                    </span>
                                                                                                </a>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </td>
                                                                                </tr>
                                                                            </c:forEach>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
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
    <script src="/js/pages/back/admin/book/book_list.js"></script>
</body>

</html>
