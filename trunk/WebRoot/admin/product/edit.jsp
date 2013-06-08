<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="../common/website.jsp"%>
<s:action name="product!view" id="view" executeResult="false" />
<head>
<title>修改产品</title>
<%@ include file="/common/ueditor.jsp"%>
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li><a href="${ctx}/admin/product/">产品管理</a> <span
						class="divider">/</span>
					</li>
					<li class="active">产品修改</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="${ctx}/admin/product/add"
								class="btn btn-primary">添加</a>
						</div>
						<h3 class="yahei">产品列表</h3>
					</div>
					<div id="mainTab">
						<ul id="myTab" class="nav nav-tabs">
							<li class="active"><a data-toggle="tab"
								href="${ctx}/admin/product"> 产品列表</a>
							</li>
							<li><a data-toggle="tab"
								href="${ctx}/admin/productCategory"> 产品分类</a>
							</li>
						</ul>
					</div>
					<s:form cssClass="form-horizontal" action="product!update" id="productForm" method="post" enctype="multipart/form-data">
						<s:hidden name="id" value="%{#view.product.id}"></s:hidden>
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="name">产品名称</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="name" name="product.name" value="${view.product.name}">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="select01">产品分类</label>
								<div class="controls">
									<s:action name="product-category!list" id="productCategoryList" executeResult="false">
									</s:action>
									<select id="productCategoryId" name="productCategoryId">
										<option id="">无</option>
										<s:iterator value="%{#productCategoryList.productCategories}" status="rowStatus">
											<option value="${id}" <c:if test="${view.product.productCategory.id==id}">selected="selected"</c:if>>
												${name}
											</option>
										</s:iterator>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="code">产品型号</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="code" name="product.code" value="${view.product.code}">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="price">产品价格</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="price" name="product.price" value="${view.product.price}"> 数字
								</div>
							</div>
							<div class="control-group">
									<label class="control-label" for="unit">计量单位</label>
									<div class="controls">
										<input type="text" class="input-xlarge" id="unit" name="product.unit" value="${view.product.unit}">
									</div>
								</div>
							<div class="control-group">
								<label class="control-label" for="file">选择图片</label>
								<div class="controls">
									<input type="file" class="input-xlarge" name="file" id="file" >
									<p>
										<c:if test="${view.product.img != null}">
											<img class="img-rounded" src="${view.product.img}!small.jpg" />
										</c:if>
									</p>
									<p style="margin-top: 10px; color: #999;">图片大小不能超过2M，支持
										.jpeg .jpg .gif .bmp .png 格式</p>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="textarea">产品描述</label>
								<div class="controls">
									<textarea id="content" name="product.content" class="content">${view.product.content}</textarea>
									<script type="text/javascript">
										var editorOption = {
											toolbars : [ [ 'Bold', 'underline',
													'forecolor', 'Undo',
													'Redo', 'insertimage',
													'link', 'unlink',
													'justifyleft',
													'justifycenter',
													'justifyright',
													'insertunorderedlist',
													'insertorderedlist', '|',
													'AutoTypeSet',
													'FormatMatch',
													'RemoveFormat', '|',
													'highlightcode', 'Source',
													'FullScreen' ] ],
											wordCount : false,
											initialContent : '',
											elementPathEnabled : false,
											minFrameHeight : 341,
											maxInputCount : 20
										};
										var _editor = new baidu.editor.ui.Editor(
												editorOption);
										_editor.render('content');
									</script>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">修改</button>
								<button class="btn">取消</button>
							</div>
						</fieldset>
					</s:form>
				</div>
			</div>
		</div>
	</div>
</body>

