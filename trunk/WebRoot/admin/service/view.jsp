<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="service!view" id="view" executeResult="false">
</s:action>
<head>
	<title>${view.service.title}</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/service.css'/>" type="text/css" />
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<s:include value="../title.jsp"></s:include>

				<div class="well com">
					<div class="page-header">
						<h3 class="yahei"><img src="<c:url value='/admin/images/app_list_service.gif'/>" />&nbsp;&nbsp;服务管理</h3>
					</div>
					<div id="serviceView">
						<s:form action="service!view.html" method="post"
							cssClass="creat_form clearfix">
							<input type="hidden" name="id" value="${view.service.id}" />
							<div class="title">
								<span>${view.service.title}<br /> </span><span class="r"
									style="color: #999; font-size: 12px;"><a
									href="<c:url value='/admin/service/edit/${view.service.id}'/>">修改</a>
								</span>
								<span style="font-weight: bold; color: #999; font-size: 12px;">类型:${view.service.serviceType.name}&nbsp;&nbsp;${view.service.user.username}&nbsp;&nbsp;&nbsp;发布于${view.service.addTime}</span>
							</div>
							<br />
							<div align="center">
								<c:if test="${view.service.img == null}">
									<img
										src="${pageContext.request.contextPath}/images/base/user50-50.jpg"
										width="200" height="200" />
								</c:if>
								<c:if test="${view.service.img != null}">
									<img
										src="${pageContext.request.contextPath}/upload/service/<s:date name='%{#view.service.addTime}' format='yyyyMMdd' />/${view.service.img}"
										width="200" height="200" />
								</c:if>
							</div>
							<div class="c"></div>
							<div class="contxt">
								&nbsp;&nbsp;${view.service.content}
							</div>
						</s:form>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</body>

