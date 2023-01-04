<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%!
    public static final String MEMBER_EDIT_URL = "/pages/back/admin/member/edit_input";
    public static final String MEMBER_DELETE_URL = "/pages/back/admin/member/delete";
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
                                                <div class="t-bg-white cards t-shadow mt-3 mb-3 py-2" style="float">
                                                    <div class="container-fluid px-3">
                                                        <div class="row">
                                                            <div class="col-12">
                                                                <div class="row g-3 align-items-center">
                                                                    <div class="col-md-12">
                                                                        <jsp:include page="/WEB-INF/pages/plugin/split_page_plugin_search.jsp"/>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-lg-4 col-xxl-3">
                                                    <div class="id-card t-shadow t-bg-white text-center">
                                                        <span class="id-card__number id-card__number--warning">01</span>
                                                        <div class="avatars avatars--circle avatars--xl mx-auto">
                                                            <img src="/upload/member/nophoto.png" alt="max" class="img-fulid w-100">
                                                            <div class="avatars__status">
                                                                <i class="las la-check"></i>
                                                            </div>
                                                        </div>
                                                        <div class="id-card__body t-mt-30">
                                                            <h5 class="id-card__title text-capitalize mt-0 mb-0">李兴华</h5>
                                                            <span class="id-card__sub-title text-capitalize xsm-text">系统架构师 & 编程讲师</span>
                                                            <p class="sm-text t-mt-15">
                                                                李兴华高薪就业编程训练营课程讲师，十年以上技术开发工作经验，擅长各类编程语言、前端技术、系统运维、技术架构、大数据技术。
                                                            </p>
                                                            <ul class="t-list">
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-envelope-o"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text">muyan@yootk.com</span>
                                                                </li>
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-map-marker"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text text-capitalize">北京 沐言科技 教学研发部</span>
                                                                </li>
                                                            </ul>
                                                            <div>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-primary sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-eye"></i>
                                                                        </span>
                                                                        <span class="text-capitalize" id="mid-admin@yootk.com">查看详情</span>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-info sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-cog"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_EDIT_URL%>" class="text-capitalize">用户编辑</a>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-danger sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                            <i class="las la-trash"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_DELETE_URL%>?mid=" class="text-capitalize" onclick="return deleteConfirm()">删除用户</a>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-lg-4 col-xxl-3">
                                                    <div class="id-card t-shadow t-bg-white text-center">
                                                        <span class="id-card__number id-card__number--success">02</span>
                                                        <div class="avatars avatars--circle avatars--xl mx-auto">
                                                            <img src="/upload/member/nophoto.png" alt="max" class="img-fulid w-100">
                                                            <div class="avatars__status">
                                                                <i class="las la-check"></i>
                                                            </div>
                                                        </div>
                                                        <div class="id-card__body t-mt-30">
                                                            <h5 class="id-card__title text-capitalize mt-0 mb-0">李兴华</h5>
                                                            <span class="id-card__sub-title text-capitalize xsm-text">系统架构师 & 编程讲师</span>
                                                            <p class="sm-text t-mt-15">
                                                                李兴华高薪就业编程训练营课程讲师，十年以上技术开发工作经验，擅长各类编程语言、前端技术、系统运维、技术架构、大数据技术。
                                                            </p>
                                                            <ul class="t-list">
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-envelope-o"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text">muyan@yootk.com</span>
                                                                </li>
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-map-marker"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text text-capitalize">北京 沐言科技 教学研发部</span>
                                                                </li>
                                                            </ul>
                                                            <div>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-primary sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-eye"></i>
                                                                        </span>
                                                                        <span class="text-capitalize" id="mid-admin@yootk.com">查看详情</span>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-info sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-cog"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_EDIT_URL%>" class="text-capitalize">用户编辑</a>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-danger sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                            <i class="las la-trash"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_DELETE_URL%>?mid=" class="text-capitalize" onclick="return deleteConfirm()">删除用户</a>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-lg-4 col-xxl-3">
                                                    <div class="id-card t-shadow t-bg-white text-center">
                                                        <span class="id-card__number id-card__number--primary">03</span>
                                                        <div class="avatars avatars--circle avatars--xl mx-auto">
                                                            <span class="avatars__add-member">
                                                                <span class="xlg-text text-light text-uppercase font-weight-bold">
                                                                    李
                                                                </span>
                                                            </span>
                                                            <div class="avatars__status">
                                                                <i class="las la-check"></i>
                                                            </div>
                                                        </div>
                                                        <div class="id-card__body t-mt-30">
                                                            <h5 class="id-card__title text-capitalize mt-0 mb-0">李兴华</h5>
                                                            <span class="id-card__sub-title text-capitalize xsm-text">系统架构师 & 编程讲师</span>
                                                            <p class="sm-text t-mt-15">
                                                                李兴华高薪就业编程训练营课程讲师，十年以上技术开发工作经验，擅长各类编程语言、前端技术、系统运维、技术架构、大数据技术。
                                                            </p>
                                                            <ul class="t-list">
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-envelope-o"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text">muyan@yootk.com</span>
                                                                </li>
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-map-marker"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text text-capitalize">北京 沐言科技 教学研发部</span>
                                                                </li>
                                                            </ul>
                                                            <div>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-primary sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-eye"></i>
                                                                        </span>
                                                                        <span class="text-capitalize" id="mid-admin@yootk.com">查看详情</span>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-info sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-cog"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_EDIT_URL%>" class="text-capitalize">用户编辑</a>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-danger sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                            <i class="las la-trash"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_DELETE_URL%>?mid=" class="text-capitalize" onclick="return deleteConfirm()">删除用户</a>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-lg-4 col-xxl-3">
                                                    <div class="id-card t-shadow t-bg-white text-center">
                                                        <span class="id-card__number id-card__number--primary">04</span>
                                                        <div class="avatars avatars--circle avatars--xl mx-auto">
                                                            <img src="/upload/member/nophoto.png" alt="max" class="img-fulid w-100">
                                                            <div class="avatars__status">
                                                                <i class="las la-check"></i>
                                                            </div>
                                                        </div>
                                                        <div class="id-card__body t-mt-30">
                                                            <h5 class="id-card__title text-capitalize mt-0 mb-0">李兴华</h5>
                                                            <span class="id-card__sub-title text-capitalize xsm-text">系统架构师 & 编程讲师</span>
                                                            <p class="sm-text t-mt-15">
                                                                李兴华高薪就业编程训练营课程讲师，十年以上技术开发工作经验，擅长各类编程语言、前端技术、系统运维、技术架构、大数据技术。
                                                            </p>
                                                            <ul class="t-list">
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-envelope-o"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text">muyan@yootk.com</span>
                                                                </li>
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-map-marker"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text text-capitalize">北京 沐言科技 教学研发部</span>
                                                                </li>
                                                            </ul>
                                                            <div>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-primary sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-eye"></i>
                                                                        </span>
                                                                        <span class="text-capitalize" id="mid-admin@yootk.com">查看详情</span>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-info sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-cog"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_EDIT_URL%>" class="text-capitalize">用户编辑</a>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-danger sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                            <i class="las la-trash"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_DELETE_URL%>?mid=" class="text-capitalize" onclick="return deleteConfirm()">删除用户</a>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-lg-4 col-xxl-3">
                                                    <div class="id-card t-shadow t-bg-white text-center">
                                                        <span class="id-card__number id-card__number--warning">05</span>
                                                        <div class="avatars avatars--circle avatars--xl mx-auto">
                                                            <img src="/upload/member/nophoto.png" alt="max" class="img-fulid w-100">
                                                            <div class="avatars__status">
                                                                <i class="las la-check"></i>
                                                            </div>
                                                        </div>
                                                        <div class="id-card__body t-mt-30">
                                                            <h5 class="id-card__title text-capitalize mt-0 mb-0">李兴华</h5>
                                                            <span class="id-card__sub-title text-capitalize xsm-text">系统架构师 & 编程讲师</span>
                                                            <p class="sm-text t-mt-15">
                                                                李兴华高薪就业编程训练营课程讲师，十年以上技术开发工作经验，擅长各类编程语言、前端技术、系统运维、技术架构、大数据技术。
                                                            </p>
                                                            <ul class="t-list">
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-envelope-o"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text">muyan@yootk.com</span>
                                                                </li>
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-map-marker"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text text-capitalize">北京 沐言科技 教学研发部</span>
                                                                </li>
                                                            </ul>
                                                            <div>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-primary sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-eye"></i>
                                                                        </span>
                                                                        <span class="text-capitalize" id="mid-admin@yootk.com">查看详情</span>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-info sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-cog"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_EDIT_URL%>" class="text-capitalize">用户编辑</a>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-danger sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                            <i class="las la-trash"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_DELETE_URL%>?mid=" class="text-capitalize" onclick="return deleteConfirm()">删除用户</a>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-lg-4 col-xxl-3">
                                                    <div class="id-card t-shadow t-bg-white text-center">
                                                        <span class="id-card__number id-card__number--success">06</span>
                                                        <div class="avatars avatars--circle avatars--xl mx-auto">
                                                            <img src="/upload/member/nophoto.png" alt="max" class="img-fulid w-100">
                                                            <div class="avatars__status">
                                                                <i class="las la-check"></i>
                                                            </div>
                                                        </div>
                                                        <div class="id-card__body t-mt-30">
                                                            <h5 class="id-card__title text-capitalize mt-0 mb-0">李兴华</h5>
                                                            <span class="id-card__sub-title text-capitalize xsm-text">系统架构师 & 编程讲师</span>
                                                            <p class="sm-text t-mt-15">
                                                                李兴华高薪就业编程训练营课程讲师，十年以上技术开发工作经验，擅长各类编程语言、前端技术、系统运维、技术架构、大数据技术。
                                                            </p>
                                                            <ul class="t-list">
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-envelope-o"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text">muyan@yootk.com</span>
                                                                </li>
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-map-marker"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text text-capitalize">北京 沐言科技 教学研发部</span>
                                                                </li>
                                                            </ul>
                                                            <div>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-primary sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-eye"></i>
                                                                        </span>
                                                                        <span class="text-capitalize" id="mid-admin@yootk.com">查看详情</span>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-info sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-cog"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_EDIT_URL%>" class="text-capitalize">用户编辑</a>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-danger sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                            <i class="las la-trash"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_DELETE_URL%>?mid=" class="text-capitalize" onclick="return deleteConfirm()">删除用户</a>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-lg-4 col-xxl-3">
                                                    <div class="id-card t-shadow t-bg-white text-center">
                                                        <span class="id-card__number id-card__number--primary">07</span>
                                                        <div class="avatars avatars--circle avatars--xl mx-auto">
                                                            <span class="avatars__add-member">
                                                                <span class="xlg-text text-light text-uppercase font-weight-bold">
                                                                    华
                                                                </span>
                                                            </span>
                                                            <div class="avatars__status">
                                                                <i class="las la-check"></i>
                                                            </div>
                                                        </div>
                                                        <div class="id-card__body t-mt-30">
                                                            <h5 class="id-card__title text-capitalize mt-0 mb-0">李兴华</h5>
                                                            <span class="id-card__sub-title text-capitalize xsm-text">系统架构师 & 编程讲师</span>
                                                            <p class="sm-text t-mt-15">
                                                                李兴华高薪就业编程训练营课程讲师，十年以上技术开发工作经验，擅长各类编程语言、前端技术、系统运维、技术架构、大数据技术。
                                                            </p>
                                                            <ul class="t-list">
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-envelope-o"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text">muyan@yootk.com</span>
                                                                </li>
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-map-marker"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text text-capitalize">北京 沐言科技 教学研发部</span>
                                                                </li>
                                                            </ul>
                                                            <div>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-primary sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-eye"></i>
                                                                        </span>
                                                                        <span class="text-capitalize" id="mid-admin@yootk.com">查看详情</span>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-info sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-cog"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_EDIT_URL%>" class="text-capitalize">用户编辑</a>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-danger sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                            <i class="las la-trash"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_DELETE_URL%>?mid=" class="text-capitalize" onclick="return deleteConfirm()">删除用户</a>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-lg-4 col-xxl-3">
                                                    <div class="id-card t-shadow t-bg-white text-center">
                                                        <span class="id-card__number id-card__number--warning">08</span>
                                                        <div class="avatars avatars--circle avatars--xl mx-auto">
                                                            <img src="/upload/member/nophoto.png" alt="max" class="img-fulid w-100">
                                                            <div class="avatars__status">
                                                                <i class="las la-check"></i>
                                                            </div>
                                                        </div>
                                                        <div class="id-card__body t-mt-30">
                                                            <h5 class="id-card__title text-capitalize mt-0 mb-0">李兴华</h5>
                                                            <span class="id-card__sub-title text-capitalize xsm-text">系统架构师 & 编程讲师</span>
                                                            <p class="sm-text t-mt-15">
                                                                李兴华高薪就业编程训练营课程讲师，十年以上技术开发工作经验，擅长各类编程语言、前端技术、系统运维、技术架构、大数据技术。
                                                            </p>
                                                            <ul class="t-list">
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-envelope-o"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text">muyan@yootk.com</span>
                                                                </li>
                                                                <li class="t-mb-5">
                                                                    <span class="id-card__icon t-mr-8">
                                                                        <i class="fa fa-map-marker"></i>
                                                                    </span>
                                                                    <span class="d-inlin-block sm-text text-capitalize">北京 沐言科技 教学研发部</span>
                                                                </li>
                                                            </ul>
                                                            <div>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-primary sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-eye"></i>
                                                                        </span>
                                                                        <span class="text-capitalize" id="mid-admin@yootk.com">查看详情</span>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-info sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                        <i class="las la-cog"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_EDIT_URL%>" class="text-capitalize">用户编辑</a>
                                                                    </span>
                                                                </button>
                                                                <button type="button"
                                                                    class="btn btn-transparent btn-danger sm-text font-weight-bold text-capitalize t-mt-15">
                                                                    <span class="d-flex align-items-center">
                                                                        <span class="xlg-text t-mr-5">
                                                                            <i class="las la-trash"></i>
                                                                        </span>
                                                                        <a href="<%=MEMBER_DELETE_URL%>?mid=" class="text-capitalize" onclick="return deleteConfirm()">删除用户</a>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="t-bg-white cards t-shadow mt-3 mb-3 py-2" style="float">
                                                    <div class="container-fluid px-3">
                                                        <div class="row">
                                                            <div class="col-12">
                                                                <div class="row g-3 align-items-center">
                                                                    <div class="col-md-12">
                                                                        <jsp:include page="/WEB-INF/pages/plugin/split_page_plugin_bar.jsp"/>
                                                                    </div>
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
    <jsp:include page="/WEB-INF/pages/plugin/modal/back/member_modal.jsp"/>
    <script src="/js/pages/back/admin/member/member_list.js"></script>
</body>

</html>
