<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%!
    public static final String BOOK_ADD_URL = "/pages/back/admin/book/add_input";
    public static final String BOOK_LIST_URL = "/pages/back/admin/book/list";
    public static final String ITEM_ADD_URL = "/pages/back/admin/item/add_input";
    public static final String ITEM_LIST_URL = "/pages/back/admin/item/list";
    public static final String USER_ADD_URL = "/pages/back/admin/member/add_input";
    public static final String USER_LIST_URL = "/pages/back/admin/member/list";
%>


<!-- Side Nav / Display Only Small Screen  -->
<div class="mx-sidenav__content t-bg-primary">
    <!-- Side Nav Brand  -->
    <div class="mx-sidenav__brand">
        <a href="/pages/back/" class="mx-sidenav__logo t-link">
            <img src="/img/logo-w.png" alt="Adminage" class="img-fluid mx-sidenav__logo-is">
        </a>
        <a href="/pages/back/" class="t-link mx-sidenav__logo-sm">
            <img src="/img/logo-w-sm.png" alt="Adminage" class="img-fluid mx-sidenav__logo-sm-is">
        </a>
    </div>
    <!-- Side Nav Brand  End-->
    <div class="mx-sidenav__menu-container">
        <nav class="mx-sidenav__menu">
            <ul class="t-list mx-sidenav__menu-is">
                <li class="mx-sidenav__menu-item active-page">
                    <a href="/pages/back/" class="mx-sidenav__menu-link">
                        <span class="mx-sidenav__menu-icon t-mr-15">
                            <span class='bx bx-category'></span>
                        </span>
                        <span class="mx-sidenav__menu-text text-capitalize">YOOTK控制台</span>
                    </a>
                </li>

                <li class="mx-sidenav__menu-item mx-sidenav__has-sub">
                    <a href="#" class="mx-sidenav__menu-link">
                        <span class="mx-sidenav__menu-icon t-mr-15">
                            <span class='bx bx-user-circle'></span>
                        </span>
                        <span class="mx-sidenav__menu-text text-capitalize">
                            用户管理
                        </span>
                    </a>
                    <ul class="t-list mx-sidenav__sub mx-sidenav__sub--hide">
                        <li class="mx-sidenav__sub-item">
                            <a href="<%=USER_ADD_URL%>" class="mx-sidenav__sub-link">
                                <span class="mx-sidenav__sub-icon t-mr-15">
                                    <i class='bx bxs-user-plus'></i>
                                </span>
                                <span class="mx-sidenav__sub-text text-capitalize">
                                    增加用户
                                </span>
                            </a>
                        </li>
                        <li class="mx-sidenav__sub-item">
                            <a href="<%=USER_LIST_URL%>" class="mx-sidenav__sub-link ">
                                <span class="mx-sidenav__sub-icon t-mr-15">
                                    <i class='bx bxs-user-detail'></i>
                                </span>
                                <span class="mx-sidenav__sub-text text-capitalize">
                                    用户列表
                                </span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="mx-sidenav__menu-item mx-sidenav__has-sub">
                    <a href="#" class="mx-sidenav__menu-link">
                        <span class="mx-sidenav__menu-icon t-mr-15">
                            <i class='bx bxs-detail'></i>
                        </span>
                        <span class="mx-sidenav__menu-text text-capitalize">
                            图书管理
                        </span>
                    </a>
                    <ul class="t-list mx-sidenav__sub mx-sidenav__sub--hide">
                        <li class="mx-sidenav__sub-item">
                            <a href="form.html" class="mx-sidenav__sub-link">
                                <span class="mx-sidenav__sub-icon t-mr-15">
                                    <i class='bx bx-news'></i>
                                </span>
                                <span class="mx-sidenav__sub-text text-capitalize">
                                    增加图书
                                </span>
                            </a>
                        </li>
                        <li class="mx-sidenav__sub-item">
                            <a href="<%=BOOK_LIST_URL%>" class="mx-sidenav__sub-link ">
                                <span class="mx-sidenav__sub-icon t-mr-15">
                                    <i class='bx bx-task'></i>
                                </span>
                                <span class="mx-sidenav__sub-text text-capitalize">
                                    图书列表
                                </span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="mx-sidenav__menu-item mx-sidenav__has-sub">
                    <a href="#" class="mx-sidenav__menu-link">
                        <span class="mx-sidenav__menu-icon t-mr-15">
                            <i class='bx bx-library'></i>
                        </span>
                        <span class="mx-sidenav__menu-text text-capitalize">
                            图书分类
                        </span>
                    </a>
                    <ul class="t-list mx-sidenav__sub mx-sidenav__sub--hide">
                        <li class="mx-sidenav__sub-item">
                            <a href="<%=ITEM_ADD_URL%>" class="mx-sidenav__sub-link">
                                <span class="mx-sidenav__sub-icon t-mr-15">
                                    <i class='bx bx-mobile-alt bx-rotate-90'></i>
                                </span>
                                <span class="mx-sidenav__sub-text text-capitalize">
                                    增加分类
                                </span>
                            </a>
                        </li>
                        <li class="mx-sidenav__sub-item">
                            <a href="<%=ITEM_LIST_URL%>" class="mx-sidenav__sub-link ">
                                <span class="mx-sidenav__sub-icon t-mr-15">
                                    <i class='bx bx-table bx-rotate-180'></i>
                                </span>
                                <span class="mx-sidenav__sub-text text-capitalize">
                                    分类查看
                                </span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</div>