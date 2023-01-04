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
                                                <!-- 此处编写页面展示代码 -->
                                                <div class="col-lg-6 col-xl-4 col-xxl-3">
                                                    <div class="cards t-bg-white t-shadow h-100">
                                                        <div class="mx-chart-box">
                                                            <div id="chart-1"></div>
                                                            <div
                                                                class="mx-box mx-box--round mx-box--sm mx-box--light-success rounded-circle mx-chart-box__icon mx-chart-box_price-up">
                                                                <span class="d-inline-block text-uppercase">
                                                                    <i class="fa fa-long-arrow-up"
                                                                        aria-hidden="true"></i>
                                                                </span>
                                                            </div>
                                                            <div class="d-flex align-items-center t-mt-30">
                                                                <div
                                                                    class="mx-box mx-box--round mx-box--lg mx-box--light-success t-mr-15">
                                                                    <span
                                                                        class="d-inline-block text-uppercase xxlg-text">
                                                                        <i class="fa fa-puzzle-piece"
                                                                            aria-hidden="true"></i>
                                                                    </span>
                                                                </div>
                                                                <div class="d-block">
                                                                    <span
                                                                        class="d-block sm-text text-uppercase t-heading-font fw-bold">
                                                                        网站访问量
                                                                    </span>
                                                                    <h3 class="mb-0 mt-0">490</h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-xl-4 col-xxl-3">
                                                    <div class="cards t-bg-white t-shadow h-100">
                                                        <div class="mx-chart-box">
                                                            <div id="chart-2"></div>
                                                            <div
                                                                class="mx-box mx-box--round mx-box--sm mx-box--light-warning rounded-circle mx-chart-box__icon mx-chart-box_price-down">
                                                                <span class="d-inline-block text-uppercase">
                                                                    <i class="fa fa-long-arrow-up"
                                                                        aria-hidden="true"></i>
                                                                </span>
                                                            </div>
                                                            <div class="d-flex align-items-center t-mt-30">
                                                                <div
                                                                    class="mx-box mx-box--round mx-box--lg mx-box--light-warning t-mr-15">
                                                                    <span
                                                                        class="d-inline-block text-uppercase xxlg-text">
                                                                        <i class="fa fa-bolt" aria-hidden="true"></i>
                                                                    </span>
                                                                </div>
                                                                <div class="d-block">
                                                                    <span
                                                                        class="d-block sm-text text-uppercase t-heading-font fw-bold">
                                                                        交易金额
                                                                    </span>
                                                                    <h3 class="mb-0 mt-0">300,000</h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-xl-4 col-xxl-3">
                                                    <div class="cards t-bg-white t-shadow h-100">
                                                        <div class="mx-chart-box">
                                                            <div id="chart-3"></div>
                                                            <div
                                                                class="mx-box mx-box--round mx-box--sm mx-box--light-secondary rounded-circle mx-chart-box__icon mx-chart-box_price-up">
                                                                <span class="d-inline-block text-uppercase">
                                                                    <i class="fa fa-long-arrow-up"
                                                                        aria-hidden="true"></i>
                                                                </span>
                                                            </div>
                                                            <div class="d-flex align-items-center t-mt-30">
                                                                <div
                                                                    class="mx-box mx-box--round mx-box--lg mx-box--light-secondary t-mr-15">
                                                                    <span
                                                                        class="d-inline-block text-uppercase xxlg-text">
                                                                        <i class="fa fa-user-plus"
                                                                            aria-hidden="true"></i>
                                                                    </span>
                                                                </div>
                                                                <div class="d-block">
                                                                    <span
                                                                        class="d-block sm-text text-uppercase t-heading-font fw-bold">
                                                                        用户注册量
                                                                    </span>
                                                                    <h3 class="mb-0 mt-0">20,000</h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-xl-4 col-xxl-3">
                                                    <div class="cards t-bg-white t-shadow h-100">
                                                        <div class="mx-chart-box">
                                                            <div id="chart-4"></div>
                                                            <div
                                                                class="mx-box mx-box--round mx-box--sm mx-box--light-danger rounded-circle mx-chart-box__icon mx-chart-box_price-down">
                                                                <span class="d-inline-block text-uppercase">
                                                                    <i class="fa fa-long-arrow-up"
                                                                        aria-hidden="true"></i>
                                                                </span>
                                                            </div>
                                                            <div class="d-flex align-items-center t-mt-30">
                                                                <div
                                                                    class="mx-box mx-box--round mx-box--lg mx-box--light-danger t-mr-15">
                                                                    <span
                                                                        class="d-inline-block text-uppercase xxlg-text">
                                                                        <i class="fa fa-shield" aria-hidden="true"></i>
                                                                    </span>
                                                                </div>
                                                                <div class="d-block">
                                                                    <span
                                                                        class="d-block sm-text text-uppercase t-heading-font fw-bold">
                                                                        退单量
                                                                    </span>
                                                                    <h3 class="mb-0 mt-0">540</h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xl-9 col-xxl-10">
                                                    <div class="cards t-bg-white t-shadow h-100 p-4">
                                                        <div class="table-responsive mx-table">
                                                            <h6 class="mt-0 mb-0 text-capitalize">最新出版图书</h6>
                                                            <table
                                                                class="t-mb-15 table table-hover table-borderless t-text-dark--light-15 sm-text">
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col">图书名称</th>
                                                                        <th scope="col">价格</th>
                                                                        <th scope="col">出版机构</th>
                                                                        <th scope="col">作者</th>
                                                                        <th scope="col">分类</th>
                                                                        <th scope="col">状态</th>
                                                                        <th scope="col">描述</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody class="t-mt-15">
                                                                    <tr>
                                                                        <td>
                                                                            <div
                                                                                class="messages__msg justify-content-center t-width-max">
                                                                                <div
                                                                                    class="messages__avatar messages__avatar-empty t-bg-alpha">
                                                                                    <img src="/upload/book/nophoto.png" class="img-fluid w-100" />
                                                                                </div>
                                                                                <div
                                                                                    class="messages__content messages__content--unseen">
                                                                                    <div class="messages__title">
                                                                                        <span
                                                                                            class="messages__author text-capitalize">
                                                                                            《Java程序设计开发实战》
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="messages__content-body">
                                                                                        <span class="messages__preview">
                                                                                            李兴华原创精品系列图书
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>49.8</td>
                                                                        <td><a href="https://www.yootk.com" target="_ablank">沐言优拓（www.yootk.com）</a></td>
                                                                        <td>李兴华</td>
                                                                        <td>信息技术 - 编程语言</td>
                                                                        <td>
                                                                            <button type="button"
                                                                                class="btn btn-transparent btn-success xsm-text">上架销售</button>
                                                                        </td>
                                                                        <td
                                                                            class="text-capitalize text-primary font-weight-bold xsm-text">
                                                                            Java核心语法与面向对象编程</td>
                                                                        <td>
                                                                            <div class="dropdown ">
                                                                                <button
                                                                                    class="btn t-bg-clear t-text-dark--light-40"
                                                                                    type="button" data-toggle="dropdown"
                                                                                    aria-haspopup="true"
                                                                                    aria-expanded="false">
                                                                                    <i class="fa fa-ellipsis-h"
                                                                                        aria-hidden="true"></i>
                                                                                </button>
                                                                                <div
                                                                                    class="dropdown-menu dropdown-menu-right">
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;查看详情</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;图书编辑</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-line-chart" aria-hidden="true"></i>&nbsp;销售数据</a>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div
                                                                                class="messages__msg justify-content-center t-width-max">
                                                                                <div
                                                                                    class="messages__avatar messages__avatar-empty t-bg-gamma">
                                                                                    <img src="/upload/book/nophoto.png" class="img-fluid w-100" />
                                                                                </div>
                                                                                <div
                                                                                    class="messages__content messages__content--unseen">
                                                                                    <div class="messages__title">
                                                                                        <span
                                                                                            class="messages__author text-capitalize">
                                                                                            《Java进阶开发实战》
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="messages__content-body">
                                                                                        <span class="messages__preview">
                                                                                            李兴华原创精品系列图书
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>59.8</td>
                                                                        <td><a href="https://www.yootk.com" target="_ablank">沐言优拓（www.yootk.com）</a></td>
                                                                        <td>李兴华</td>
                                                                        <td>信息技术 - 编程语言</td>
                                                                        <td>
                                                                            <button type="button"
                                                                                class="btn btn-transparent btn-success xsm-text">上架销售</button>
                                                                        </td>
                                                                        <td
                                                                            class="text-capitalize text-secondary font-weight-bold xsm-text">
                                                                            IO、反射、类集、J.U.C、JVM、JDBC</td>
                                                                        <td>
                                                                            <div class="dropdown ">
                                                                                <button
                                                                                    class="btn t-bg-clear t-text-dark--light-40"
                                                                                    type="button" data-toggle="dropdown"
                                                                                    aria-haspopup="true"
                                                                                    aria-expanded="false">
                                                                                    <i class="fa fa-ellipsis-h"
                                                                                        aria-hidden="true"></i>
                                                                                </button>
                                                                                <div
                                                                                    class="dropdown-menu dropdown-menu-right">
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;查看详情</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;图书编辑</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-line-chart" aria-hidden="true"></i>&nbsp;销售数据</a>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div
                                                                                class="messages__msg justify-content-center t-width-max">
                                                                                <div
                                                                                    class="messages__avatar messages__avatar-empty t-bg-gamma">
                                                                                    <img src="/upload/book/nophoto.png" class="img-fluid w-100" />
                                                                                </div>
                                                                                <div
                                                                                    class="messages__content messages__content--unseen">
                                                                                    <div class="messages__title">
                                                                                        <span
                                                                                            class="messages__author text-capitalize">
                                                                                            《JavaWEB开发实战》
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="messages__content-body">
                                                                                        <span class="messages__preview">
                                                                                            李兴华原创精品系列图书
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>69.8</td>
                                                                        <td><a href="https://www.yootk.com" target="_ablank">沐言优拓（www.yootk.com）</a></td>
                                                                        <td>李兴华</td>
                                                                        <td>信息技术 - 编程语言</td>
                                                                        <td>
                                                                            <button type="button"
                                                                                class="btn btn-transparent btn-warning xsm-text text-capitalize">上架审核</button>
                                                                        </td>
                                                                        <td
                                                                            class="text-capitalize text-success font-weight-bold xsm-text">
                                                                            JSP&Servlet、MVC、Ajax、XML、JSON、项目实战</td>
                                                                        <td>
                                                                            <div class="dropdown ">
                                                                                <button
                                                                                    class="btn t-bg-clear t-text-dark--light-40"
                                                                                    type="button" data-toggle="dropdown"
                                                                                    aria-haspopup="true"
                                                                                    aria-expanded="false">
                                                                                    <i class="fa fa-ellipsis-h"
                                                                                        aria-hidden="true"></i>
                                                                                </button>
                                                                                <div
                                                                                    class="dropdown-menu dropdown-menu-right">
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;查看详情</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;图书编辑</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-line-chart" aria-hidden="true"></i>&nbsp;销售数据</a>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div
                                                                                class="messages__msg justify-content-center t-width-max">
                                                                                <div
                                                                                    class="messages__avatar messages__avatar-empty t-bg-gamma">
                                                                                    <img src="/upload/book/nophoto.png" class="img-fluid w-100" />
                                                                                </div>
                                                                                <div
                                                                                    class="messages__content messages__content--unseen">
                                                                                    <div class="messages__title">
                                                                                        <span
                                                                                            class="messages__author text-capitalize">
                                                                                            《SpringBoot开发实战》
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="messages__content-body">
                                                                                        <span class="messages__preview">
                                                                                            李兴华原创精品系列图书
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>68.9</td>
                                                                        <td><a href="https://www.yootk.com" target="_ablank">沐言优拓（www.yootk.com）</a></td>
                                                                        <td>李兴华</td>
                                                                        <td>信息技术 - 编程语言</td>
                                                                        <td>
                                                                            <button type="button"
                                                                                class="btn btn-transparent btn-primary xsm-text text-capitalize">销售审核</button>
                                                                        </td>
                                                                        <td
                                                                            class="text-capitalize text-warning font-weight-bold xsm-text">
                                                                            REST微服务、Actuator、Starter、SpringBootCLI</td>
                                                                        <td>
                                                                            <div class="dropdown ">
                                                                                <button
                                                                                    class="btn t-bg-clear t-text-dark--light-40"
                                                                                    type="button" data-toggle="dropdown"
                                                                                    aria-haspopup="true"
                                                                                    aria-expanded="false">
                                                                                    <i class="fa fa-ellipsis-h"
                                                                                        aria-hidden="true"></i>
                                                                                </button>
                                                                                <div
                                                                                    class="dropdown-menu dropdown-menu-right">
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;查看详情</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;图书编辑</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-line-chart" aria-hidden="true"></i>&nbsp;销售数据</a>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div
                                                                                class="messages__msg justify-content-center t-width-max">
                                                                                <div
                                                                                    class="messages__avatar messages__avatar-empty t-bg-gamma">
                                                                                    <img src="/upload/book/nophoto.png" class="img-fluid w-100" />
                                                                                </div>
                                                                                <div
                                                                                    class="messages__content messages__content--unseen">
                                                                                    <div class="messages__title">
                                                                                        <span
                                                                                            class="messages__author text-capitalize">
                                                                                            《SpringCloud开发实战》
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="messages__content-body">
                                                                                        <span class="messages__preview">
                                                                                            李兴华原创精品系列图书
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>78.9</td>
                                                                        <td><a href="https://www.yootk.com" target="_ablank">沐言优拓（www.yootk.com）</a></td>
                                                                        <td>李兴华</td>
                                                                        <td>信息技术 - 编程语言</td>
                                                                        <td>
                                                                            <button type="button"
                                                                                class="btn btn-transparent btn-primary xsm-text text-capitalize">销售审核</button>
                                                                        </td>
                                                                        <td
                                                                            class="text-capitalize text-warning font-weight-bold xsm-text">
                                                                            SpringCloudAlibaba、Nacos、Sentinel、Seata、Skywalking</td>
                                                                        <td>
                                                                            <div class="dropdown ">
                                                                                <button
                                                                                    class="btn t-bg-clear t-text-dark--light-40"
                                                                                    type="button" data-toggle="dropdown"
                                                                                    aria-haspopup="true"
                                                                                    aria-expanded="false">
                                                                                    <i class="fa fa-ellipsis-h"
                                                                                        aria-hidden="true"></i>
                                                                                </button>
                                                                                <div
                                                                                    class="dropdown-menu dropdown-menu-right">
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;查看详情</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;图书编辑</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-line-chart" aria-hidden="true"></i>&nbsp;销售数据</a>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <div class="row t-mt-15 align-items-center">
                                                            <div class="col-md-7 t-mb-15 mb-md-0">
                                                                <ul class="t-list d-flex">
                                                                    <li class="t-list__item">
                                                                        <a href="#"
                                                                            class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text">
                                                                            <i class="las la-angle-double-left"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="t-list__item">
                                                                        <a href="#"
                                                                            class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text active">
                                                                            1
                                                                        </a>
                                                                    </li>
                                                                    <li class="t-list__item">
                                                                        <a href="#"
                                                                            class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text">
                                                                            2
                                                                        </a>
                                                                    </li>
                                                                    <li class="t-list__item">
                                                                        <a href="#"
                                                                            class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text">
                                                                            3
                                                                        </a>
                                                                    </li>
                                                                    <li class="t-list__item">
                                                                        <a href="#"
                                                                            class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text">
                                                                            4
                                                                        </a>
                                                                    </li>
                                                                    <li class="t-list__item">
                                                                        <a href="#"
                                                                            class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text">
                                                                            5
                                                                        </a>
                                                                    </li>
                                                                    <li class="t-list__item">
                                                                        <a href="#"
                                                                            class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text">
                                                                            <i class="las la-angle-double-right"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <ul
                                                                    class="t-list d-flex justify-content-md-end align-items-center">
                                                                    <li class="t-list__item nice-select--up">
                                                                        <select class="mx-select">
                                                                            <option data-display="10">10</option>
                                                                            <option value="1">10 - 20</option>
                                                                            <option value="2">20 - 30</option>
                                                                            <option value="3">30 - 40</option>
                                                                            <option value="4">40 - 50</option>
                                                                        </select>
                                                                    </li>
                                                                    <li class="t-list__item">
                                                                        <span
                                                                            class="d-inline-block text-capitalize sm-text">
                                                                            显示 10 -20 页，共 300 页
                                                                        </span>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xl-3 col-xxl-2">
                                                    <div class="cards t-bg-white t-shadow h-100">
                                                        <div
                                                            class="cards__header t-pt-30 t-pb-15 t-pl-15 t-pr-15 border-bottom d-flex align-items-center justify-content-between">
                                                            <h6 class="mt-0 mb-0 text-capitalize">
                                                                新注册用户
                                                            </h6>
                                                            <ul class="t-list d-flex flex-wrap align-items-center">
                                                                <li class="t-list__item">
                                                                    <a href="#"
                                                                        class="t-link t-link--primary font-weight-md text-capitalize sm-text active">今天</a>
                                                                </li>
                                                                <li class="t-list__item">
                                                                    <a href="#"
                                                                        class="t-link t-link--primary font-weight-md text-capitalize sm-text">本周</a>
                                                                </li>
                                                                <li class="t-list__item">
                                                                    <a href="#"
                                                                        class="t-link t-link--primary font-weight-md text-capitalize sm-text">本月</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="cards__body t-pt-30 t-pl-15 t-pr-15 t-pb-30">
                                                            <ul class="t-list">
                                                                <li class="mb-3">
                                                                    <div
                                                                        class="d-flex justify-content-between align-items-start">
                                                                        <div
                                                                            class="messages__msg justify-content-center t-width-max">
                                                                            <div
                                                                                class="avatars avatars--rounded avatars--sm-plus t-mr-8">
                                                                                <img src="/upload/member/nophoto.png"
                                                                                    alt="max" class="img-fulid w-100">
                                                                            </div>
                                                                            <div
                                                                                class="messages__content messages__content--unseen">
                                                                                <div class="messages__title">
                                                                                    <span
                                                                                        class="messages__author text-capitalize">
                                                                                        Christian bell
                                                                                    </span>
                                                                                </div>
                                                                                <div class="messages__content-body">
                                                                                    <span
                                                                                        class="messages__preview font-weight-normal text-capitalize t-line-1">
                                                                                        visual designer
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <a href="#"
                                                                            class="badges badges-rounded badges-sm badges-secondary-half  text-capitalize">
                                                                            关注
                                                                        </a>
                                                                    </div>
                                                                </li>
                                                                <li class="mb-3">
                                                                    <div
                                                                        class="d-flex justify-content-between align-items-start">
                                                                        <div
                                                                            class="messages__msg justify-content-center t-width-max">
                                                                            <div
                                                                                class="avatars avatars--rounded avatars--sm-plus t-mr-8">
                                                                                <img src="/upload/member/nophoto.png"
                                                                                    alt="max" class="img-fulid w-100">
                                                                            </div>
                                                                            <div
                                                                                class="messages__content messages__content--unseen">
                                                                                <div class="messages__title">
                                                                                    <span
                                                                                        class="messages__author text-capitalize">
                                                                                        jack rayan
                                                                                    </span>
                                                                                </div>
                                                                                <div class="messages__content-body">
                                                                                    <span
                                                                                        class="messages__preview font-weight-normal text-capitalize t-line-1">
                                                                                        react developer
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <a href="#"
                                                                            class="badges badges-rounded badges-sm badges-secondary-half  text-capitalize">
                                                                            关注
                                                                        </a>
                                                                    </div>
                                                                </li>
                                                                <li class="mb-3">
                                                                    <div
                                                                        class="d-flex justify-content-between align-items-start">
                                                                        <div
                                                                            class="messages__msg justify-content-center t-width-max">
                                                                            <div
                                                                                class="avatars avatars--rounded avatars--sm-plus t-mr-8">
                                                                                <img src="/upload/member/nophoto.png" alt="max"
                                                                                    class="img-fulid w-100">
                                                                            </div>
                                                                            <div
                                                                                class="messages__content messages__content--unseen">
                                                                                <div class="messages__title">
                                                                                    <span
                                                                                        class="messages__author text-capitalize">
                                                                                        jhon doe
                                                                                    </span>
                                                                                </div>
                                                                                <div class="messages__content-body">
                                                                                    <span
                                                                                        class="messages__preview font-weight-normal text-capitalize t-line-1">
                                                                                        node js
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <a href="#"
                                                                            class="badges badges-rounded badges-sm badges-secondary-half  text-capitalize">
                                                                            关注
                                                                        </a>
                                                                    </div>
                                                                </li>
                                                                <li class="mb-3">
                                                                    <div
                                                                        class="d-flex justify-content-between align-items-start">
                                                                        <div
                                                                            class="messages__msg justify-content-center t-width-max">
                                                                            <div
                                                                                class="avatars avatars--rounded avatars--sm-plus t-mr-8">
                                                                                <img src="/upload/member/nophoto.png"
                                                                                    alt="max" class="img-fulid w-100">
                                                                            </div>
                                                                            <div
                                                                                class="messages__content messages__content--unseen">
                                                                                <div class="messages__title">
                                                                                    <span
                                                                                        class="messages__author text-capitalize">
                                                                                        sher khan
                                                                                    </span>
                                                                                </div>
                                                                                <div class="messages__content-body">
                                                                                    <span
                                                                                        class="messages__preview font-weight-normal text-capitalize t-line-1">
                                                                                        gatsby
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <a href="#"
                                                                            class="badges badges-rounded badges-sm badges-secondary-half  text-capitalize">
                                                                            关注
                                                                        </a>
                                                                    </div>
                                                                </li>
                                                                <li class="mb-0">
                                                                    <div
                                                                        class="d-flex justify-content-between align-items-start">
                                                                        <div
                                                                            class="messages__msg justify-content-center t-width-max">
                                                                            <div
                                                                                class="avatars avatars--rounded avatars--sm-plus t-mr-8">
                                                                                <img src="/upload/member/nophoto.png"
                                                                                    alt="max" class="img-fulid w-100">
                                                                            </div>
                                                                            <div
                                                                                class="messages__content messages__content--unseen">
                                                                                <div class="messages__title">
                                                                                    <span
                                                                                        class="messages__author text-capitalize">
                                                                                        sher khan
                                                                                    </span>
                                                                                </div>
                                                                                <div class="messages__content-body">
                                                                                    <span
                                                                                        class="messages__preview font-weight-normal text-capitalize t-line-1">
                                                                                        gatsby
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <a href="#"
                                                                            class="badges badges-rounded badges-sm badges-secondary-half  text-capitalize">
                                                                            关注
                                                                        </a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xl-6 col-xxl-5">
                                                    <div class="cards t-bg-white t-shadow h-100">
                                                        <div
                                                            class="cards__header t-pt-30 t-pb-15 t-pl-15 t-pr-15 border-bottom d-flex align-items-center justify-content-between">
                                                            <h6 class="mt-0 mb-0 text-capitalize">
                                                                图书信息分类
                                                            </h6>
                                                        </div>
                                                        <div class="cards__body t-pt-30 t-pl-15 t-pr-15 t-pb-30">
                                                            <ul class="t-list">
                                                                <li class="mb-3">
                                                                    <div
                                                                        class="d-flex justify-content-between align-items-start">
                                                                        <div
                                                                            class="messages__msg justify-content-center t-width-max">
                                                                            <div
                                                                                class="avatars avatars--rounded avatars--sm-plus t-mr-8">
                                                                                <img src="/img/yootk-item.png"
                                                                                    alt="max" class="img-fulid w-100">
                                                                            </div>
                                                                            <div
                                                                                class="messages__content messages__content--unseen">
                                                                                <div class="messages__title">
                                                                                    <span
                                                                                        class="messages__author text-capitalize">
                                                                                        人文
                                                                                    </span>
                                                                                </div>
                                                                                <div class="messages__content-body">
                                                                                    <span
                                                                                        class="messages__preview font-weight-normal text-capitalize t-line-1">
                                                                                        哲学、经济学、政治学、史学、法学、文艺学、伦理学、语言学等相关图书。
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <a href="#"
                                                                            class="badges badges-rounded badges-sm badges-secondary-half  text-capitalize">
                                                                            <i class="fa fa-list-ul" aria-hidden="true"></i>&nbsp;查看分类图书信息
                                                                        </a>
                                                                    </div>
                                                                </li>
                                                                <li class="mb-3">
                                                                    <div
                                                                        class="d-flex justify-content-between align-items-start">
                                                                        <div
                                                                            class="messages__msg justify-content-center t-width-max">
                                                                            <div
                                                                                class="avatars avatars--rounded avatars--sm-plus t-mr-8">
                                                                                <img src="/img/yootk-item.png"
                                                                                    alt="max" class="img-fulid w-100">
                                                                            </div>
                                                                            <div
                                                                                class="messages__content messages__content--unseen">
                                                                                <div class="messages__title">
                                                                                    <span
                                                                                        class="messages__author text-capitalize">
                                                                                        科技
                                                                                    </span>
                                                                                </div>
                                                                                <div class="messages__content-body">
                                                                                    <span
                                                                                        class="messages__preview font-weight-normal text-capitalize t-line-1">
                                                                                        科学技术、能源技术、信息技术、通讯技术等相关图书
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <a href="#"
                                                                            class="badges badges-rounded badges-sm badges-secondary-half  text-capitalize">
                                                                            <i class="fa fa-list-ul" aria-hidden="true"></i>&nbsp;查看分类图书信息
                                                                        </a>
                                                                    </div>
                                                                </li>
                                                                <li class="mb-3">
                                                                    <div
                                                                        class="d-flex justify-content-between align-items-start">
                                                                        <div
                                                                            class="messages__msg justify-content-center t-width-max">
                                                                            <div
                                                                                class="avatars avatars--rounded avatars--sm-plus t-mr-8">
                                                                                <img src="/img/yootk-item.png" alt="max"
                                                                                    class="img-fulid w-100">
                                                                            </div>
                                                                            <div
                                                                                class="messages__content messages__content--unseen">
                                                                                <div class="messages__title">
                                                                                    <span
                                                                                        class="messages__author text-capitalize">
                                                                                        医药
                                                                                    </span>
                                                                                </div>
                                                                                <div class="messages__content-body">
                                                                                    <span
                                                                                        class="messages__preview font-weight-normal text-capitalize t-line-1">
                                                                                        医学、卫生、药品、生物、医学理论相关图书
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <a href="#"
                                                                            class="badges badges-rounded badges-sm badges-secondary-half  text-capitalize">
                                                                            <i class="fa fa-list-ul" aria-hidden="true"></i>&nbsp;查看分类图书信息
                                                                        </a>
                                                                    </div>
                                                                </li>
                                                                <li class="mb-3">
                                                                    <div
                                                                        class="d-flex justify-content-between align-items-start">
                                                                        <div
                                                                            class="messages__msg justify-content-center t-width-max">
                                                                            <div
                                                                                class="avatars avatars--rounded avatars--sm-plus t-mr-8">
                                                                                <img src="/img/yootk-item.png"
                                                                                    alt="max" class="img-fulid w-100">
                                                                            </div>
                                                                            <div
                                                                                class="messages__content messages__content--unseen">
                                                                                <div class="messages__title">
                                                                                    <span
                                                                                        class="messages__author text-capitalize">
                                                                                        大学教材
                                                                                    </span>
                                                                                </div>
                                                                                <div class="messages__content-body">
                                                                                    <span
                                                                                        class="messages__preview font-weight-normal text-capitalize t-line-1">
                                                                                        定制化本土系列教材，由本土知名专家撰写，符合信息化强国学习要求
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <a href="#"
                                                                            class="badges badges-rounded badges-sm badges-secondary-half  text-capitalize">
                                                                            <i class="fa fa-list-ul" aria-hidden="true"></i>&nbsp;查看分类图书信息
                                                                        </a>
                                                                    </div>
                                                                </li>
                                                                <li class="mb-0">
                                                                    <div
                                                                        class="d-flex justify-content-between align-items-start">
                                                                        <div
                                                                            class="messages__msg justify-content-center t-width-max">
                                                                            <div
                                                                                class="avatars avatars--rounded avatars--sm-plus t-mr-8">
                                                                                <img src="/img/yootk-item.png"
                                                                                    alt="max" class="img-fulid w-100">
                                                                            </div>
                                                                            <div
                                                                                class="messages__content messages__content--unseen">
                                                                                <div class="messages__title">
                                                                                    <span
                                                                                        class="messages__author text-capitalize">
                                                                                        航空
                                                                                    </span>
                                                                                </div>
                                                                                <div class="messages__content-body">
                                                                                    <span
                                                                                        class="messages__preview font-weight-normal text-capitalize t-line-1">
                                                                                        空间技术、航天技术、飞机技术、飞行原理等相关图书
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <a href="#"
                                                                            class="badges badges-rounded badges-sm badges-secondary-half  text-capitalize">
                                                                            <i class="fa fa-list-ul" aria-hidden="true"></i>&nbsp;查看分类图书信息
                                                                        </a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xl-6 col-xxl-7">
                                                    <div class="cards t-bg-white t-shadow h-100 p-4">
                                                        <div class="table-responsive mx-table">
                                                            <h6 class="mt-0 mb-0 text-capitalize">系统管理员</h6>
                                                            <table
                                                                class="t-mb-15 table table-hover table-borderless t-text-dark--light-15 sm-text">
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col">姓名</th>
                                                                        <th scope="col">帐号</th>
                                                                        <th scope="col">密码</th>
                                                                        <th scope="col">角色</th>
                                                                        <th scope="col">最后一次登录日期</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody class="t-mt-15">
                                                                    <tr>
                                                                        <td>
                                                                            <div
                                                                                class="messages__msg justify-content-center t-width-max">
                                                                                <div
                                                                                    class="messages__avatar messages__avatar-empty t-bg-alpha">
                                                                                    <img src="/upload/member/nophoto.png" class="img-fluid w-100" />
                                                                                </div>
                                                                                <div
                                                                                    class="messages__content messages__content--unseen">
                                                                                    <div class="messages__title">
                                                                                        <span
                                                                                            class="messages__author text-capitalize">
                                                                                            李兴华
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="messages__content-body">
                                                                                        <span class="messages__preview">
                                                                                            超级管理员
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>lixinghua</td>
                                                                        <td>********</td>
                                                                        <td>admin</td>
                                                                        <td>2025-10-10 19:09:07</td>
                                                                        <td>
                                                                            <div class="dropdown ">
                                                                                <button
                                                                                    class="btn t-bg-clear t-text-dark--light-40"
                                                                                    type="button" data-toggle="dropdown"
                                                                                    aria-haspopup="true"
                                                                                    aria-expanded="false">
                                                                                    <i class="fa fa-ellipsis-h"
                                                                                        aria-hidden="true"></i>
                                                                                </button>
                                                                                <div
                                                                                    class="dropdown-menu dropdown-menu-right">
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;查看详情</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;用户编辑</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-list-alt" aria-hidden="true"></i>&nbsp;更新记录</a>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div
                                                                                class="messages__msg justify-content-center t-width-max">
                                                                                <div
                                                                                    class="messages__avatar messages__avatar-empty t-bg-alpha">
                                                                                    <img src="/upload/member/nophoto.png" class="img-fluid w-100" />
                                                                                </div>
                                                                                <div
                                                                                    class="messages__content messages__content--unseen">
                                                                                    <div class="messages__title">
                                                                                        <span
                                                                                            class="messages__author text-capitalize">
                                                                                            李兴华
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="messages__content-body">
                                                                                        <span class="messages__preview">
                                                                                            超级管理员
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>lixinghua</td>
                                                                        <td>********</td>
                                                                        <td>admin</td>
                                                                        <td>2025-10-10 19:09:07</td>
                                                                        <td>
                                                                            <div class="dropdown ">
                                                                                <button
                                                                                    class="btn t-bg-clear t-text-dark--light-40"
                                                                                    type="button" data-toggle="dropdown"
                                                                                    aria-haspopup="true"
                                                                                    aria-expanded="false">
                                                                                    <i class="fa fa-ellipsis-h"
                                                                                        aria-hidden="true"></i>
                                                                                </button>
                                                                                <div
                                                                                    class="dropdown-menu dropdown-menu-right">
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;查看详情</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;用户编辑</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-list-alt" aria-hidden="true"></i>&nbsp;更新记录</a>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div
                                                                                class="messages__msg justify-content-center t-width-max">
                                                                                <div
                                                                                    class="messages__avatar messages__avatar-empty t-bg-alpha">
                                                                                    <img src="/upload/member/nophoto.png" class="img-fluid w-100" />
                                                                                </div>
                                                                                <div
                                                                                    class="messages__content messages__content--unseen">
                                                                                    <div class="messages__title">
                                                                                        <span
                                                                                            class="messages__author text-capitalize">
                                                                                            李兴华
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="messages__content-body">
                                                                                        <span class="messages__preview">
                                                                                            超级管理员
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>lixinghua</td>
                                                                        <td>********</td>
                                                                        <td>admin</td>
                                                                        <td>2025-10-10 19:09:07</td>
                                                                        <td>
                                                                            <div class="dropdown ">
                                                                                <button
                                                                                    class="btn t-bg-clear t-text-dark--light-40"
                                                                                    type="button" data-toggle="dropdown"
                                                                                    aria-haspopup="true"
                                                                                    aria-expanded="false">
                                                                                    <i class="fa fa-ellipsis-h"
                                                                                        aria-hidden="true"></i>
                                                                                </button>
                                                                                <div
                                                                                    class="dropdown-menu dropdown-menu-right">
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;查看详情</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;用户编辑</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-list-alt" aria-hidden="true"></i>&nbsp;更新记录</a>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div
                                                                                class="messages__msg justify-content-center t-width-max">
                                                                                <div
                                                                                    class="messages__avatar messages__avatar-empty t-bg-alpha">
                                                                                    <img src="/upload/member/nophoto.png" class="img-fluid w-100" />
                                                                                </div>
                                                                                <div
                                                                                    class="messages__content messages__content--unseen">
                                                                                    <div class="messages__title">
                                                                                        <span
                                                                                            class="messages__author text-capitalize">
                                                                                            李兴华
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="messages__content-body">
                                                                                        <span class="messages__preview">
                                                                                            超级管理员
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>lixinghua</td>
                                                                        <td>********</td>
                                                                        <td>admin</td>
                                                                        <td>2025-10-10 19:09:07</td>
                                                                        <td>
                                                                            <div class="dropdown ">
                                                                                <button
                                                                                    class="btn t-bg-clear t-text-dark--light-40"
                                                                                    type="button" data-toggle="dropdown"
                                                                                    aria-haspopup="true"
                                                                                    aria-expanded="false">
                                                                                    <i class="fa fa-ellipsis-h"
                                                                                        aria-hidden="true"></i>
                                                                                </button>
                                                                                <div
                                                                                    class="dropdown-menu dropdown-menu-right">
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;查看详情</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;用户编辑</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-list-alt" aria-hidden="true"></i>&nbsp;更新记录</a>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div
                                                                                class="messages__msg justify-content-center t-width-max">
                                                                                <div
                                                                                    class="messages__avatar messages__avatar-empty t-bg-alpha">
                                                                                    <img src="/upload/member/nophoto.png" class="img-fluid w-100" />
                                                                                </div>
                                                                                <div
                                                                                    class="messages__content messages__content--unseen">
                                                                                    <div class="messages__title">
                                                                                        <span
                                                                                            class="messages__author text-capitalize">
                                                                                            李兴华
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="messages__content-body">
                                                                                        <span class="messages__preview">
                                                                                            超级管理员
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>lixinghua</td>
                                                                        <td>********</td>
                                                                        <td>admin</td>
                                                                        <td>2025-10-10 19:09:07</td>
                                                                        <td>
                                                                            <div class="dropdown ">
                                                                                <button
                                                                                    class="btn t-bg-clear t-text-dark--light-40"
                                                                                    type="button" data-toggle="dropdown"
                                                                                    aria-haspopup="true"
                                                                                    aria-expanded="false">
                                                                                    <i class="fa fa-ellipsis-h"
                                                                                        aria-hidden="true"></i>
                                                                                </button>
                                                                                <div
                                                                                    class="dropdown-menu dropdown-menu-right">
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;查看详情</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;用户编辑</a>
                                                                                    <a class="dropdown-item sm-text"
                                                                                        href="#"><i class="fa fa-list-alt" aria-hidden="true"></i>&nbsp;更新记录</a>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <div class="row t-mt-15 align-items-center">
                                                            <div class="col-md-7 t-mb-15 mb-md-0">
                                                                <ul class="t-list d-flex">
                                                                    <li class="t-list__item">
                                                                        <a href="#"
                                                                            class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text">
                                                                            <i class="las la-angle-double-left"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="t-list__item">
                                                                        <a href="#"
                                                                            class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text active">
                                                                            1
                                                                        </a>
                                                                    </li>
                                                                    <li class="t-list__item">
                                                                        <a href="#"
                                                                            class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text">
                                                                            2
                                                                        </a>
                                                                    </li>
                                                                    <li class="t-list__item">
                                                                        <a href="#"
                                                                            class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text">
                                                                            3
                                                                        </a>
                                                                    </li>
                                                                    <li class="t-list__item">
                                                                        <a href="#"
                                                                            class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text">
                                                                            <i class="las la-angle-double-right"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <ul
                                                                    class="t-list d-flex justify-content-md-end align-items-center">
                                                                    <li class="t-list__item nice-select--up">
                                                                        <select class="mx-select">
                                                                            <option data-display="10">10</option>
                                                                            <option value="1">10 - 20</option>
                                                                            <option value="2">20 - 30</option>
                                                                            <option value="3">30 - 40</option>
                                                                            <option value="4">40 - 50</option>
                                                                        </select>
                                                                    </li>
                                                                    <li class="t-list__item">
                                                                        <span
                                                                            class="d-inline-block text-capitalize sm-text">
                                                                            显示 10 -20 页，总共 300 页
                                                                        </span>
                                                                    </li>
                                                                </ul>
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
    <!-- Apexchart  -->
    <script src="/js/apexcharts.js"></script>
    <script src="/js/chart-dash-1.js"></script>
    <jsp:include page="/WEB-INF/pages/plugin/menu/common/menu_script.jsp"/>
</body>

</html>
