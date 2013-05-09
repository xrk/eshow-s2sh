<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="title">服务类型中心</c:set>
<c:set var="title1">服务类型列表</c:set>
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
					<li><a href="${ctx}/admin/serviceType/">${title}</a> <span
						class="divider">/</span></li>
					<li class="active">${title1}</li>
				</ul>
				
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/serviceType/add'/>"
								class="btn btn-primary"> 添加</a>
						</div>
						<h3 class="yahei">服务类型列表</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li><a href="<c:url value='/admin/service'/>" data-toggle="tab">服务列表</a>
						</li>
						<li class="active"><a data-toggle="tab" href="<c:url value='/admin/serviceType'/>">服务类型</a>
						</li>
					</ul>
					<s:action name="service-type!list" id="serviceTypeList" executeResult="false"></s:action>
					<table class="table table-striped table-bordered table-condensed">
						<thead>
							<tr>
								<th>类型名称</th>
								<th>备注</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="%{#serviceTypeList.serviceTypes}" status="rowStatus">
								<tr id="market20">
									<td><span class="l" style="font-size: 14px;"><a class="">${name}</a>
									</span></td>
									<td><span class="l c999">${remark}</span></td>
									<td><a href="<c:url value='/admin/serviceType/edit/${id}'/>">修改</a>
										<a href="${ctx }/service-type!delete.action?id=${id}"
										onclick="deleteData('确定要删除该信息吗？','market',20);">删除</a>
									</td>
								</tr>
							</s:iterator>

						</tbody>
					</table>
					<%@ include file="/common/page.jsp"%>
				</div>
			</div>
		</div>
	</div>
</body>

