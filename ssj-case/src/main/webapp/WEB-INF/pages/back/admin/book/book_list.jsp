<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<%!
    public static final String BOOK_ADD_URL = "/pages/back/admin/book/add_input";
    public static final String BOOK_EDIT_URL = "/pages/back/admin/book/edit_input";
    public static final String BOOK_DELETE_URL = "/pages/back/admin/book/delete";
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
                                                <!-- ?????????????????????????????? -->
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
                                                <div class="col-12">
                                                    <div class="t-shadow t-bg-white t-pl-30 t-pr-30">
                                                        <div class="row justify-content-center justify-conten-sm-between t-pt-30">
                                                            <div class="col-sm-6">
                                                                <h3 class="mt-0 mb-sm-0 text-capitalize text-center text-sm-start">
                                                                    ????????????
                                                                </h3>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <ul class="t-list d-flex justify-content-center justify-content-sm-end">
                                                                    <li class="t-list__item">
                                                                        <a href="<%=BOOK_ADD_URL%>" class="btn btn-transparent btn-primary sm-text text-uppercase">????????????</a>
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
                                                                                <th scope="col" class="text-center">????????????</th>
                                                                                <th scope="col" class="text-center">????????????</th>
                                                                                <th scope="col" class="text-center">??????</th>
                                                                                <th scope="col" class="text-center">??????</th>
                                                                                <th scope="col" class="text-center">????????????</th>
                                                                                <th scope="col" class="text-center">??????</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <c:forEach items="${allData}" var="book">
                                                                                <tr>
                                                                                    <th scope="row" class="text-center">${book.bid}</th>
                                                                                    <td class="text-center">
                                                                                        ${book.name}
                                                                                    </td>
                                                                                    <td class="text-center">
                                                                                        <a href="https://www.yootk.com" target="_ablank">???????????????www.yootk.com???</a>
                                                                                    </td>
                                                                                    <td class="text-center">${book.price / 100}</td>
                                                                                    <td class="text-center">${book.author}</td>
                                                                                    <td class="text-center">
                                                                                        <button type="button" class="btn btn-transparent btn-success sm-text">${allItems[book.iid]}</button>
                                                                                    </td>
                                                                                    <td>
                                                                                        <ul class="t-list d-flex justify-content-center">
                                                                                            <li class="t-list__item">
                                                                                                <a href="#" class="t-link t-link--alpha">
                                                                                                    <span class="d-flex align-items-center" id="bid-${book.bid}">
                                                                                                        <span class="xlg-text t-mr-5">
                                                                                                            <i class="las la-eye"></i>
                                                                                                        </span>
                                                                                                        <span class="text-capitalize">????????????</span>
                                                                                                    </span>
                                                                                                </a>
                                                                                            </li>
                                                                                            <li class="t-list__item">
                                                                                                <a href="#" class="t-link t-link--alpha">
                                                                                                    <span class="d-flex align-items-center">
                                                                                                        <span class="xlg-text t-mr-5">
                                                                                                            <i class="las la-cog"></i>
                                                                                                        </span>
                                                                                                        <a href="<%=BOOK_EDIT_URL%>?bid=${book.bid}" class="text-capitalize">????????????</a>
                                                                                                    </span>
                                                                                                </a>
                                                                                            </li>
                                                                                            <li class="t-list__item">
                                                                                                <a href="<%=BOOK_DELETE_URL%>?bid=${book.bid}" class="t-link t-link--alpha">
                                                                                                    <span class="d-flex align-items-center">
                                                                                                        <span class="xlg-text t-mr-5">
                                                                                                            <i class="las la-trash"></i>
                                                                                                        </span>
                                                                                                        <span class="text-capitalize" onclick="return deleteConfirm()">
                                                                                                            ????????????
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
    <jsp:include page="/WEB-INF/pages/plugin/modal/back/book_modal.jsp"/>
    <script src="/js/pages/back/admin/book/book_list.js"></script>
</body>

</html>
