<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="myid">
	<authz:authentication operation='id' />
</c:set>
<c:set var="title">信息中心</c:set>
<c:set var="title1">信息列表</c:set>
<head>
	<title>信息</title>
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
						<div class="pull-right">
							<a href="<c:url value='/admin/info/add'/>" class="btn btn-primary">添加</a>
						</div>
						<ul id="myTab" class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="<c:url value='/admin/info'/>">信息列表</a></li>
							<li><a data-toggle="tab" href="<c:url value='/admin/info/edit'/>">修改日志</a></li>
							<li><a data-toggle="tab" href="<c:url value='/admin/info/add'/>">添加日志</a></li>
						</ul>
					</div>
					<div id="celebrityList">
						<s:action name="info!search" id="infoList" executeResult="false"></s:action>
								<table
									class="table table-striped table-bordered table-condensed">
									<thead>
										<tr>
											<th>标题</th>
											<th>URL</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="%{#infoList.infos}" status="rowStatus">
										<tr id="market20">
											<td><span class="l" style="font-size: 14px;"><a
													href="<c:url value='/admin/info/view/${id}'/>" class="">${title}</a>
											</span>
											</td>
											<td><span class="l c999">${url}</span></td>
											<td><a href="<c:url value='/admin/info/edit/${id}'/>">修改</a> <a
												href="javascript:void(0);"
												onclick="deleteData('确定要删除该信息吗？','market',20);">删除</a></td>
										</tr>	</s:iterator>
										
									</tbody>
								</table>
								<%@ include file="/common/page.jsp"%>		
						</div>
						<div class="c"></div>
					</div>

				</div>
			</div>
		</div>
</body>

