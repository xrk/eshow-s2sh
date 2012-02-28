<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<c:set var="myid">
	<authz:authentication operation='id' />
</c:set>
<head>
	<title>微博</title>
	<meta name="keywords" content="微博，心情，记事" />
	<meta name="description" content="微博客，上Eshow微博，马上注册" />
	<link rel="stylesheet" href="<c:url value='/styles/twitter.css'/>"
		type="text/css" />
	<script type="text/javascript"
		src="<c:url value='/scripts/delete.js'/>"></script>
</head>
<body>
	<div class="w980 ">
		<div class="wrap_top left"></div>
		<div class="wrapper">

			<div class="banner">
				<img src="<c:url value='/images/twitter.jpg'/>" />
			</div>
			<div id="content">
				<ul class="mainTab">
					<li>
						<a href="<c:url value='/twitter'/>" class="bg_a">大家的微博 </a>
						</span>
					</li>
					<li>
						<a href="<c:url value='/twitter/mine'/>">我的微博</a>
					</li>
					<li>
						<a href="<c:url value='/twitter/add'/>">继续说</a>
					</li>
				</ul>
				<s:action name="twitter!search" id="twitterList"
					executeResult="false">
					<s:param name="queryBean.order">addTime</s:param>
					<s:param name="queryBean.desc">true</s:param>
				</s:action>
				<div id="twittersFriend">
					<div id="twitterTop">
						大家说的什么......
						<br />
					</div>
					<s:iterator value="%{#twitterList.twitters}">
						<s:if test="%{#twitterList.twitters}==null">
							<div class="mainMsg">
								目前没有记录
							</div>
						</s:if>
						<ul>
							<li id="twitter${id}">

								<div class="cont left">
									<div class="avatar ">
										<c:if test="${user.photo == null}">
											<a href="/eshow/twitter/workmate/${user.id}" class="lnk1"><img
													src="${pageContext.request.contextPath}/images/base/user50-50.jpg"
													alt="${user.username}" width="50" height="50" /> </a>
										</c:if>
										<c:if test="${user.photo != null}">
											<a href="/eshow/twitter/workmate/${user.id}"><img
													src="${pageContext.request.contextPath}/upload/user/<s:date name='%{user.addTime}' format='yyyyMMdd' />/${user.photo}"
													alt="${user.username}" width="50" height="50" /> </a>
										</c:if>
									</div>
									<div class="contxt left">
										<div>
											<a href="<c:url value='/twitter/workmate/${user.id}'/>"
												style="text-decoration: none; color: green;"><strong>${user.nickname}:&nbsp;&nbsp;</strong>
											</a>${content}
										</div>
										<div class="info">
											<div class="msg">
												<s:date name='addTime' format="yyyy-MM-dd HH:mm" />
												<div class="tips">
													<c:if test="${user.id == myid}">&nbsp;&nbsp;|&nbsp;&nbsp;</c:if>
													<a href="<c:url value='/twitter/view/${id}'/>" class="lnk1">回复(<span
														id="count2823">${commentSize}</span>)</a>
													<c:if test="${user.id==myid}">
														<a href="<c:url value='/twitter/edit/${id}'/>"
															class="lnk1">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
															href="javascript:void(0);"
															onclick="return deleteData('twitter',${id});"
															class="lnk1">删除</a>
												</div>
											</div>

											</c:if>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</s:iterator>
					<div class="left" style="padding-left: 450px;">
						<%@ include file="/common/page.jsp"%>
					</div>
				</div>
			</div>
		</div>
		<div class="wrap_bottom left"></div>
		<div style="clear: both;"></div>
	</div>
</body>
