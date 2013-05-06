<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="serviceType!view" id="view" executeResult="false"></s:action>
<head>
	<title>修改服务类型</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/service.css'/>" type="text/css" />
	<%@ include file="/common/formcheck.jsp"%>
	<script type="text/javascript">
	 	window.addEvent('domready', function() {
			new FormCheck('serviceTypeForm');
		});
    </script>
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
				<s:include value="../title.jsp"></s:include>
				<div class="well com">
					<div class="page-header">
						<h3 class="yahei">
							<img src="<c:url value='/admin/images/app_list_system.gif'/>" />
							服务类型管理
						</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li><a href="<c:url value='/admin/service'/>" data-toggle="tab">服务列表</a>
						</li>
						<li class="active"><a data-toggle="tab" href="<c:url value='/admin/serviceType'/>">服务类型</a>
						</li>
						<li><a data-toggle="tab" href="<c:url value='/admin/service/add'/>">添加服务</a>
						</li>
					</ul>
					<div id="edit">
						<form id="serviceTypeForm" action="serviceType!update.html" method="post">
							<s:hidden name="id" value="%{#view.serviceType.id}"></s:hidden>
							<p>
								<span class="l">类型名称：</span><span class="r"><input
										style="width: 150px;" class="inputtext text-input validate['required']"  type="text"
										onblur="this.className='inputtext'"
										onfocus="this.className='inputtext2'" id="name"
										name="serviceType.name" value="${view.serviceType.name}" /> </span><span
									class="t"><font color="red">*</font >必填</span>
							</p>
							<p>
								<span class="l">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</span><span class="r"><textarea
										class="inputtext text-input validate['required']"  style="width: 400px; height: 60px;"
										name="serviceType.remark" id="inputBox"
										onblur="this.className='textarea'"
										onfocus="this.className='textarea2'" />${view.serviceType.remark}</textarea>
								</span><span class="t"><font color="red">*</font>必填</span>
							</p>
							<p>
								<span class="l"></span><span class="r">
								<input type="submit" class="botton" value="修改"
										onMouseOut="this.className='botton';"
										onMouseOver="this.className='botton2';" />
								<input type="button" class="botton_close1" value="取消"
									onmouseout="this.className='botton_close1';"
									onmouseover="this.className='botton_close2';"
									onclick="javascript:history.back();"/>
										 </span>
							</p>
						</form>
						<div class="c"></div>
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
							<img src="<c:url value='/admin/images/app_list_service.gif'/>" />
							服务
						</h2>
					</div>
					<div id="mainTab">
						<ul>
							<li>
								<span class="txt6"><a href="<c:url value='/admin/service'/>">服务</a>
								</span>
							</li>
							<li class="on">
								<span class="txt6"><a
									href="<c:url value='/admin/serviceType'/>">服务类型</a> </span>
							</li>
							<li class="navtxt">
								<a href="<c:url value='/admin/serviceType/add'/>" style="text-decoration:none;">添加服务</a>
							</li>
						</ul>
					</div>
					<div id="edit">
						<form id="serviceTypeForm" action="serviceType!update.html" method="post">
							<s:hidden name="id" value="%{#view.serviceType.id}"></s:hidden>
							<p>
								<span class="l">类型名称：</span><span class="r"><input
										style="width: 150px;" class="inputtext text-input validate['required']"  type="text"
										onblur="this.className='inputtext'"
										onfocus="this.className='inputtext2'" id="name"
										name="serviceType.name" value="${view.serviceType.name}" /> </span><span
									class="t"><font color="red">*</font >必填</span>
							</p>
							<p>
								<span class="l">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</span><span class="r"><textarea
										class="inputtext text-input validate['required']"  style="width: 400px; height: 60px;"
										name="serviceType.remark" id="inputBox"
										onblur="this.className='textarea'"
										onfocus="this.className='textarea2'" />${view.serviceType.remark}</textarea>
								</span><span class="t"><font color="red">*</font>必填</span>
							</p>
							<p>
								<span class="l"></span><span class="r">
								<input type="submit" class="botton" value="修改"
										onMouseOut="this.className='botton';"
										onMouseOver="this.className='botton2';" />
								<input type="button" class="botton_close1" value="取消"
									onmouseout="this.className='botton_close1';"
									onmouseover="this.className='botton_close2';"
									onclick="javascript:history.back();"/>
										 </span>
							</p>
						</form>
						<div class="c"></div>
					</div>
				</div>
				<div class="c"></div>
			</div>
		</div>
	</div>
</body>

