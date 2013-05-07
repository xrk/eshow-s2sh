<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<c:set var="title">服务中心</c:set>
<c:set var="title1">服务列表</c:set>
<head>
	<title>服务</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/service.css'/>"
		type="text/css" />
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
						<h3 class="yahei">服务列表</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a href="<c:url value='/admin/service'/>" data-toggle="tab">服务列表</a>
						</li>
						<li><a data-toggle="tab" href="<c:url value='/admin/serviceType'/>">服务类型</a>
						</li>
					</ul>
					<div id="analysis">
							<s:action name="service!search" id="serviceList"
								executeResult="false">
								<s:param name="queryBean.order">addTime</s:param>
								<s:param name="queryBean.desc">true</s:param>
							</s:action>
							<ul class="flist">
								<s:iterator value="%{#serviceList.services}" status="rowStatus">
									<li onmouseover='this.style.backgroundColor ="#f9f9f9"'
										onmouseout='this.style.backgroundColor =""' id="service${id}">
										<div class="avatar">
											<a href="<c:url value='service/view/${id}'/>"><img
													src="${pageContext.request.contextPath}/upload/service/<s:date name='%{addTime}' format='yyyyMMdd'/>/${img}"
													width="50" height="50" /> </a>
										</div>
										<div class="cont">
											<div class="title">
												<a href="<c:url value='/admin/service/view/${id}'/>">${title}</a>&nbsp;&nbsp;&nbsp;&nbsp;
											</div>
											<div class="tips">
												<a href="<c:url value='/admin/service/edit/${id }'/>">修改</a>
												&nbsp;&nbsp;|&nbsp;&nbsp;
												<a href="javascript:void(0);"
													onclick="return deleteData('service',${id});">删除</a>
											</div>
											<div class="time">
												类型:${serviceType.name}&nbsp;&nbsp;|&nbsp;&nbsp;${user.username}&nbsp;发表于
												<s:date name='%{addTime}' format='yyyy-MM-dd HH:mm:ss' />

											</div>
											<div class="contxt" style="margin-top: -5px;">
												${util:preview(content,100)}
												<p class="r">
													<a href="<c:url value='/admin/service/view/${id}'/>">查看全文</a>
												</p>
											</div>
										</div>
										<div class="c"></div>
									</li>
								</s:iterator>
							</ul>
						</div>
					
				</div>
			</div>
		</div>
	</div>
</body>

