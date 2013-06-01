<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="service!view" id="view" executeResult="false" />
<head>
<title>${view.service.title}</title>
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
						class="divider">/</span></li>
					<li class="active">查看服务</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="/admin/service/add" class="btn btn-primary"> 添加服务</a>
						</div>
						<h3 class="yahei">服务详情</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a href="${ctx}/admin/service" data-toggle="tab">服务列表</a>
						</li>
						<li><a data-toggle="tab" href="${ctx}/admin/serviceType">服务类型</a>
						</li>
					</ul>
					<div id="serviceView">
						<s:form action="service!view.html" method="post"
							cssClass="creat_form clearfix">
							<input type="hidden" name="id" value="${view.service.id}" />
							<div class="title">
								<span>${view.service.title}<br /> </span><span class="r"
									style="color: #999; font-size: 12px;"><a
									href="<c:url value='/admin/service/edit/${view.service.id}'/>">修改</a>
								</span> <span style="font-weight: bold; color: #999; font-size: 12px;">类型:${view.service.serviceType.name}&nbsp;&nbsp;${view.service.user.username}&nbsp;&nbsp;&nbsp;发布于${view.service.addTime}</span>
							</div>
							<br />
							<p align="center">
								<c:if test="${view.service.img != null}">
									<img class="img-rounded" src="${view.service.img}!middle.jpg" />
								</c:if>
							</p>
							<p>&nbsp;&nbsp;${view.service.content}</p>
						</s:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

