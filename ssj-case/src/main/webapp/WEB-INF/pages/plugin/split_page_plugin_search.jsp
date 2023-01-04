<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%--
	实现数据搜索条的控制
<jsp:include page="split_page_plugin_search.jsp"/>
--%>
<%
	request.setCharacterEncoding("UTF-8") ;
	String url = basePath + (String)request.getAttribute("url") ;
	String columnData = (String)request.getAttribute("columnData") ;
	String keyWord = (String)request.getAttribute("keyWord") ;
	String column = (String)request.getAttribute("column") ;
%>
<div class="row">
	<form class="row g-3 needs-validation" novalidate method="post" action="<%=url%>" id="splitSearchForm">
	    <div class="form-group row position-relative">
			<div class="form-group row position-relative">
				<div>&nbsp;</div>
				<%
					if (columnData != null) {
				%>
					<div class="col-md-2">
						<select id="col" name="col" class="form-select sm-text">
				<%
							String result [] = columnData.split("\\|") ;
							for (int x = 0 ; x < result.length ; x ++) {
								String temp[] = result[x].split(":") ;
				%>
								<option value="<%=temp[1]%>" <%=temp[1].equals(column)?"selected":""%>><%=temp[0]%></option>
				<%
							}
				%>
						</select>
					</div>
				<%
					}
				%>
				<div class="col-md-9">
					<input type="text" name="kw" id="kw" class="form-control sm-text"
						value="${keyword}" placeholder="请输入检索关键字">
				</div>
				<div class="col-md-1">
					<button type="submit" class="btn btn-primary sm-text text-uppercase btn-min-width">检索</button>
					<input type="hidden" name="${paramName}" value="${paramValue}">
					<input type="hidden" name="cp" value="1">
				</div>
			</div>
		</div>
	</form>
</div>