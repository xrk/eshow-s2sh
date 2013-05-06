<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="info!view" id="view" executeResult="false" />
<c:set var="title">信息中心</c:set>
<c:set var="title1">查看信息</c:set>
<head>
	<title>${view.info.title}</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/info.css'/>"
		type="text/css" />
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span></li>
					<li><a href="${ctx}/admin/info/">${title}</a> <span class="divider">/</span></li>
					<li class="active">${title1}</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<ul id="myTab" class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="<c:url value='/admin/info'/>">信息列表</a></li>
							<li><a data-toggle="tab" href="<c:url value='/admin/info/edit'/>">修改信息</a></li>
							<li><a data-toggle="tab" href="<c:url value='/admin/info/add'/>">添加信息</a></li>
						</ul>
					</div>
					<div id="accContent">
						<div class="title" style="margin-top: 10px;">
							${view.info.title}
							<div class="navtxt">
								<a href="<c:url value='/admin/info/edit/${view.info.id}'/>">修改</a> | <a href="javascript:window.history.back()">返回上一级</a>
							</div>
						</div>
						<div class="contxt">
							${view.info.content}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

