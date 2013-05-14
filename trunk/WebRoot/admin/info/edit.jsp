<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="info!view" id="view" executeResult="false" />
<head>
<title>修改信息${view.info.title}</title>
<link rel="stylesheet" href="<c:url value='/admin/styles/info.css'/>"
	type="text/css" />
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
					<li><a href="${ctx}/admin/info/">信息中心</a> <span
						class="divider">/</span></li>
					<li class="active">修改信息</li>
				</ul>
				<div class="well com">
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a data-toggle="tab"
							href="${ctx}/admin/info">信息列表</a>
						</li>
					</ul>
					<s:form id="infoForm" cssClass="form-horizontal" action="info!update" method="post" namespace="">
						<s:hidden name="id" value="%{#view.info.id}"></s:hidden>
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
					</s:form>
				</div>
			</div>
		</div>
	</div>
</body>

