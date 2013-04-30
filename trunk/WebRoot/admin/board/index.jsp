<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<head>
	<title>话题板块</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/board.css'/>" type="text/css" />
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
							<a href="<c:url value='/admin/board/add'/>" class="btn btn-primary">  添加</a>
						</div>
						<h3 class="yahei"><img src="<c:url value='/admin/images/app_list_info.gif'/>" />  基本设置</h3>
					</div>
					<div id="celebrityList">
						<div id="securitiesGroup">
							<s:action name="board!list" id="boardList" executeResult="false"></s:action>
							<ul>
								<li style="color: #666; line-height: 14px; background: #f1f1f1;">
									<span class="l">分类名称</span><span class="l">备注</span></li>
								<s:iterator value="%{#boardList.boards}" status="rowStatus">
									<li onmouseover="this.style.backgroundColor='#f9f9f9';"
										onmouseout="this.style.backgroundColor='#ffffff';"
										id="board${id}"><span class="l" style="font-size: 14px;"
										title="${name}">${name}</span> <span class="l c999"
										title="${description}">${description}</span> <span
										class="r setting"> <a
											href="<c:url value='/admin/board/edit/${id}'/>" class="">修改</a>
									</span> <span class="r del"> <a href="javascript:void(0);"
											onclick="return deleteData('board',${id});">删除</a> </span></li>

								</s:iterator>
							</ul>
						</div>
						<div class="c"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

