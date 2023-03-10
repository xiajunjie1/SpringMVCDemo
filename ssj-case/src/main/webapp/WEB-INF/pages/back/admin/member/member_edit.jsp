<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%!
    public static final String USER_EDIT_URL = "/pages/back/admin/item/edit";
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
                                                <div class="col-lg-12">
                                                    <div class="cards t-bg-white t-shadow h-100">
                                                        <div
                                                            class="cards__header t-pt-30 t-pb-30 px-3 px-md-4 border-bottom">
                                                            <h6 class="mt-0 mb-0 text-capitalize">
                                                                ??????????????????
                                                            </h6>
                                                        </div>
                                                        <div class="cards__body t-pt-30 px-3 px-md-4 t-pb-30">
                                                            <form class="row g-3 needs-validation" novalidate method="post" action="<%=USER_EDIT_URL%>" enctype="multipart/form-data">
                                                                <div class="form-group row position-relative">
                                                                    <label for="mid" class="col-md-2 form-label sm-text text-right">??????ID</label>
                                                                    <div class="col-md-10">
                                                                        <input type="text" class="form-control sm-text" id="mid" name="mid" value="muyan-yootk"  placeholder="????????????????????????????????????" required>
                                                                        <div class="invalid-tooltip">????????????ID???????????????</div>
                                                                        <div class="valid-tooltip">????????????ID????????????</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="name" class="col-md-2 form-label sm-text text-right">????????????</label>
                                                                    <div class="col-md-10">
                                                                        <input type="text" class="form-control sm-text" id="name" name="name" value="?????????" placeholder="edu.yootk.com" required>
                                                                        <div class="invalid-tooltip">???????????????????????????</div>
                                                                        <div class="valid-tooltip">????????????????????????</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="duty" class="col-md-2 form-label sm-text text-right">????????????</label>
                                                                    <div class="col-md-10">
                                                                        <input type="text" class="form-control sm-text" id="duty" name="duty" value="??????????????? & ????????????" placeholder="edu.yootk.com" required>
                                                                        <div class="invalid-tooltip">???????????????????????????</div>
                                                                        <div class="valid-tooltip">????????????????????????</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="name" class="col-md-2 form-label sm-text text-right">????????????</label>
                                                                    <div class="col-md-10">
                                                                        <input type="password" class="form-control sm-text" id="password" name="password" value="hello" placeholder="?????????" required>
                                                                        <div class="invalid-tooltip">???????????????????????????</div>
                                                                        <div class="valid-tooltip">????????????????????????</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="iid" class="col-md-2 form-label sm-text text-right">????????????</label>
                                                                    <div class="col-md-10">
                                                                        <input class="form-check-input" type="checkbox" value="1" id="rid" name="rid" required>&nbsp;????????????&nbsp;
                                                                        <input class="form-check-input" type="checkbox" value="2" id="rid" name="rid" required>&nbsp;????????????&nbsp;
                                                                        <input class="form-check-input" type="checkbox" value="3" id="rid" name="rid" required>&nbsp;????????????&nbsp;
                                                                        <div class="invalid-tooltip">??????????????????????????????</div>
                                                                        <div class="valid-tooltip">??????????????????????????????</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="loc" class="col-md-2 form-label sm-text text-right">????????????</label>
                                                                    <div class="col-md-10">
                                                                        <input type="text" class="form-control sm-text" id="loc" name="loc" value="?????? ?????? ???????????????"  placeholder="????????????????????????????????????" required>
                                                                        <div class="invalid-tooltip">???????????????????????????</div>
                                                                        <div class="valid-tooltip">????????????????????????</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="price" class="col-md-2 form-label sm-text text-right">????????????</label>
                                                                    <div class="col-md-10">
                                                                        <input type="file" class="form-control sm-text" id="photo" name="photo" accept="image/*" required>
                                                                        <div class="invalid-tooltip">xxxx</div>
                                                                        <div class="valid-tooltip">xxx</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="note" class="col-md-2 form-label sm-text text-right">????????????</label>
                                                                    <div class="col-md-10">
                                                                        <textarea id="note" name="note" required></textarea>
                                                                        <div class="invalid-tooltip">???????????????????????????</div>
                                                                        <div class="valid-tooltip">????????????????????????</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="col-12">
                                                                    <button type="submit"
                                                                        class="btn btn-primary sm-text text-uppercase btn-min-width">??????????????????</button>
                                                                    <button type="reset"
                                                                        class="btn btn-warning sm-text text-uppercase btn-min-width">??????????????????</button>
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
    <script src="/js/pages/back/admin/member/member_edit.js"></script>
</body>

</html>
