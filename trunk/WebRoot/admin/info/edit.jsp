<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="info!view" id="view" executeResult="false" />
<c:set var="title">信息中心</c:set>
<c:set var="title1">修改信息</c:set>
<head>
	<title>修改信息${view.info.title}</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/info.css'/>"
		type="text/css" />
	<script type="text/javascript" charset="utf-8"
		src="<c:url value="/components/kindeditor/kindeditor.js"/>"></script>
	<%@ include file="/common/validate.jsp"%>
	<script type="text/javascript">
		window.addEvent('domready', function() {
			new FormCheck('infoForm');
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
					<li><a href="${ctx}/admin/info/">${title}</a> <span
						class="divider">/</span></li>
					<li class="active">${title1}</li>
				</ul>
				<div class="well com">
					<ul id="myTab" class="nav nav-tabs">
						<li><a data-toggle="tab" href="<c:url value='/admin/info'/>">信息列表</a>
						</li>
						<li class="active"><a data-toggle="tab"
							href="<c:url value='/admin/info/edit'/>">修改日志</a>
						</li>
						<li><a data-toggle="tab"
							href="<c:url value='/admin/info/add'/>">添加日志</a>
						</li>
					</ul>
					
					<form class="form-horizontal" action="info!update" method="post"
						id="infoForm">
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="input01">信息URL</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="info.url" value="${view.info.url}">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">信息标题 </label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="info.title" value="${view.info.title}">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="textarea">信息内容</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" rows="3"
										style="width: 600px; height: 300px;" name="info.content">${view.info.content}</textarea>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">发表</button>
								<button class="btn" onclick="javascript:history.back();">取消</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

