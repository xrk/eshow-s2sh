<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="user!view" id="view" executeResult="false">
</s:action>
<c:set var="title">""</c:set>
<head>
	<title>后台</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/index.css'/>"
		type="text/css" />
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li class="active">${title}</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<h3 class="yahei">个人资料</h3>
					</div>
					
					<div class="page-header">
						<h3 class="yahei">个人资料</h3>
						<div id="mainarea">
							<div id="mainarea_bg">
								<div id="content2">
									<div id="column">
										<div id="composerHome">
											<div class="l">
												<div class="avatar">
													<c:if test="${view.user.photo==null}">
														<img
															src="${pageContext.request.contextPath}/images/base/user100-100.jpg"
															alt="${view.user.nickname}" />
													</c:if>
													<c:if test="${view.user.photo!=null}">
														<img width="100" height="100"
															src="${pageContext.request.contextPath}/upload/user/<s:date name='%{#view.user.addTime}' format='yyyyMMdd' />/${view.user.photo}" />
													</c:if>
												</div>
												<div class="nav">
													<p>
														<a href="<c:url value='/admin/user/setphoto'/>">更换头像</a>&nbsp;|&nbsp;
														<a href="<c:url value='/admin/user/edit'/>">编辑资料</a>
													</p>
												</div>
											</div>
											<div class="r">
												<div class="status">
													<p>
														<B class="f16 cc00"><span>${view.user.nickname}</span>
														</B>
													</p>
													<p style="width 150px; float left">
														<span class="c666">真实姓名：</span>${view.user.realname} <br />
														<span style="float: left"><span class="c666">用&nbsp;&nbsp;户&nbsp;&nbsp;名：</span>${view.user.username}
														</span>
													</p>
													<div class="c"></div>
													<span style="float: left"><span class="c666">出生日期：</span>${view.user.birthday}
													</span><span
														style="padding-bottom: 0px; padding-left: 5px; padding-right: 0px; float: left; padding-top: 4px"
														id="span_getscore"> </span>
													<p></p>
													<div class="c"></div>
												</div>
											</div>
											<div class="clear"></div>
											<div class="asset">
												<p>
													性别： <span><s:if test="%{#view.user.male==true}">男</s:if>
														<s:elseif test="%{#view.user.male==false}">女</s:elseif> </span>
												</p>
												<p>
													年龄： <span>${view.user.age}</span>
												</p>
											</div>
										</div>
										<!--/个人信息-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

