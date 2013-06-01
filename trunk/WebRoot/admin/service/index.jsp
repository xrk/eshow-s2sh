<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<head>
<title>服务</title>
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li><a href="${ctx}/admin/service/">服务中心</a> <span
						class="divider">/</span>
					</li>
					<li class="active">服务列表</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="${ctx}/admin/service/add"
								class="btn btn-primary"> 添加服务</a>
						</div>
						<h3 class="yahei">服务列表</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a href="${ctx}/admin/service" data-toggle="tab">服务列表</a></li>
						<li><a data-toggle="tab" href="${ctx}/admin/serviceType">服务类型</a></li>
					</ul>
					<div>
						<s:action name="service!search" id="serviceList" executeResult="false">
							<s:param name="query.website">promisingpromos</s:param>
							<s:param name="query.order">addTime</s:param>
							<s:param name="query.desc">true</s:param>
						</s:action>
						<ul>
							<s:iterator value="%{#serviceList.services}" status="rowStatus" var="service">
								<li class="servicelist" id="service${id}">
									<div class="avatar">
										<c:if test="${service.img == null}">
											<a href="${ctx}/service/view/${id}"><img src="${ctx}/admin/images/default.jpg" width="80" height="80" /></a>
										</c:if>
										<c:if test="${service.img != null}">
											<a href="${ctx}/service/view/${id}"><img src="${service.img}!small.jpg" width="80" height="80" /></a>
										</c:if>
									</div>
									<div class="list-content">
										<h4>${title}</h4>
										<div class="contxt">
											${util:preview(content,100)}
											<a href="${ctx}/admin/service/view/${id}">查看全文</a>
										</div>
										<div class="time">
											类型:
											<c:if test="${serviceType.name == null}">
											无&nbsp;&nbsp;|&nbsp;&nbsp;
											</c:if>
											<c:if test="${serviceType.name != null}">
											${serviceType.name}&nbsp;&nbsp;|&nbsp;&nbsp;
											</c:if>
											${user.nickname}&nbsp;&nbsp;发表于
											<s:date name='%{addTime}' format='yyyy-MM-dd HH:mm:ss' />
											<span class="del fr"> <i class="icon-pencil"></i> <a
												href="${ctx}/admin/service/edit/${id }">修改</a>
												&nbsp;&nbsp;|&nbsp;&nbsp;<i class="icon-trash"></i> <a
												href="${ctx}/service!delete.action?id=${id}"
												onclick="return deleteData('service',${id});">删除</a> </span>
										</div>
									</div>
								</li>
							</s:iterator>
						</ul>
						<%@ include file="/common/page.jsp"%>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

