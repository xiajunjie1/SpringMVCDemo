<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%-- 
	实现数据的分页显示条的控制
	<jsp:include page="split_page_plugin_bar.jsp"/>
--%>
<%
	int currentPage = 1 ;
	int lineSize = 2 ;
	String url = basePath + (String)request.getAttribute("url") ;
	int pageSize = 0 ;	// 保存总页数，通过计算得来
	int seed = 3 ;	// 种子数
	int allRecorders = 0 ;	// 保存总记录数
	String column = (String)request.getAttribute("column") ;
	String keyWord = (String)request.getAttribute("keyword") ;
	if (keyWord == null) {
		keyWord = "" ;
	}
	String paramName = (String)request.getAttribute("paramName") ;
	String paramValue = (String)request.getAttribute("paramValue") ;
	String paramNameB = (String)request.getAttribute("paramNameB") ;
	String paramValueB = (String)request.getAttribute("paramValueB") ;
%>
<%
	try {
		currentPage = (Integer) request.getAttribute("currentPage") ;
	} catch (Exception e) {}
	try {
		lineSize = (Integer) request.getAttribute("lineSize") ;
	} catch (Exception e) {}
	try {
		allRecorders = (Integer) request.getAttribute("allRecorders") ;
	} catch (Exception e) {}
	try {
        pageSize = (Integer) request.getAttribute("allPages") ;
    } catch (Exception e) {}
%>
<div id="pagebarDiv" style="float:left">
    <ul class="t-list d-flex">
        <%
            if (currentPage == 1) {	// 已经在首页了
        %>
                <li class="t-list__item">
                    <span class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text active">上一页</span>
                </li>
                <li class="t-list__item">
                    <span class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text active">1</span>
                </li>
        <%
            } else {
        %>
                <li class="t-list__item"><a class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text" href="<%=url%>?cp=<%=currentPage - 1%>&col=<%=column%>&kw=<%=keyWord%>&<%=paramName%>=<%=paramValue%>&<%=paramNameB%>=<%=paramValueB%>">上一页</a></li>
                <li class="t-list__item"><a class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text" href="<%=url%>?cp=1&col=<%=column%>&kw=<%=keyWord%>&<%=paramName%>=<%=paramValue%>&<%=paramNameB%>=<%=paramValueB%>">1</a></li>
        <%
            }
        %>

        <%
            if (pageSize <= seed * 2) {
                for (int x = 2 ; x < pageSize; x ++) {
        %>
                    <li class="t-list__item"><a class="<%=currentPage == x? "active":""%> t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text" href="<%=url%>?cp=<%=x%>&col=<%=column%>&kw=<%=keyWord%>&<%=paramName%>=<%=paramValue%>&<%=paramNameB%>=<%=paramValueB%>"><%=x%></a></li>
        <%
                }
            } else {	// 考虑到省略号的问题，6页以后
                if (currentPage > seed * 2) {
        %>
                    <li class="t-list__item"><span class="disabled">...</span></li>
        <%
                    int startPage = currentPage - seed ;
                    int endPage = currentPage + seed ;
                    for (int x = startPage ; x <= endPage ; x ++) {
                        if (x < pageSize) {
        %>
                            <li class="t-list__item"><a class="<%=currentPage == x? "active":""%> t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text" href="<%=url%>?cp=<%=x%>&col=<%=column%>&kw=<%=keyWord%>&<%=paramName%>=<%=paramValue%>&<%=paramNameB%>=<%=paramValueB%>"><%=x%></a></li>
        <%				}
                    }
                    if ((currentPage + seed * 2)-1 <= pageSize) {	// 后面还有内容
        %>
                    <li class="t-list__item"><span class="disabled">...</span></li>
        <%
                    }
                } else {	// 6页以前
                    for (int x = 2 ; x <= currentPage + seed ; x ++) {
        %>
                        <li class="t-list__item"><a class="<%=currentPage == x? "active":""%> t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text" href="<%=url%>?cp=<%=x%>&col=<%=column%>&kw=<%=keyWord%>&<%=paramName%>=<%=paramValue%>&<%=paramNameB%>=<%=paramValueB%>"><%=x%></a></li>
        <%
                    }
                    if ((currentPage + seed * 2) <= pageSize) {
        %>
                        <li class="t-list__item"><span class="disabled t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text">...</span></li>
        <%
                    }
                }
            }
        %>

        <%
            if (currentPage == pageSize) {	// 已经在最后一页
        %>
        <%
                if (pageSize != 1) {
        %>
                    <li class="t-list__item"><span class="active t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text"><%=pageSize%></span></li>
        <%
                }
        %>
                <li class="t-list__item"><span class="disabled t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text">下一页</span></li>
        <%
            } else {
        %>
                <li class="t-list__item"><a class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text" href="<%=url%>?cp=<%=pageSize%>&col=<%=column%>&kw=<%=keyWord%>&<%=paramName%>=<%=paramValue%>&<%=paramNameB%>=<%=paramValueB%>"><%=pageSize%></a></li>
                <li class="t-list__item"><a class="t-link t-pt-5 t-pb-5 t-pl-10 t-pr-10 paginav__link paginav__link--light border text-capitalize sm-text" href="<%=url%>?cp=<%=currentPage + 1%>&col=<%=column%>&kw=<%=keyWord%>&<%=paramName%>=<%=paramValue%>&<%=paramNameB%>=<%=paramValueB%>">下一页</a></li>
        <%
            }
        %>
        </li>
    </ul>
</div>
<div class="col-md-5" style="float:right">
    <ul class="t-list d-flex justify-content-md-end align-items-center">
        <li class="t-list__item">
            <span class="d-inline-block text-capitalize sm-text">
               满足条件的数据量：${allRecorders}，总页数：${allPages}
            </span>
        </li>
    </ul>
</div>
<script type="text/javascript">
	function goButFun() {
		window.location = "<%=url%>?cp=" + document.getElementById("goPage").value + "&col=<%=column%>&kw=<%=keyWord%>&<%=paramName%>=<%=paramValue%>&<%=paramNameB%>=<%=paramValueB%>" ;
	}
</script>