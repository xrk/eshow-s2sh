<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="album!view" id="view" executeResult="false" />
<head>
	<title>修改相册</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/album.css'/>"
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
							<a href="<c:url value='/admin/album/add'/>"
								class="btn btn-primary">发布</a>
						</div>
						<h3 class="yahei">
							<img src="<c:url value='/admin/images/app_list_album.gif'/>" />
							${view.album.name}相册
						</h3>
						<ul id="myTab" class="nav nav-tabs">
							<li><a data-toggle="tab" href="<c:url value='/admin/album'/>">相册列表</a></li>
							<li><a data-toggle="tab" href="<c:url value='/admin/album/view'/>">查看相册</a></li>
							<li  class="active"><a data-toggle="tab" href="<c:url value='/admin/album/edit'/>">修改相册</a></li>
							<li><a data-toggle="tab" href="<c:url value='/admin/album/add'/>">创建相册</a></li>
						</ul>
					</div>
					<div id="edit">
						<s:form id="albumForm" action="album!update.html" method="post"
							cssClass="creat_form clearfix">
							<s:hidden name="id" value="%{#view.album.id}"></s:hidden>
							<p>
								<span class="l">相册名称：</span><span class="r"><input
									style="width: 150px;" class="inputtext" type="text"
									onblur="this.className='inputtext'"
									onfocus="this.className='inputtext2'" id="username"
									name="album.name" value="${view.album.name}" /> </span><span
									class="t"><font color="red">*</font>必填</span>
							</p>
							<p>
								<span class="l">相册描述：</span><span class="r"><textarea
										class="textarea" style="width: 400px; height: 60px;"
										name="album.description" id="inputBox"
										onblur="this.className='textarea'"
										onfocus="this.className='textarea2'" />${view.album.description}</textarea>
								</span><span class="t"><font color="red">*</font>必填</span>
							</p>
							<div class="c"></div>
							<div class="c h5"></div>
							<p>
								<span class="l"></span><span class="r"><input
									type="submit" class="botton" value="修改"
									onMouseOut="this.className='botton';"
									onMouseOver="this.className='botton2';" /> </span>
							</p>
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
							<img src="<c:url value='/admin/images/app_list_album.gif'/>" />
							修改相册${view.album.name}
						</h2>
					</div>
					<div id="mainTab">
						<ul>
							<li>
								<span class="txt6"><a
									href="<c:url value='/admin/album'/>">相册</a> </span>
							</li>
							<li>
								<span class="txt6"><a
									href="<c:url value='/admin/photo'/>">图片列表</a> </span>
							</li>
							<li class="navtxt">
								<a href="<c:url value='/admin/photo/add'/>">上传图片</a>
							</li>
						</ul>
					</div>
					<div id="edit">
						<s:form id="albumForm" action="album!update.html" method="post"
							cssClass="creat_form clearfix">
							<s:hidden name="id" value="%{#view.album.id}"></s:hidden>
							<p>
								<span class="l">相册名称：</span><span class="r"><input
										style="width: 150px;" class="inputtext" type="text"
										onblur="this.className='inputtext'"
										onfocus="this.className='inputtext2'" id="username"
										name="album.name" value="${view.album.name}" /> </span><span
									class="t"><font color="red">*</font>必填</span>
							</p>
							<p>
								<span class="l">相册描述：</span><span class="r"><textarea
										class="textarea" style="width: 400px; height: 60px;"
										name="album.description" id="inputBox"
										onblur="this.className='textarea'"
										onfocus="this.className='textarea2'" />${view.album.description}</textarea>
								</span><span class="t"><font color="red">*</font>必填</span>
							</p>
							<div class="c"></div>
							<div class="c h5"></div>
							<p>
								<span class="l"></span><span class="r"><input
										type="submit" class="botton" value="修改"
										onMouseOut="this.className='botton';"
										onMouseOver="this.className='botton2';" /> </span>
							</p>
						</s:form>
					</div>
				</div>
				<div class="c"></div>
			</div>
			<div class="c"></div>
		</div>
	</div>
</body>
