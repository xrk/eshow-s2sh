<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="title">产品类型管理</c:set>
<c:set var="title1">产品类型添加</c:set>
<head>
<title>添加产品分类</title>
<link rel="stylesheet"
	href="<c:url value='/admin/styles/productCategory.css'/>"
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
		new FormCheck('productCategoryForm');
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
					<li><a href="${ctx}/admin/productType/">${title}</a> <span
						class="divider">/</span>
					</li>
					<li class="active">${title1}</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/productCategory/add'/>"
								class="btn btn-primary">添加</a>
						</div>
						<h3 class="yahei">产品类型添加</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li><a data-toggle="tab"
							href="<c:url value='/admin/product'/>"> 产品列表</a>
						</li>
						<li class="active"><a data-toggle="tab"
							href="<c:url value='/admin/productCategory'/>"> 产品分类</a>
						</li>
					</ul>

					<form class="form-horizontal" id="productCategoryForm"
						action="productCategory!save.html" method="post">
						<div class="control-group">
							<label class="control-label" for="input01">分类名称</label>
							<div class="controls">
								<input type="text" class="input-xlarge"
									name="productCategory.name"></span><span class="t"><font
									color="red">*</font>必填</span>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="textarea">产品描述</label>
							<div class="controls">
								<textarea class="input-xlarge" id="textarea" rows="3"
									name="productCategory.description"></textarea>
								<span class="t"><font color="red">*</font>必填</span>
							</div>
						</div>
						<div class="form-actions">
							<button type="submit" class="btn btn-primary">保存</button>
							<button class="btn">取消</button>
						</div>
					</form>
					<div class="c"></div>
				</div>
			</div>
		</div>
	</div>
</body>

