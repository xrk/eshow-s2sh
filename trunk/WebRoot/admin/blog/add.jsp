<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<head>
	<title>日志添加</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/blog.css'/>"
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
			new FormCheck('blogForm');
		});
    </script>
	<script type="text/javascript" charset="utf-8"
		src="<c:url value="/components/kindeditor/kindeditor.js"/>"></script>
	<script type="text/javascript">
    KE.show({
        id : 'ke-text'
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
							<a href="<c:url value='/admin/blog/add'/>" class="btn btn-primary">发布</a>
						</div>
						<h3 class="yahei">博客</h3>
					</div>
					<div id="edit">
						<s:form id="blogForm" action="blog!save.html" method="post"
							enctype="multipart/form-data">
							<p>
								<span class="l">日志标题:&nbsp;</span>
								<span class="r">&nbsp; <input name="blog.title"
										class="inputtext text-input validate['required']" style="width: 300px;" maxlength="50"
										type="text" onblur="this.className='inputtext'" /> </span>
							</p>
							<p>
								<span class="l">选择分类:&nbsp;</span>
								<span class="r">&nbsp; <s:action name="category!list"
										id="categoryList" executeResult="false" /> <select
										name="categoryId">
										<s:iterator value="%{#categoryList.categories}"
											status="rowStatus">
											<option value="${id}">
												${name}
											</option>
										</s:iterator>
									</select> </span>
							</p>
							<p>
								<span class="l">内&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;容:&nbsp;</span>
								<span class="l">
								<textarea id="ke-text" name="blog.content"
								           style="width: 600px; height: 300px;"></textarea>
								</span>
							</p>
							<p style="width: 640px; text-align: center;">
								<input type="submit" class="botton" value="发表"
									onmouseout="this.className='botton';"
									onmouseover="this.className='botton2';" />
								<input type="button" class="botton_close1" value="取消"
									onmouseout="this.className='botton_close1';"
									onmouseover="this.className='botton_close2';"
									onclick="javascript:history.back();" />
							</p>
							<div class="c"></div>
							<div class="c h5"></div>
							<span class="l"></span>
							<div class="c h10"></div>
						</s:form>
					</div>
					</div>
				</div>

			</div>
		</div>
</body>

