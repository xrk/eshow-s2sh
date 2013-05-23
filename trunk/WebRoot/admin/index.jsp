<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="user!view" id="view" executeResult="false">
</s:action>
<head>
	<title>后台</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/styleadmin.css'/>"/>
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<h3 class="yahei">个人资料</h3>
					</div>
					
					<div class="com clearfix"> 
							<div class="span12 clearfix"> 
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
									<a class="btn btn-mini" href="<c:url value='/admin/user/setphoto'/>">更换头像</a>&nbsp;|&nbsp;
									<a class="btn btn-mini" href="<c:url value='/admin/user/edit'/>">编辑资料</a>
									  </p>
							</div>
							<div class="clearfix"> 
									<p> <strong>${view.user.nickname}</strong></p>
									<p> <span>真实姓名：</span>${view.user.realname}</p>
									<p> <span>用&nbsp;&nbsp;户&nbsp;&nbsp;名：</span>${view.user.username} </p>
									<p> <span>出生日期：</span>${view.user.birthday}</p>

									<p>性别：<s:if test="%{#view.user.male==true}">男</s:if>
									<s:elseif test="%{#view.user.male==false}">女</s:elseif> </p>  
									<p>
								年龄： <span>${view.user.age}</span>
							</p>
							</div>
											 
						 
					</div> 
			</div>
		</div>
	</div>
	</div>

</body>

