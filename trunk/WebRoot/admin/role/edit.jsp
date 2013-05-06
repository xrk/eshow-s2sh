<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="title">系统管理</c:set>
<c:set var="title2">修改角色</c:set>

<s:action name="role!view" id="view" executeResult="false" />
<head>
	<title>修改角色</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/role.css'/>"
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
					<li class="active"><a href="${ctx}/admin/role/index">${title} </a><span class="divider">/</span>
					</li>
					<li class="active">${title2}</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<h3 class="yahei">
							<img src="<c:url value='/admin/images/app_list_system.gif'/>" />
							系统管理
						</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li><a data-toggle="tab" href="<c:url value='/admin/system'/>"> 网络参数</a></li>
						<li><a data-toggle="tab" href="<c:url value='/admin/role/index'/>"> 角色引导</a></li>
						<li><a data-toggle="tab" href="<c:url value='/admin/role/add'/>"> 角色添加</a></li>
						<li class="active"><a data-toggle="tab" href="<c:url value='/admin/role/edit'/>"> 角色修改</a></li>
					</ul>
					<div id="analysisEdit">
						<s:form id="roleForm" action="role!update.html" method="post">
							<s:hidden name="id" value="%{#view.role.id}"></s:hidden>
							<p>
								<span class="l">角色代码：</span>
								<span class="r">&nbsp; <input name="role.name"
										class="inputtext" style="width: 200px;" maxlength="50"
										type="text" onblur="this.className='inputtext'"
										value="${view.role.name}" /> </span>
							</p>
							<p>
								<span class="l">角色描述：</span>
								<span class="r">&nbsp; <input name="role.description"
										class="inputtext" style="width: 200px;" maxlength="50"
										type="text" onblur="this.className='inputtext'"
										value="${view.role.description}" /> </span>
							</p>
							<li>
								<span class="l"></span><span class="r"> <input
										type="submit" class="botton" value="修改"
										onmouseout="this.className='botton';"
										onmouseover="this.className='botton2';" /> <input
										type="button" class="botton_close1" value="取消"
										onmouseout="this.className='botton_close1';"
										onmouseover="this.className='botton_close2';"
										onclick="javascript:history.back();" /> </span>
							</li>
						</s:form>
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
							<img src="<c:url value='/admin/images/app_list_system.gif'/>" />
							系统管理
						</h2>
					</div>
					<div id="mainTab">
						<ul>
							<li>
								<span class="txt6"><a
									href="<c:url value='/admin/system'/>">网站参数</a> </span>
							</li>
							<li class="on">
								<span class="txt6"><a href="<c:url value='/admin/role'/>">角色管理</a>
								</span>
							</li>
						</ul>
					</div>
					<div id="analysisEdit">
						<s:form id="roleForm" action="role!update.html" method="post">
							<s:hidden name="id" value="%{#view.role.id}"></s:hidden>
							<p>
								<span class="l">角色代码：</span>
								<span class="r">&nbsp; <input name="role.name"
										class="inputtext" style="width: 200px;" maxlength="50"
										type="text" onblur="this.className='inputtext'"
										value="${view.role.name}" /> </span>
							</p>
							<p>
								<span class="l">角色描述：</span>
								<span class="r">&nbsp; <input name="role.description"
										class="inputtext" style="width: 200px;" maxlength="50"
										type="text" onblur="this.className='inputtext'"
										value="${view.role.description}" /> </span>
							</p>
							<li>
								<span class="l"></span><span class="r"> <input
										type="submit" class="botton" value="修改"
										onmouseout="this.className='botton';"
										onmouseover="this.className='botton2';" /> <input
										type="button" class="botton_close1" value="取消"
										onmouseout="this.className='botton_close1';"
										onmouseover="this.className='botton_close2';"
										onclick="javascript:history.back();" /> </span>
							</li>
						</s:form>
					</div>
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

