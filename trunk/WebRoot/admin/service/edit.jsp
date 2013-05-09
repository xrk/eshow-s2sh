<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="title">服务中心</c:set>
<c:set var="title1">修改服务</c:set>
<s:action name="service!view" id="view" executeResult="false" />
<head>
	<title>修改服务</title>
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
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/service/add'/>"
								class="btn btn-primary"> 添加</a>
						</div>
						<h3 class="yahei">服务修改</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"> <a href="<c:url value='/admin/service'/>" data-toggle="tab">服务列表</a>
						</li>
						<li><a data-toggle="tab" href="<c:url value='/admin/serviceType'/>">服务类型</a>
						</li>
					</ul>
					<form class="form-horizontal" action="service!update" method="post"
						id="infoForm">
						<input type="hidden" name="id" value="${view.service.id }"/>
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="input01">服务标题 </label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="service.title" value="${view.service.title}">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="select01">服务类型</label>
								<s:action name="service-type!search" id="serviceTypeList"
									executeResult="false" />
								<div class="controls">
									<select  id="serviceTypeId" name="service.serviceType.id">
										<s:iterator value="%{#serviceTypeList.serviceTypes}"
											status="rowStatus">
											<option value="${id}"
												<c:if test="${view.service.serviceType.id==id}">selected="selected"</c:if>>
												${name}</option>
										</s:iterator>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="fileInput">选择图片</label>
								<div class="controls">
									<input class="input-file" id="fileInput" type="file" name="service.img">
									<span class="l">&nbsp; <c:if test="${view.service.img == null}">
										<img
											src="${pageContext.request.contextPath}/images/base/user50-50.jpg" />
									</c:if> <c:if test="${view.service.img != null}">
										<img
											src="${pageContext.request.contextPath}/upload/service/<s:date name='%{#view.service.addTime}' format='yyyyMMdd'/>/${view.service.img}" />
									</c:if> </span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="textarea">服务内容</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" rows="3"
										style="width: 600px; height: 100px;" name="service.content">${view.service.content}</textarea>
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

