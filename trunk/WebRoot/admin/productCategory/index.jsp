<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<head>
	<title>产品分类</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/productCategory.css'/>" type="text/css" />
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<s:include value="../title.jsp"></s:include>

				<div class="well com">
					<div class="page-header">
						<h3 class="yahei">产品</h3>
					</div>
					<div id="celebrityList">
						<div id="securitiesGroup">
							<s:action name="productCategory!list" id="productCategoryList"
								executeResult="false"/>
							<ul>
								<li style="color: #666; line-height: 14px; background: #f1f1f1;">
									<span class="l">分类名称</span><span class="l">备注</span><span class="l">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;搜索</span>
								</li>
								
								<s:iterator value="%{#productCategoryList.productCategories}"
									status="rowStatus">
									<li id="productCategory${id}"
										onmouseover="this.style.backgroundColor='#f9f9f9';"
										onmouseout="this.style.backgroundColor='#ffffff';">
										<span class="l" style="font-size: 14px;">${name }</span><span
											class="l c999">${description }</span>
											<span class="r del"><a href="<c:url value='product/c/${id}'/>">进入</a></span>
											<span
											class="r setting"><a
											href="<c:url value='/admin/productCategory/edit/${id}'/>">修改</a> </span>
										<span class="r del"> <a href="javascript:void(0);"
											onclick="return deleteData('productCategory',${id});">删除</a> </span>
									</li>
								</s:iterator>
							</ul>
						</div>
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
							<img src="<c:url value='/admin/images/app_list_product.gif'/>" />
							产品
						</h2>
					</div>
					
				</div>
				<div class="c"></div>
			</div>
		</div>
	</div>
</body>

