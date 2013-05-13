<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<head>
	<%@ include file="../common/website.jsp"%>
	<title>${viewinfo.info.title}</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/product.css'/>"
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
			new FormCheck('productForm');
		});
    </script>
</head>
<body>${viewinfo.info.title}
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li><a href="${ctx}/admin/product/">产品管理</a> <span
						class="divider">/</span></li>
					<li class="active">${viewinfo.info.title }</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/product/add'/>" class="btn btn-primary">添加</a>
						</div>
						<h3 class="yahei">产品添加</h3>
					</div>
					<div id="mainTab">
						<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="<c:url value='/admin/product'/>"> 产品列表</a></li>
						<li><a data-toggle="tab" href="<c:url value='/admin/productCategory'/>"> 产品分类</a></li>
					</ul>
					</div>
					<div id="productEdit">
						<form class="form-horizontal" id="productForm" action="product!save" method="post"
							enctype="multipart/form-data">
							<fieldset>
								<div class="control-group">
									<label class="control-label" for="input01">产品名称</label>
									<div class="controls">
										<input type="text" class="input-xlarge" name="product.name">
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="select01">产品分类</label>
									<div class="controls">
										<s:action name="product-category!search"
											id="productCategoryList" executeResult="false" />
										<select id="productCategoryId" name="productCategoryId">
											<s:iterator value="%{#productCategoryList.productCategories}"
												status="rowStatus">
												<option value="${id}">${name}</option>
											</s:iterator>
										</select>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="input01">选择图片</label>
									<div class="controls">
										<input type="file" class="input-xlarge" name="product.img"
											id="password">
										<p style="margin-top: 10px; color: #999;">图片大小不能超过2M，支持
											.jpeg .jpg .gif .bmp .png 格式</p>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="textarea">信息内容</label>
									<div class="controls">
										<textarea class="input-xlarge" id="textarea" rows="3"
											style="width: 600px; height: 300px;" name="product.content">${view.product.content}</textarea>
									</div>
								</div>
								<div class="form-actions">
									<button type="submit" class="btn btn-primary">添加</button>
									<button class="btn">取消</button>
								</div>
							</fieldset>
							<script language="javascript">
								$(document).addEvent(function() {
									window.onbeforeunload = function() {
										if (getContentLength() > 0) {
											return "文章还没发表，离开将丢失当前的内容";
										}
									};
								});
							</script>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

