<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>

<head>
	<title>日志分类</title>
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
						<h3 class="yahei"><img src="<c:url value='/admin/images/app_list_info.gif'/>" />  添加基本设置</h3>
					</div>
					<div id="securitiesTxt">
						<form action="board!save.html" method="post">
							<p>
								<span class="l">话题板块：</span><span class="r"><input
										style="width: 150px;" class="inputtext" type="text"
										onblur="this.className='inputtext'"
										onfocus="this.className='inputtext2'" id="name"
										name="board.name" /> </span><span class="t"><font color="red">*</font>必填</span>
							</p>
							<p>
								<span class="l">描&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;述：</span><span class="r"><textarea
										class="textarea" style="width: 400px; height: 60px;"
										name="board.description" id="description"
										onblur="this.className='textarea'"
										onfocus="this.className='textarea2'" /></textarea> </span><span class="t"><font color="red">*</font>必填</span>
							</p>
							<div class="c"></div>
							<div class="c h5"></div>
							<span class="l"></span>
							<span class="l"></span>
							<div class="c h10"></div>
							<div class="c h10"></div>
							<p>
								<span class="l"></span><span class="r"><input
										type="submit" class="botton" value="提交"
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

