<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%!
    public static final String BOOK_ADD_URL = "/pages/back/admin/book/add_input";
    public static final String BOOK_LIST_URL = "/pages/back/admin/book/list";
    public static final String ITEM_ADD_URL = "/pages/back/admin/item/add_input";
    public static final String ITEM_LIST_URL = "/pages/back/admin/item/list";
    public static final String USER_ADD_URL = "/pages/back/admin/member/add_input";
    public static final String USER_LIST_URL = "/pages/back/admin/member/list";
%>
<div class="position-relative d-xl-none">
    <div class="mx-mobile-nav-wrapper"></div>
    <div class="mx-mobile-nav">
        <div class="mx-mobile-nav__close">
            <i class="las la-times"></i>
        </div>
        <div class="mx-mobile-brand mx-mobile-nav__brand ">
            <img src="/img/logo-w.png" alt="Adminage" class="img-fluid mx-mobile-brand__is">
        </div>
        <nav class="mx-mobile-nav__menu" data-simplebar>
            <ul class="t-list mx-sm-sidenav">
                <li class="mx-sm-sidenav__list">
                    <a href="index.html" class="mx-sm-sidenav__link">
                        <span class="mx-sm-sidenav__icon t-mr-8">
                            <span class='bx bx-category'></span>
                        </span>
                        <span class="mx-sm-sidenav__text text-capitalize">
                            YOOTK控制台
                        </span>
                    </a>
                </li>
                <li class="mx-sm-sidenav__list mx-sm-sidenav__has-sub">
                    <a href="#" class="mx-sm-sidenav__link">
                        <span class="mx-sm-sidenav__icon t-mr-8">
                            <i class='bx bxs-user'></i>
                        </span>
                        <span class="mx-sm-sidenav__text text-capitalize">
                            用户管理
                        </span>
                    </a>
                    <ul class="t-list mx-sm-sidenav__sub">
                        <li class="mx-sm-sidenav__sub-list">
                            <a href="<%=USER_ADD_URL%>" class="mx-sm-sidenav__sub-link">
                                <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                    <i class='bx bxs-user-plus'></i>
                                </span>
                                <span class="mx-sm-sidenav__sub-text text-capitalize">
                                    增加用户
                                </span>
                            </a>
                        </li>
                        <li class="mx-sm-sidenav__sub-list">
                            <a href="<%=USER_LIST_URL%>" class="mx-sm-sidenav__sub-link">
                                <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                    <i class='bx bxs-user-detail'></i>
                                </span>
                                <span class="mx-sm-sidenav__sub-text text-capitalize">
                                    用户列表
                                </span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="mx-sm-sidenav__sub-title xsm-text t-text-light text-uppercase t-bg-primary">
                    核心数据
                </li>
                <li class="mx-sm-sidenav__list mx-sm-sidenav__has-sub">
                    <a href="#" class="mx-sm-sidenav__link">
                        <span class="mx-sm-sidenav__icon t-mr-8">
                            <i class='bx bxs-detail'></i>
                        </span>
                        <span class="mx-sm-sidenav__text text-capitalize">
                            图书管理
                        </span>
                    </a>
                    <ul class="t-list mx-sm-sidenav__sub">
                        <li class="mx-sm-sidenav__sub-list">
                            <a href="<%=BOOK_ADD_URL%>" class="mx-sm-sidenav__sub-link">
                                <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                    <i class='bx bx-news'></i>
                                </span>
                                <span class="mx-sm-sidenav__sub-text text-capitalize">
                                    增加图书
                                </span>
                            </a>
                        </li>
                        <li class="mx-sm-sidenav__sub-list">
                            <a href="<%=BOOK_LIST_URL%>" class="mx-sm-sidenav__sub-link">
                                <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                    <i class='bx bx-task'></i>
                                </span>
                                <span class="mx-sm-sidenav__sub-text text-capitalize">
                                    图书列表
                                </span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="mx-sm-sidenav__list mx-sm-sidenav__has-sub">
                    <a href="#" class="mx-sm-sidenav__link">
                        <span class="mx-sm-sidenav__icon t-mr-8">
                            <i class='bx bx-library'></i>
                        </span>
                        <span class="mx-sm-sidenav__text text-capitalize">
                            图书分类
                        </span>
                    </a>
                    <ul class="t-list mx-sm-sidenav__sub">
                        <li class="mx-sm-sidenav__sub-list">
                            <a href="<%=ITEM_ADD_URL%>" class="mx-sm-sidenav__sub-link">
                                <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                    <i class='bx bx-mobile-alt bx-rotate-90'></i>
                                </span>
                                <span class="mx-sm-sidenav__sub-text text-capitalize">
                                    增加分类
                                </span>
                            </a>
                        </li>
                        <li class="mx-sm-sidenav__sub-list">
                            <a href="<%=ITEM_LIST_URL%>" class="mx-sm-sidenav__sub-link">
                                <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                    <i class='bx bx-table bx-rotate-180'></i>
                                </span>
                                <span class="mx-sm-sidenav__sub-text text-capitalize">
                                    分类列表
                                </span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</div>