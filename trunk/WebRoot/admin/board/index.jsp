<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="title2">话题管理</c:set>
<c:set var="title1">话题板块</c:set>
<head>
	<title>话题板块</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/board.css'/>" type="text/css" />
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li><a href="${ctx}/admin/topic/">${title2}</a> <span
						class="divider">/</span>
					</li>
					<li class="active">${title1}</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/board/add'/>"
								class="btn btn-primary"> 添加</a>
						</div>
						<h3 class="yahei">话题板块列表</h3>
					</div>
						<ul id="myTab" class="nav nav-tabs">
							<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/'/>">信息列表</a></li>
							<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/audit'/>">未审核</a></li>
							<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/mine'/>">我发表的话题</a></li>
							<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/replied'/>">我参与的话题</a></li>
								<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/workmate'/>">周围的话题</a></li>
							<li  class="active"><a data-toggle="tab"
								href="<c:url value='/admin/board'/>">话题板块</a></li>
						</ul>
						<s:action name="board!list" id="boardList" executeResult="false"></s:action>	
				<table class="table table-striped table-bordered table-condensed">
					<thead>
						<tr>
							<th>#</th>
							<th>分类名称</th>
							<th>备注</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="%{#boardList.boards}" status="rowStatus">
							<tr id="market20">
								<td>${id }</td>
								<td><span class="l" style="font-size: 14px;"><a
										href="<c:url value='/admin/board/edit/${id}'/>" class="">${name}</a>
								</span></td>
								<td><span class="l c999">${description}</span>
								</td>
								<td><a href="<c:url value='/admin/board/edit/${id}'/>">修改</a>
									<a href="${ctx }/board!delete.action?id=${id}"
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

