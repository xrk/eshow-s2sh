<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="board!view" id="view" executeResult="false"></s:action>
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
						<h3 class="yahei"><img src="<c:url value='/admin/images/app_list_info.gif'/>" />  修改基本设置</h3>
						<ul id="myTab" class="nav nav-tabs">
							<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/'/>">信息列表</a></li>
							<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/audit'/>">未审核</a></li>
							<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/mine'/>">我发表的话题</a></li>
							<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/replied'/>">我参与的话题</a></li>
							<li  class="active"><a data-toggle="tab"
								href="<c:url value='/admin/board'/>">话题板块</a></li>
							<li><a data-toggle="tab"
								href="<c:url value='/admin/topic/add'/>">发表话题</a></li>
						</ul>
					</div>
					<div id="securitiesTxt">
						<form action="<c:url value='/admin/board/board!update.html'/>" method="post">
							<s:hidden name="id" value="%{#view.board.id}"></s:hidden>
							<p>
								<span class="l">话题板块：</span><span class="r"><input
										style="width: 150px;" class="inputtext" type="text"
										onblur="this.className='inputtext'"
										onfocus="this.className='inputtext2'" id="name"
										name="board.name" value="${view.board.name}" /> </span><span
									class="t">必填</span>
							</p>
							<p>
								<span class="l">描述：</span><span class="r"><textarea
										class="textarea" style="width: 400px; height: 60px;"
										name="board.description" id="description"
										onblur="this.className='textarea'"
										onfocus="this.className='textarea2'" />${view.board.description}</textarea>
								</span><span class="t">必填</span>
							</p>
							<div class="c"></div>
							<div class="c h5"></div>
							<span class="l"></span>
							<span class="l"></span>
							<div class="c h10"></div>
							<div class="c h10"></div>
							<p>
								<span class="l"></span><span class="r"><input
										type="submit" class="botton" value="修改"
										onMouseOut="this.className='botton';"
										onMouseOver="this.className='botton2';" /> </span>
							</p>
						</form>
						<div class="c"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

