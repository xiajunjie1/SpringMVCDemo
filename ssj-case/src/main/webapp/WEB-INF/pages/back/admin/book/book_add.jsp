<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<%!
    public static final String BOOK_ADD_URL = "/pages/back/admin/book/add";
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
                                                <div class="col-lg-12">
                                                    <div class="cards t-bg-white t-shadow h-100">
                                                        <div
                                                            class="cards__header t-pt-30 t-pb-30 px-3 px-md-4 border-bottom">
                                                            <h6 class="mt-0 mb-0 text-capitalize">
                                                                增加图书信息
                                                            </h6>
                                                        </div>
                                                        <div class="cards__body t-pt-30 px-3 px-md-4 t-pb-30">
                                                            <form class="row g-3 needs-validation" novalidate method="post" action="<%=BOOK_ADD_URL%>" enctype="multipart/form-data">
                                                                <div class="form-group row position-relative">
                                                                    <label for="name" class="col-md-2 form-label sm-text text-right">图书名称</label>
                                                                    <div class="col-md-10">
                                                                        <input type="text" class="form-control sm-text" id="name" name="name" value="Java架构师编程实战" placeholder="李兴华高薪就业编程训练营" required>
                                                                        <div class="invalid-tooltip">图书名称不允许为空</div>
                                                                        <div class="valid-tooltip">图书名称输入正确</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="name" class="col-md-2 form-label sm-text text-right">图书作者</label>
                                                                    <div class="col-md-10">
                                                                        <input type="text" class="form-control sm-text" id="author" name="author" value="李兴华" placeholder="李兴华高薪就业编程训练营" required>
                                                                        <div class="invalid-tooltip">图书作者不允许为空</div>
                                                                        <div class="valid-tooltip">图书作者输入正确</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="tprice" class="col-md-2 form-label sm-text text-right">图书价格</label>
                                                                    <div class="col-md-10">
                                                                        <input type="number" class="form-control sm-text" id="tprice" name="tprice" value="69.8" required>
                                                                        <div class="invalid-tooltip">图书价格不允许为空</div>
                                                                        <div class="valid-tooltip">图书价格输入正确</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="iid" class="col-md-2 form-label sm-text text-right">图书分类</label>
                                                                    <div class="col-md-10">
                                                                        <select class="form-select sm-text" id="iid" name="iid" required>
                                                                            <option selected disabled value="">======== 请选择图书所属分类 ========</option>
                                                                            <c:forEach items="${allItems}" var="item">
                                                                                <option value="${item.iid}">${item.name}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                        <div class="invalid-tooltip">请选择图书对应的分类</div>
                                                                        <div class="valid-tooltip">已选择正确的图书分类</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="price" class="col-md-2 form-label sm-text text-right">图书封面</label>
                                                                    <div class="col-md-10">
                                                                        <input type="file" class="form-control sm-text" id="photo" name="photo" accept="image/*" required>
                                                                        <div class="invalid-tooltip">xxxx</div>
                                                                        <div class="valid-tooltip">xxx</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="price" class="col-md-2 form-label sm-text text-right">图书简介</label>
                                                                    <div class="col-md-10">
                                                                        <textarea id="note" name="note" required></textarea>
                                                                        <div class="invalid-tooltip">请认真填写图书简介</div>
                                                                        <div class="valid-tooltip">图书简介填写完成</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="col-12">
                                                                    <button type="submit"
                                                                        class="btn btn-primary sm-text text-uppercase btn-min-width">增加新图书</button>
                                                                </div>
                                                            </form>
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
    <script src="/js/pages/back/admin/book/book_add.js"></script>
</body>

</html>