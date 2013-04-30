<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<head>
	<title>创建相册</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/album.css'/>"
		type="text/css" />
	<link media="screen" type="text/css"
		href="<c:url value='/scripts/validate/theme/grey/formcheck.css'/>"
		rel="stylesheet" />
	<script type="text/javascript"
		src="<c:url value='/scripts/validate/lang/zh-CN.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/scripts/validate/formcheck.js'/>"></script>
	<script type="text/javascript">
		window.addEvent('domready', function() {
			new FormCheck('albumForm');
		});
    </script>
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
							<a href="<c:url value='/admin/album/add'/>" class="btn btn-primary">发布</a>
						</div>
						<h3 class="yahei"><img src="<c:url value='/admin/images/app_list_album.gif'/>" />
							创建相册</h3>
					</div>
					<div id="edit">
						<s:form id="albumForm" action="album!save.html" method="post"
							enctype="multipart/form-data">
							<p>
								<span class="l">相册名称：</span><span class="r"><input
										class="inputtext text-input validate['required']"
										style="width: 150px;" class="inputtext" type="text"
										onblur="this.className='inputtext'"
										onfocus="this.className='inputtext2'" id="username"
										name="album.name" /> </span><span class="t"><font color="red">*</font>必填</span>
							</p>
							<p>
								<span class="l">相册描述：</span><span class="r"><textarea
										class="inputtext text-input validate['required']"
										class="textarea" style="width: 400px; height: 60px;"
										name="album.description" id="inputBox"
										onblur="this.className='textarea'"
										onfocus="this.className='textarea2'" /></textarea> </span><span class="t"><font
									color="red">*</font>必填</span>
							</p>

							<div class="c h10"></div>
							<div class="c h10"></div>
							<p>
								<span class="l"></span><span class="r"><input
										type="submit" class="botton" value="添加"
										onMouseOut="this.className='botton';"
										onMouseOver="this.className='botton2';" /> </span>
							</p>
						</s:form>
					</div>
					</div>
				</div>

			</div>
		</div>
</body>
