<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="title1"><a href="<c:url value='/admin/user'/>">用户管理</a></c:set>
<c:set var="title2"><a href="<c:url value='/admin/user'/>">用户列表</a></c:set>
<head>
	<title>用户列表</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/user.css'/>" type="text/css" />
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<s:include value="../title.jsp"></s:include>

				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/user/add'/>" class="btn btn-primary">发布</a>
						</div>
						<h3 class="yahei">用户管理</h3>
					</div>
					<div id="celebrityList">
					<%@ include file="/common/messages.jsp"%>
						<div id="securitiesGroup">
							<s:action name="user!search" id="userList" executeResult="false">
								<s:param name="userQueryBean.pagesize">10</s:param>
							</s:action>
							<ul>
								<li style="color: #666; line-height: 14px; background: #f1f1f1;">
									<span class="l">用户ID</span><span class="l">用户名</span><span
										class="l">账户状态</span>
								</li>
								<s:iterator value="%{#userList.users}" status="rowStatus">
									<li id="user${id}"
										onmouseover="this.style.backgroundColor = '#f9f9f9';" onmouseout="this.style.backgroundColor = '#ffffff';">
										<span class="l" style="font-size: 14px;"><a
											href="<c:url value='/admin/user/view/${id}'/>" class="">${id}</a>
										</span>
										<span class="l c999"><a
											href="<c:url value='/admin/user/view/${id}'/>">${username}</a></span>
										<span class="l c999"><s:if test="%{enabled}">可用</s:if><s:else>不可用</s:else></span>
										<a href="<c:url value='/admin/user/edit/${id}'/>">修改</a>&nbsp;|&nbsp;
										<a  href="javascript:void(0);"
											onclick="return deleteData('user',${id});">删除</a>
									</li>
								</s:iterator>
							</ul>
						</div>
						<div class="pager">
							<div id="articeBottom">
								<%@ include file="/common/page.jsp"%>
							</div>
						</div>
						<div class="c"></div>
					</div>
					
				</div>
			</div>
		</div>
	</div>

</body>

