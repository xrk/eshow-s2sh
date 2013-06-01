<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="../common/website.jsp"%>
<head>
<title>服务类型</title>
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li><a href="${ctx}/admin/serviceType/">服务类型中心</a> <span
						class="divider">/</span>
					</li>
					<li class="active">服务类型列表</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="${ctx}/admin/serviceType/add" class="btn btn-primary">
								添加</a>
						</div>
						<h3 class="yahei">服务类型列表</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li><a href="${ctx}/admin/service" data-toggle="tab">服务列表</a>
						</li>
						<li class="active"><a data-toggle="tab"
							href="${ctx}/admin/serviceType">服务类型</a></li>
					</ul>
					<s:action name="service-type!list" id="serviceTypeList" executeResult="false">
						<s:param name="query.website">${website}</s:param>
					</s:action>
					<table class="table table-striped table-bordered table-condensed">
						<thead>
							<tr>
								<th>类型名称</th>
								<th>备注</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="%{#serviceTypeList.serviceTypes}"
								status="rowStatus">
								<tr id="market20">
									<td><a href="${ctx}/admin/service/?query.serviceTypeId=${id}">${name}</a>
									</td>
									<td>${remark}</td>
									<td><a href="${ctx}/admin/serviceType/edit/${id}">修改</a> <a
										href="${ctx}/service-type!delete.action?id=${id}"
										onclick="deleteData('确定要删除该服务类型吗？','serviceType',${id});">删除</a>
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

