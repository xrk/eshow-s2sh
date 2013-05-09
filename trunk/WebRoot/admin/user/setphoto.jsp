<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="title">用户管理</c:set>
<c:set var="title1">修改头像</c:set>
<s:action name="user!view" id="view" executeResult="false">
</s:action>
<head>
	<title>修改头像</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/profile.css'/>" type="text/css" />
	<script type="text/javascript"
		src="<c:url value='/scripts/validate/lang/zh-CN.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/scripts/validate/formcheck.js'/>"></script>
	<script type="text/javascript">
		window.addEvent('domready', function() {
			new FormCheck('userForm');
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
					<li><a href="${ctx}/admin/user/">${title}</a> <span class="divider">/</span></li>
					<li class="active">${title1}</li>
				</ul>

				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/user/add'/>" class="btn btn-primary">添加</a>
						</div>
						<h3 class="yahei">修改资料</h3>
					</div>
						<ul id="myTab" class="nav nav-tabs">
							<li><a data-toggle="tab" href="<c:url value='/admin/user'/>">用户列表</a></li>
							<li><a data-toggle="tab" href="<c:url value='/admin/user/edit'/>">修改资料</a></li>
							<li><a data-toggle="tab" href="<c:url value='/admin/user/password'/>">修改密码</a></li>
							<li  class="active"><a data-toggle="tab" href="<c:url value='/admin/user/setphoto'/>">修改头像</a></li>
						</ul>
						<%@ include file="/common/messages.jsp"%>
						
						<form class="form-horizontal"  action="user!photo" id="userForm" method="post" validate="false">
							<input type="hidden" name="id" value="${view.user.id}">
							<fieldset>
							<div class="control-group">
								<label class="control-label" for="input01">当前头像</label>
								<div class="controls">
									<c:if test="${view.user.photo==null}">
										<a
											href="<c:url value="/admin/user/view/${view.user.username}"/>"><img
											src="${pageContext.request.contextPath}/common/images/user50-50.jpg"
											alt="${view.user.nickname}" /> </a>
									</c:if>
									<c:if test="${view.user.photo!=null}">
										<a href="<c:url value="/admin/user/view/${username}"/>"><img
											src="${pageContext.request.contextPath}/upload/user/<s:date name='%{#view.user.addTime}' format='yyyyMMdd' />/${view.user.photo}<%=Math.round(Math.random() * 100000)%>"
											alt="${view.user.nickname}" /> </a>
									</c:if>
								</div>
							</div>
							
							<div class="control-group">
									<label class="control-label" for="input01" >更换头像</label>
									<div class="controls">
										<input  type="file" class="input-xlarge"  name="user.photo" id="password">
									<p style="margin-top: 10px; color: #999;">图片大小不能超过2M，支持
										.jpeg .jpg .gif .bmp .png 格式</p>
								</div>
								</div>
								<div class="form-actions">
									<button type="submit" class="btn btn-primary">上传</button>
									<button class="btn">取消</button>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
</body>

