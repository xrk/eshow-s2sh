<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="blog!view" id="view" executeResult="false" />
<head>
	<title>修改日志_${view.blog.title}</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/blog.css'/>"
		type="text/css" />
	<%@ include file="/common/validate.jsp"%>
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
						<h3 class="yahei">修改博客</h3>
					</div>
					<div id="edit">
						<s:form action="blog!update.html" method="post"
							cssClass="creat_form clearfix">
							<input type="hidden" name="id" value="${view.blog.id}" />
							<p>
								<span class="l">日志标题:&nbsp;</span>
								<span class="r">&nbsp;<input type="text" id="title"
								        class="inputtext text-input validate['required']"
										name="blog.title" value="${view.blog.title}"
										style="width: 300px;" maxlength="50"> </span>
							</p>
							<br />
							<p>
								<span class="l"> 选择分类:&nbsp;</span>
								<s:action name="category!list" id="categoryList"
									executeResult="false" />
								<select name="categoryId">
									<s:iterator value="%{#categoryList.categories}"
										status="rowStatus">
										<option value="${id}"
											<c:if test="${view.blog.category.id==id}">selected="selected"</c:if>>
											${name}
										</option>
									</s:iterator>
								</select>
							</p>
							<p>
								<span class="l">内&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;容:&nbsp;</span>
								<span class="l"><textarea id="ke-text" class="textarea text-input validate['required']"
										name="blog.content" style="width: 600px; height: 300px;">${view.blog.content}</textarea>
								</span>
							</p>
							<p style="width: 640px; text-align: center;">
								<input type="submit" class="botton" value="修改"
									onmouseout="this.className='botton';"
									onmouseover="this.className='botton2';" />
								<input type="button" class="botton_close1" value="取消"
									onmouseout="this.className='botton_close1';"
									onmouseover="this.className='botton_close2';"
									onclick="javascript:history.back();" />
							</p>
						</s:form>
					</div>
					</div>
				</div>

			</div>
		</div>
</body>

