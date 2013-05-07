<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="title">网络参数</c:set>
<c:set var="title">系统管理</c:set>
<head>
	<title>网站参数</title>
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
				<div class="well com">
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="<c:url value='/admin/system'/>"> 网络参数</a></li>
						<li><a data-toggle="tab" href="<c:url value='/admin/role/index'/>"> 角色管理</a></li>
					</ul>
					<form class="form-horizontal" action="" method="post"
						id="infoForm">
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="input01">网站地址</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="SecuritiesId">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">网站名称 </label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="SecuritiesId">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">公司名称 </label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="SellPrice">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">备案号 </label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="SellAmount">
								</div>
							</div>
							<div class="alert fade in">
								网站参数说明： <br /> 1. 此功能正在设计中； <br /> 2. 此功能正在设计中； <br />
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">设置</button>
								<button class="btn" onclick="javascript:history.back();">取消</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

