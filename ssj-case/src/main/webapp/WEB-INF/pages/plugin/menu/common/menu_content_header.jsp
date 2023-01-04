<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<header class="mx-mobile-header t-bg-primary ">
    <div class="container-fluid px-3">
        <div class="row g-3">
            <div class="col-6 align-self-center">
                <div class="mx-mobile-brand">
                    <img src="/img/logo-w.png" alt="Adminage"
                        class="img-fluid mx-mobile-brand__is">
                </div>
            </div>
            <div class="col-6 align-self-center">
                <nav class="mx-mobile-option">
                    <ul class="t-list mx-mobile-menu justify-content-end">
                        <li class="mx-mobile-menu__item">
                            <a href="#" class="mx-mobile-menu__link mx-sm-sidenav-toggle">
                                <i class='bx bx-menu-alt-right d-block'></i>
                            </a>
                        </li>
                        <li class="mx-mobile-menu__item mx-mobile-menu__sub-header">
                            <a href="#" class="mx-mobile-menu__link">
                                <i class='bx bx-menu d-block'></i>
                            </a>
                        </li>
                        <li class="mx-mobile-menu__item mx-mobile-menu__user">
                            <a href="#" class="mx-mobile-menu__link">
                                <i class='bx bxs-user-circle d-block'></i>
                            </a>
                        </li>
                    </ul>
                    <div class="mx-sub-header">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-12">
                                    <ul class="t-list mx-sm-sidenav">
                                        <li class="mx-sm-sidenav__list">
                                            <form action="#" class="t-pl-15 t-pr-15 t-pt-15 t-pb-10">
                                                <div class="mx-search-form">
                                                    <div class="mx-search-form__icon">
                                                        <i class='bx bx-search'></i>
                                                    </div>
                                                    <input type="text" class="mx-search-form__input"
                                                        placeholder="YOOTK李兴华">
                                                </div>
                                            </form>
                                        </li>
                                        <li class="mx-sm-sidenav__list mx-sm-sidenav__has-sub">
                                            <a href="#" class="mx-sm-sidenav__link">
                                                <span class="mx-sm-sidenav__icon t-mr-8">
                                                    <span class='bx bx-category'></span>
                                                </span>
                                                <span class="mx-sm-sidenav__text text-capitalize">
                                                    Java程序员
                                                </span>
                                            </a>
                                            <ul class="t-list mx-sm-sidenav__sub">
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="index.html" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《Java编程入门》
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《Java进阶开发实战》
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《JavaWEB开发实战》
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="mx-sm-sidenav__list mx-sm-sidenav__has-sub">
                                            <a href="#" class="mx-sm-sidenav__link">
                                                <span class="mx-sm-sidenav__icon t-mr-8">
                                                    <i class='bx bx-brush'></i>
                                                </span>
                                                <span class="mx-sm-sidenav__text text-capitalize">
                                                    Java架构师
                                                </span>
                                            </a>
                                            <ul class="t-list mx-sm-sidenav__sub">
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《SpringBoot开发实战》
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《SpringCloud开发实战》
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="radio.html" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《Redis开发实战》
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="mx-sm-sidenav__list mx-sm-sidenav__has-sub">
                                            <a href="#" class="mx-sm-sidenav__link">
                                                <span class="mx-sm-sidenav__icon t-mr-8">
                                                    <i class='bx bx-package'></i>
                                                </span>
                                                <span class="mx-sm-sidenav__text text-capitalize">
                                                    前端技术
                                                </span>
                                            </a>
                                            <ul class="t-list mx-sm-sidenav__sub">
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《HTML + CSS开发实战》
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《Bootstrap开发实战》
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《Vue.JS开发实战》
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《React开发实战》
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="mx-sm-sidenav__list mx-sm-sidenav__has-sub">
                                            <a href="#" class="mx-sm-sidenav__link">
                                                <span class="mx-sm-sidenav__icon t-mr-8">
                                                    <i class='bx bx-folder-open'></i>
                                                </span>
                                                <span class="mx-sm-sidenav__text text-capitalize">
                                                    系统运维
                                                </span>
                                            </a>
                                            <ul class="t-list mx-sm-sidenav__sub">
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《Docker开发实战》
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《Kubernates开发实战》
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《Spark开发实战》
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="mx-sm-sidenav__sub-list">
                                                    <a href="" class="mx-sm-sidenav__sub-link">
                                                        <span class="mx-sm-sidenav__sub-icon t-mr-8">
                                                            <span class='bx bx-pulse'></span>
                                                        </span>
                                                        <span class="mx-sm-sidenav__sub-text text-capitalize">
                                                            《Flink开发实战》
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mx-sm-user">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-12">
                                    <ul class="t-list mx-sm-sidenav">
                                        <li class="mx-sm-sidenav__list">
                                            <a href="#" class="mx-sm-sidenav__link flex-column align-items-start">
                                                <span class="text-capitalize fw-bold d-block t-pt-5">
                                                    李兴华
                                                </span>
                                                <span class="text-capitalize xsm-text d-block mt-1">
                                                    管理员
                                                </span>
                                            </a>
                                            <hr class="mx-hr mx-hr--primary">
                                        </li>
                                        <li class="mx-sm-sidenav__list">
                                            <a href="#" class="mx-sm-sidenav__link">
                                                <span class="mx-sm-sidenav__icon t-mr-8">
                                                    <i class='bx bx-user'></i>
                                                </span>
                                                <span class="mx-sm-sidenav__text text-capitalize">
                                                    个人中心
                                                </span>
                                            </a>
                                        </li>
                                        <li class="mx-sm-sidenav__list">
                                            <a href="#" class="mx-sm-sidenav__link">
                                                <span class="mx-sm-sidenav__icon t-mr-8">
                                                    <i class='bx bxs-user-account'></i>
                                                </span>
                                                <span class="mx-sm-sidenav__text text-capitalize">
                                                    增加用户
                                                </span>
                                            </a>
                                        </li>
                                        <li class="mx-sm-sidenav__list">
                                            <a href="#" class="mx-sm-sidenav__link">
                                                <span class="mx-sm-sidenav__icon t-mr-8">
                                                    <i class='bx bx-lock'></i>
                                                </span>
                                                <span class="mx-sm-sidenav__text text-capitalize">
                                                    密码重置
                                                </span>
                                            </a>
                                        </li>
                                        <li class="mx-sm-sidenav__list">
                                            <a href="#" class="mx-sm-sidenav__link">
                                                <span class="mx-sm-sidenav__icon t-mr-8">
                                                    <i class='bx bx-help-circle'></i>
                                                </span>
                                                <span class="mx-sm-sidenav__text text-capitalize">
                                                    帮助
                                                </span>
                                            </a>
                                            <hr class="mx-hr mx-hr--primary">
                                        </li>
                                        <li class="mx-sm-sidenav__list">
                                            <a href="#" class="mx-sm-sidenav__link">
                                                <span class="mx-sm-sidenav__icon t-mr-8">
                                                    <i class='bx bx-log-out-circle'></i>
                                                </span>
                                                <span class="mx-sm-sidenav__text text-capitalize">
                                                    注销
                                                </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>

</header>
