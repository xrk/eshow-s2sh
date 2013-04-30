<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="user!view" id="view" executeResult="false">
	<s:param name="id">${param.id}</s:param>
</s:action>
<head>
	<title>${view.user.nickname}微博客</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/twitter.css'/>" type="text/css" />
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
							<a href="/admin/twitter/add" class="btn btn-primary">发布</a>
						</div>
						<h3 class="yahei">查看别人微博</h3>
					</div>
					<s:action name="twitter!search" id="twitterList"
						executeResult="false">
						<s:param name="queryBean.userId">${param.id}</s:param>
						<s:param name="queryBean.order">addTime</s:param>
						<s:param name="queryBean.desc">true</s:param>
					</s:action>
					<div id="workmate">
						<div id="top">
							同事说了什么......
						</div>
						<s:iterator value="%{#twitterList.twitters}">
							<s:if test="%{#twitterList.twitters}==null">
								<div class="mainMsg">
									目前没有记录
								</div>
							</s:if>
							<ul>
								<li>
									<div class="info1">
										<span class="msg"><a href="<c:url value="/admin/user/view/${user.id}"/>">${user.nickname}</a>发表于：<s:date name='addTime'
												format="yyyy-MM-dd HH:mm" /> </span>
										<span class="tips"> <a href="<c:url value='/admin/twitter/view/${id}'/>">回复(<span>${commentSize}</span>)</a> </span>
									</div>
									<div class="contxt">
										${content}
									</div>
								</li>
							</ul>
						</s:iterator>
						<%@ include file="/common/page.jsp"%>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>

