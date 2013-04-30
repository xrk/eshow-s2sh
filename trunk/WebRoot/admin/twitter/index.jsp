<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="myid">
	<authz:authentication operation='id' />
</c:set>
<head>
<title>微博客</title>
<link rel="stylesheet" href="<c:url value='/admin/styles/twitter.css'/>"
	type="text/css" />
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
						<h3 class="yahei"> 微博中心</h3>
					</div>
					<s:action name="twitter!search" id="twitterList"
						executeResult="false">
						<s:param name="queryBean.order">addTime</s:param>
						<s:param name="queryBean.desc">true</s:param>
					</s:action>
					<div id="friend">
						<div id="top">大家说的什么......</div>
						<s:iterator value="%{#twitterList.twitters}">
							<s:if test="%{#twitterList.twitters}==null">
								<div class="mainMsg">目前没有记录</div>
							</s:if>
							<ul>
								<li id="twitter${id}">
									<div class="info">
										<span class="msg"><a
											href="<c:url value="/admin/user/view/${user.id}"/>">${user.nickname}</a>发表于：<s:date
												name='addTime' format="yyyy-MM-dd HH:mm" /> </span> <span
											class="tips"> <a
											href="<c:url value='/admin/twitter/view/${id}'/>">回复(<span>${commentSize}</span>)</a>
										</span>
										<c:if test="${user.id==myid}">
											<span class="tips"> <a
												href="<c:url value='/admin/twitter/edit/${id}'/>">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;
												<a href="javascript:void(0);"
												onclick="return deleteData('twitter',${id});">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;
											</span>
										</c:if>
									</div>
									<div class="cont">
										<span class="avatar"> <a
											href="<c:url value="/admin/twitter/workmate/${user.id}"/>">
												<c:if test="${user.photo==null}">
													<img
														src="${pageContext.request.contextPath}/images/base/user50-50.jpg"
														alt="${user.nickname}" width="50" height="50" />
												</c:if> <c:if test="${user.photo!=null}">
													<img
														src="${pageContext.request.contextPath}/upload/user/<s:date name='%{user.addTime}' format='yyyyMMdd' />/${user.photo}"
														alt="${user.nickname}" width="50" height="50" />
												</c:if> </a> </span> <span class="contxt">${content}</span>
									</div></li>
							</ul>
						</s:iterator>
						<%@ include file="/common/page.jsp"%>
					</div>
					<table class="table table-striped table-bordered table-condensed">
						<thead>
							<tr>
								<th>#</th>
								<th>频道</th>
								<th>标题</th>
								<th>价格</th>
								<th>新旧状态</th>
								<th>访问/评论/收藏</th>
								<th>状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr id="market20">
								<td>20</td>
								<td>转手</td>
								<td>二手车求购</td>
								<td>100.0</td>
								<td>0成新</td>
								<td>38/0/2</td>
								<td><span class="label label-success">可用</span></td>
								<td><a href="/market/edit/20">修改</a> <a href="javascript:;"
									onclick="deleteData('确定要删除该信息吗？','market',20);">删除</a></td>
							</tr>
						</tbody>
					</table>

					<div class="pagination">
						<ul>
							<li class="disabled"><a href="javascript:;">«</a></li>
							<li class="active"><a href="#">1</a></li>
							<li class="disabled"><a href="javascript:;">»</a></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</div>


	<div id="main">
		<s:include value="../left.jsp"></s:include>
		<div id="mainarea">
			<div id="mainarea_bg">
				<div id="content">
					<div id="mainTop">
						<h2>
							<img src="<c:url value='/admin/images/app_list_twitter.gif'/>" />
							微博
						</h2>
					</div>
					<div id="mainTab">
						<ul>
							<li class="on"><span class="txt5"><a
									href="<c:url value='/admin/twitter'/>">大家的微博</a> </span></li>
							<li><span class="txt5"><a
									href="<c:url value='/admin/twitter/mine'/>">我的微博</a> </span></li>
							<li class="navtxt"><a
								href="<c:url value='/admin/twitter/add'/>">继续说</a></li>
						</ul>
					</div>
					<s:action name="twitter!search" id="twitterList"
						executeResult="false">
						<s:param name="queryBean.order">addTime</s:param>
						<s:param name="queryBean.desc">true</s:param>
					</s:action>
					<div id="friend">
						<div id="top">大家说的什么......</div>
						<s:iterator value="%{#twitterList.twitters}">
							<s:if test="%{#twitterList.twitters}==null">
								<div class="mainMsg">目前没有记录</div>
							</s:if>
							<ul>
								<li id="twitter${id}">
									<div class="info">
										<span class="msg"><a
											href="<c:url value="/admin/user/view/${user.id}"/>">${user.nickname}</a>发表于：<s:date
												name='addTime' format="yyyy-MM-dd HH:mm" /> </span> <span
											class="tips"> <a
											href="<c:url value='/admin/twitter/view/${id}'/>">回复(<span>${commentSize}</span>)</a>
										</span>
										<c:if test="${user.id==myid}">
											<span class="tips"> <a
												href="<c:url value='/admin/twitter/edit/${id}'/>">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;
												<a href="javascript:void(0);"
												onclick="return deleteData('twitter',${id});">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;
											</span>
										</c:if>
									</div>
									<div class="cont">
										<span class="avatar"> <a
											href="<c:url value="/admin/twitter/workmate/${user.id}"/>">
												<c:if test="${user.photo==null}">
													<img
														src="${pageContext.request.contextPath}/images/base/user50-50.jpg"
														alt="${user.nickname}" width="50" height="50" />
												</c:if> <c:if test="${user.photo!=null}">
													<img
														src="${pageContext.request.contextPath}/upload/user/<s:date name='%{user.addTime}' format='yyyyMMdd' />/${user.photo}"
														alt="${user.nickname}" width="50" height="50" />
												</c:if> </a> </span> <span class="contxt">${content}</span>
									</div></li>
							</ul>
						</s:iterator>
						<%@ include file="/common/page.jsp"%>
					</div>
				</div>
			</div>
			<div class="c"></div>
		</div>
		<div class="c"></div>
	</div>
</body>

