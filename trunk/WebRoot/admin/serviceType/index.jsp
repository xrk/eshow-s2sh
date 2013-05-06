<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="title">服务类型中心</c:set>
<c:set var="title1">查看服务</c:set>
<s:action name="service!view" id="view" executeResult="false" />
<head>
	<title>服务类型</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/service.css'/>" type="text/css" />
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
				<s:include value="../title.jsp"></s:include>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/serviceType/add'/>" class="btn btn-primary">添加</a>
						</div>
						<h3 class="yahei">服务类型</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li><a href="<c:url value='/admin/service'/>" data-toggle="tab">服务列表</a>
						</li>
						<li class="active"><a data-toggle="tab" href="<c:url value='/admin/serviceType'/>">服务类型</a>
						</li>
						<li><a data-toggle="tab" href="<c:url value='/admin/service/add'/>">添加服务</a>
						</li>
					</ul>
					<div id="celebrityList">
						<div id="serviceList">
							<s:action name="serviceType!search" id="serviceTypeList"
								executeResult="false"></s:action>
							<ul>
								<li style="color: #666; line-height: 14px; background: #f1f1f1;"
									id="serviceType${id}">
									<span class="l">类型名称</span><span class="l">备注</span>
								</li>
								<s:iterator value="%{#serviceTypeList.serviceTypes}"
									status="rowStatus">
									<li onmouseover="this.style.backgroundColor='#f9f9f9';"
										onmouseout="this.style.backgroundColor='#ffffff';"
										id="serviceType${id}">
										<span class="l" style="font-size: 14px;">${name}</span><span
											class="l c999">${remark}</span><span
											class="r setting"><a
											href="<c:url value='/admin/serviceType/edit/${id}'/>">修改</a>
										</span>

										<span class="r del"> <a href="javascript:void(0);"
											onclick="return deleteData('serviceType',${id});">删除</a> </span>

									</li>

								</s:iterator>
							</ul>
						</div>
						<div class="c"></div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>

