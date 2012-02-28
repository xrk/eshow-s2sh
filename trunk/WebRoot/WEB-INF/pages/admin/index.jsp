<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="user!view" id="view" executeResult="false">
</s:action>
<head>
	<title>后台</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/index.css'/>"
		type="text/css" />
</head>
<body>
	<div id="main">
		<s:include value="left.jsp"></s:include>
		<div id="mainarea">
			<div id="mainarea_bg">
				<div id="content2">
					<div id="column">
						<div class="c h5"></div>
						<div id="composerHome">
							<div class="l">
								<div class="avatar">
									<c:if test="${view.user.photo==null}">
											<img
												src="${pageContext.request.contextPath}/images/base/user100-100.jpg"
												alt="${view.user.nickname}" />
										</c:if>
										<c:if test="${view.user.photo!=null}">
											<img  width="100" height="100"
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
										<B class="f16 cc00"><span>${view.user.nickname}</span> </B>
									</p>
									<p style="width 150px; float left">
										<span class="c666">真实姓名：</span>${view.user.realname}
										<br/>
										<span style="float: left"><span class="c666">用&nbsp;&nbsp;户&nbsp;&nbsp;名：</span>${view.user.username} </span>
									</p>
									<div class="c"></div>
									<span style="float: left"><span class="c666">出生日期：</span>${view.user.birthday} </span><span
										style="padding-bottom: 0px; padding-left: 5px; padding-right: 0px; float: left; padding-top: 4px"
										id="span_getscore"> </span>
									<p></p>
									<div class="c"></div>
								</div>
							</div>
							<div class="clear"></div>
							<div class="asset">
								<p>
									性别：
									<span ><s:if test="%{#view.user.male==true}">男</s:if>
											<s:elseif test="%{#view.user.male==false}">女</s:elseif></span>
								</p>
								<p>
									年龄：
									<span >${view.user.age}</span>
								</p>
								<p>
									邮箱：
									<span>${view.user.email}</span>
								</p>
							</div>
						</div>
						<!--/个人信息-->
						<div class="c h15"></div>
						<div class="subTab">
							<span class="l on">最近动态</span><span class="r"><a href="">更多(2)</a>
							</span>
						</div>
						<div id="friendfeed" class="feed">
							<ul>
								<s:iterator value="%{#applicationScope.userNames}"
									status="rowStatus">
									<li class="feed1">
										<div>
											${user.nickname}${nickname}
											<BR>
											<span class="conttxt">dsds</span>
										</div>
										<div class="time">
											2009-7-25 16:48:05
										</div>
									</li>
								</s:iterator>
							</ul>
							<div class="c h15"></div>
						</div>
						<div class="c h15"></div>
						<div class="subTab">
							<a class="on feeduser">在线用户</a><a class="more" href="<c:url value='/admin/user'/>">更多用户</a>
						</div>
						<div id="friendfeed" class="feed">
							<ul>
								<s:iterator value="%{#applicationScope.userNames}"
									status="rowStatus">
									<li class="feed1">
										<div>
											${user.nickname}${nickname}
											<br/>
											<span class="conttxt"></span>
										</div>
										<div class="time">
										</div>
									</li>
								</s:iterator>
							</ul>
							<div class="c h15"></div>
						</div>
					</div>
					<div id="sidebar">
						<div class="c h5"></div>
						<div id="notify">
							<div class="top">
								<a href="<c:url value='/admin/post'/>">内部公告</a>
							</div>
							<s:action name="post!search" id="postList" executeResult="false"></s:action>
							<ul>
								<s:iterator value="%{#postList.posts}" status="rowStatus">
									<LI>
										<a href="<c:url value='/admin/post/view/${id}'/>"><B>${title}</B>
										</a> [
										<s:date name='%{addTime}' format='yyyy-MM-dd' />
										]
									</LI>
								</s:iterator>
							</ul>
							<div class="clear"></div>
						</div>
						<div id="notify">
							<div class="top topmessage">
								消息中心
							</div>
							<ul>
								<LI>
									系统消息：
									<span class="c999">0&nbsp;条新</span>
								</LI>
								<LI>
									站内消息：
									<span class="c999">0&nbsp;条新</span>
								</LI>
							</ul>
							<div class="clear"></div>
						</div>
						<div class="sideAvatar">
							<div class="top">
								用户信息
								<span class="more"><a href="<c:url value='/admin/user'/>">更多</a> </span>
							</div>
							<s:action name="user!search" id="userList" executeResult="false">
								<s:param name="pagesize">9</s:param>
							</s:action>
							<ul>
								<s:iterator value="%{#userList.users}" status="rowStatus">
									<li>
										<div class="avatar">
											<c:if test="${photo==null}">
													<img  src="${pageContext.request.contextPath}/images/base/user50-50.jpg"
														  alt="${nickname}" width="50" height="50" />
											</c:if> <c:if test="${photo!=null}">
													<img  src="${pageContext.request.contextPath}/upload/user/<s:date name='%{addTime}' format='yyyyMMdd' />/${photo}"
														  alt="${nickname}" width="50" height="50" />
											</c:if>
										</div>
										<div class="name">
											<a title="${nickname}"
												href="<c:url value='/admin/user/view/${username}'/>">${nickname}</a>
										</div>
									</li>
								</s:iterator>
							</ul>
							<div class="c"></div>
						</div>
						<div class="sideAvatar">
							<div class="top">
								我的关注
								<span class="more"><a href="">更多</a> </span>
							</div>
							<ul>
								<div class="context">
									你目前还没有关注的人
								</div>
							</ul>
							<div class="c"></div>
						</div>
					</div>
					<div class="c"></div>
				</div>
				<div class="c"></div>
			</div>
			<div class="c"></div>
			<div class="boxs3_rt"></div>
			<div class="boxs3_lb"></div>
			<div class="boxs3_rb"></div>
		</div>
	</div>
</body>

