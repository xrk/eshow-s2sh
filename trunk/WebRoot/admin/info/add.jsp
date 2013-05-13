<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<head>
<title>添加信息</title>
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
					<li><a href="${ctx}/admin/info/">信息中心</a> <span
						class="divider">/</span>
					</li>
					<li class="active">添加信息</li>
				</ul>
				<div class="well com">
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="<c:url value='/admin/info'/>">信息列表</a>
						</li>
					</ul>
					<form class="form-horizontal" action="info!save" method="post" id="infoForm">
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="input01">信息URL</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="info.url">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">信息标题 </label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="info.title">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="textarea">信息内容</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" rows="3"
										style="width: 600px; height: 300px;" name="info.content"></textarea>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">保存</button>
								<button class="btn" onclick="javascript:history.back();">取消</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
