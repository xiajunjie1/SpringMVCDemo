<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%!
    public static final String USER_ADD_URL = "/pages/back/admin/item/add";
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
                                                                增加用户信息
                                                            </h6>
                                                        </div>
                                                        <div class="cards__body t-pt-30 px-3 px-md-4 t-pb-30">
                                                            <form class="row g-3 needs-validation" novalidate method="post" action="<%=USER_ADD_URL%>" enctype="multipart/form-data">
                                                                <div class="form-group row position-relative">
                                                                    <label for="mid" class="col-md-2 form-label sm-text text-right">登录ID</label>
                                                                    <div class="col-md-10">
                                                                        <input type="text" class="form-control sm-text" id="mid" name="mid" value="muyan-yootk"  placeholder="李兴华高薪就业编程训练营" required>
                                                                        <div class="invalid-tooltip">用户登录ID不允许为空</div>
                                                                        <div class="valid-tooltip">用户登录ID输入正确</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="name" class="col-md-2 form-label sm-text text-right">真实姓名</label>
                                                                    <div class="col-md-10">
                                                                        <input type="text" class="form-control sm-text" id="name" name="name" value="李兴华" placeholder="edu.yootk.com" required>
                                                                        <div class="invalid-tooltip">用户姓名不允许为空</div>
                                                                        <div class="valid-tooltip">用户姓名输入正确</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="duty" class="col-md-2 form-label sm-text text-right">用户职责</label>
                                                                    <div class="col-md-10">
                                                                        <input type="text" class="form-control sm-text" id="duty" name="duty" value="系统架构师 & 编程讲师" placeholder="edu.yootk.com" required>
                                                                        <div class="invalid-tooltip">用户职责不允许为空</div>
                                                                        <div class="valid-tooltip">用户职责输入正确</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="name" class="col-md-2 form-label sm-text text-right">登录密码</label>
                                                                    <div class="col-md-10">
                                                                        <input type="password" class="form-control sm-text" id="password" name="password" value="hello" placeholder="李兴华" required>
                                                                        <div class="invalid-tooltip">登录密码不允许为空</div>
                                                                        <div class="valid-tooltip">登录密码输入正确</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="iid" class="col-md-2 form-label sm-text text-right">用户角色</label>
                                                                    <div class="col-md-10">
                                                                        <input class="form-check-input" type="checkbox" value="1" id="rid" name="rid" required>&nbsp;用户管理&nbsp;
                                                                        <input class="form-check-input" type="checkbox" value="2" id="rid" name="rid" required>&nbsp;新闻管理&nbsp;
                                                                        <input class="form-check-input" type="checkbox" value="3" id="rid" name="rid" required>&nbsp;数据管理&nbsp;
                                                                        <div class="invalid-tooltip">请选择用户拥有的角色</div>
                                                                        <div class="valid-tooltip">已选择正确的用户角色</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="loc" class="col-md-2 form-label sm-text text-right">用户位置</label>
                                                                    <div class="col-md-10">
                                                                        <input type="text" class="form-control sm-text" id="loc" name="loc" value="河南 洛阳 技术开发部"  placeholder="李兴华高薪就业编程训练营" required>
                                                                        <div class="invalid-tooltip">用户位置不允许为空</div>
                                                                        <div class="valid-tooltip">用户位置输入正确</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="price" class="col-md-2 form-label sm-text text-right">用户照片</label>
                                                                    <div class="col-md-10">
                                                                        <input type="file" class="form-control sm-text" id="photo" name="photo" accept="image/*" required>
                                                                        <div class="invalid-tooltip">xxxx</div>
                                                                        <div class="valid-tooltip">xxx</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="form-group row position-relative">
                                                                    <label for="note" class="col-md-2 form-label sm-text text-right">用户简介</label>
                                                                    <div class="col-md-10">
                                                                        <textarea id="note" name="note" required></textarea>
                                                                        <div class="invalid-tooltip">请认真填写用户简介</div>
                                                                        <div class="valid-tooltip">用户简介填写完成</div>
                                                                    </div>
                                                                </div>
                                                                <div>&nbsp;</div>
                                                                <div class="col-12">
                                                                    <button type="submit"
                                                                        class="btn btn-primary sm-text text-uppercase btn-min-width">增加用户信息</button>
                                                                    <button type="reset"
                                                                        class="btn btn-warning sm-text text-uppercase btn-min-width">重置表单数据</button>
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
    <script src="/js/pages/back/admin/member/member_add.js"></script>
</body>

</html>
