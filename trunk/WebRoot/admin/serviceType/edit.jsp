<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="title">服务类型中心</c:set>
<c:set var="title1">服务类型修改</c:set>
<s:action name="serviceType!view" id="view" executeResult="false"></s:action>
<head>
	<title>修改服务类型</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/service.css'/>" type="text/css" />
	<%@ include file="/common/formcheck.jsp"%>
	<script type="text/javascript">
	 	window.addEvent('domready', function() {
			new FormCheck('serviceTypeForm');
		});
    </script>
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
						<h3 class="yahei">服务类型修改</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li><a href="<c:url value='/admin/service'/>" data-toggle="tab">服务列表</a>
						</li>
						<li class="active"><a data-toggle="tab" href="<c:url value='/admin/serviceType'/>">服务类型</a>
						</li>
					</ul>
					<form id="serviceTypeForm" class="form-horizontal" action="serviceType!update.html" method="post"
						id="infoForm">
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="input01">类型名称</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="serviceType.name" value="${view.serviceType.name }">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="textarea">备注</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" rows="3"
										style="width: 600px; height: 100px;" name="serviceType.remark">${view.serviceType.remark}</textarea>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">修改</button>
								<button class="btn" onclick="javascript:history.back();">取消</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

