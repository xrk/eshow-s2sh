<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="title">服务中心</c:set>
<c:set var="title1">添加服务</c:set>
<head>
	<title>添加服务</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/service.css'/>" type="text/css" />
	<%@ include file="/common/formcheck.jsp"%>
	<script type="text/javascript">
	 	window.addEvent('domready', function() {
			new FormCheck('serviceForm');
		});
    </script>
	<script type="text/javascript" charset="utf-8"
		src="<c:url value="/components/kindeditor/kindeditor.js"/>"></script>
	<script type="text/javascript">
	    KE.show({
	        id : 'ke-text'
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
					<li><a href="${ctx}/admin/service/">${title}</a> <span
						class="divider">/</span></li>
					<li class="active">${title1}</li>
				</ul>

				<div class="well com">
					<ul id="myTab" class="nav nav-tabs">
						<li><a href="<c:url value='/admin/service'/>" data-toggle="tab">服务列表</a>
						</li>
						<li><a data-toggle="tab" href="<c:url value='/admin/serviceType'/>">服务类型</a>
						</li>
						<li  class="active"><a data-toggle="tab" href="<c:url value='/admin/service/add'/>">添加服务</a>
						</li>
					</ul>
					<form class="form-horizontal" action="service!save" method="post"
						id="infoForm">
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="input01">服务标题 </label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="service.title" >
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="select01">服务类型</label>
								<s:action name="serviceType!search" id="serviceTypeList"
									executeResult="false" />
								<div class="controls">
									<select  id="serviceTypeId" name="serviceTypeId">
										<s:iterator value="%{#serviceTypeList.serviceTypes}"
											status="rowStatus">
											<option value="${id}">${name}</option>
										</s:iterator>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="fileInput">选择图片</label>
								<div class="controls">
									<input class="input-file" id="fileInput" type="file">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="textarea">服务内容</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" rows="3"
										style="width: 600px; height: 100px;" name="info.content"></textarea>
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

