<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="user!view" id="view" executeResult="false">
</s:action>
<head>
<title>后台</title>
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a>
					</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<h3 class="yahei">首页</h3>
					</div>
					<div class="com clearfix">
						<!--<div class="span12 clearfix">
							 <p>
								<c:if test="${view.user.photo==null}">
									<img class="img-polaroid"
										src="${pageContext.request.contextPath}/images/base/user100-100.jpg"
										alt="${view.user.nickname}" />
								</c:if>
								<c:if test="${view.user.photo!=null}">
									<img class="img-polaroid"
										src="${pageContext.request.contextPath}/upload/user/<s:date name='%{#view.user.addTime}' format='yyyyMMdd' />/${view.user.photo}" />
								</c:if>
							</p> 
							<p>
								<a class="btn btn-mini"
									href="<c:url value='/admin/user/setphoto'/>">更换头像</a>&nbsp;|&nbsp;
								<a class="btn btn-mini" href="<c:url value='/admin/user/edit'/>">编辑资料</a>
							</p>
						</div>-->
						<div class="clearfix">
							<p>
								<span>欢迎：${view.user.nickname}</span>
							</p>
							<p>
								<span>登录帐号：</span>${view.user.username}
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

