<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="user!view" id="view" executeResult="false">
	<s:param name="id">${param.id}</s:param>
</s:action>
<c:set var="myid">
	<authz:authentication operation='id' />
</c:set>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<head>
	<title>${view.user.nickname}的话题</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/topic.css'/>"
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
					<li class="active">${title}</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/board/add'/>" class="btn btn-primary">  添加</a>
						</div>
						<h3 class="yahei">周围的讨论</h3>
						<ul id="myTab" class="nav nav-tabs">
							<li  class="active"><a data-toggle="tab"
								href="<c:url value='/admin/topic/'/>">信息列表</a></li>
							<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/audit'/>">未审核</a></li>
							<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/mine'/>">我发表的话题</a></li>
							<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/replied'/>">我参与的话题</a></li>
							<li><a data-toggle="tab"
								href="<c:url value='/admin/board'/>">话题板块</a></li>
							<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/add'/>">发表话题</a></li>
						</ul>
					</div>
					<div id="analysis">
						<div class="subnav">
							<strong>全部</strong>
							<s:action name="board!list" id="boardList" executeResult="false"></s:action>
							<s:iterator value="%{#boardList.boards}" status="rowStatus">
								<a
									href="<c:url value='/admin/topic/workmate?queryBean.boardId=${id}'/>">${name}</a>
							</s:iterator>
						</div>
						<table class="forum-table">
							<colgroup>
								<col width="17" />
								<col width="85" />
								<col />
								<col width="40" />
								<col width="100" />
								<col width="90" />
								<col width="70" />
								<col width="70" />
								<col width="90" />
							</colgroup>
							<tbody>
								<tr>
									<th></th>
									<th align="left">
										分类
									</th>
									<th align="left" width="200">
										标题
									</th>
									<th align="center" width="130">
										更新时间
									</th>
									<th align="center" width="90">
										浏览/回复
									</th>
									<th align="center" width="90">
										推荐/收藏
									</th>
									<th align="center" width="110">
										发表时间
									</th>
								</tr>
								<s:action name="topic!search" id="topicList"
									executeResult="false">
									<s:param name="queryBean.userId">${param.id}</s:param>
									<s:param name="queryBean.order">addTime</s:param>
									<s:param name="queryBean.desc">true</s:param>
								</s:action>
								<s:iterator value="%{#topicList.topics}" status="rowStatus">

									<tr onmouseover='this.style.backgroundColor ="#f9f9f9"'
										onmouseout='this.style.backgroundColor =""'>
										<td>
											<img src="<c:url value='/admin/images/icon_page.gif'/>" />
										</td>
										<td align="left">
											<em>${board.name}</em>
										</td>
										<td style="with:200;">
											<a href="<c:url value='/admin/topic/view/${id}'/>"
												title="${title}">${util:preview(title,22)}</a>
										</td>
										<td align="center" style="with:130;">
											<s:date name="updateTime" format="yyyy-MM-dd HH:mm"/>
										</td>
										<td align="center" style="with:90;">
											${count}/${commentSize}
										</td>
										<td align="center" style="with:90;">
											6/0
										</td>
										<td align="center" style=with:110;">
											<s:date name="addTime" format="yyyy-MM-dd"/>
										</td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
						<%@ include file="/common/page.jsp"%>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

