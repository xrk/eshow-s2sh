<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="myid">
	<authz:authentication operation='id' />
</c:set>

<c:set var="title">相册</c:set>
<head>
	<title>相册</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/album.css'/>"
		type="text/css" />
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li class="active">${title}</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/album/add'/>" class="btn btn-primary">发布</a>
						</div>
						<h3 class="yahei">相册管理</h3>
						<ul id="myTab" class="nav nav-tabs">
							<li  class="active"><a data-toggle="tab" href="<c:url value='/admin/album'/>">相册列表</a></li>
							<li><a data-toggle="tab" href="<c:url value='/admin/album/view'/>">查看相册</a></li>
							<li><a data-toggle="tab" href="<c:url value='/admin/album/edit'/>">修改相册</a></li>
							<li><a data-toggle="tab" href="<c:url value='/admin/album/add'/>">创建相册</a></li>
						</ul>
					</div>
					<div id="celebrity">
						<div class="subnav">
							<strong>相册列表</strong>&nbsp;&nbsp;|&nbsp;&nbsp;
							<a href="<c:url value='/admin/album/add.html'/>">创建相册</a>
						</div>
						<s:action name="album!search" id="albumList" executeResult="false">
							<s:param name="queryBean.order">addTime</s:param>
							<s:param name="queryBean.desc">true</s:param>
							<s:param name="pagesize">12</s:param>
						</s:action>
						<ul>
							<s:iterator value="%{#albumList.albums}" status="rowStatus">
								<li id="album${id}" style="background-color: #f9f9f9"
									onmouseover="this.style.backgroundColor='#f9e0e0';"
									onmouseout="this.style.backgroundColor='#f9f9f9';">
									<div align="center">
										<a href="<c:url value='/admin/album/view/${id}'/>"><img
												width="120"
												src="${pageContext.request.contextPath}/upload/photo/${photo}"
												alt="${name}" /> </a>
									</div>
									<div class="cont" style="color: #999" align="center">
										${name}
										<br />
										创建于：
										<s:date name='%{addTime}' format='yyyy-MM-dd' />
										<br />
										<a>(${photoSize}张)</a>
										<c:if test="${user.id==myid}">
											&nbsp;|&nbsp;<a
												href="<c:url value='/admin/album/edit/${id}'/>">修改</a>&nbsp;|&nbsp;
										<a href="javascript:void(0);"
												onclick="return deleteData('album',${id});">删除</a>
										</c:if>
									</div>
									<div class="c"></div>
								</li>
							</s:iterator>
						</ul>
						<div class="c"></div>
						<%@ include file="/common/page.jsp"%>
						<div class="c"></div>
					</div>
					</div>
				</div>

			</div>
		</div>
</body>

