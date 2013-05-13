<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<head>
	<title>产品</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/product.css'/>" type="text/css" />
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li><a href="${ctx}/admin/product/">产品管理</a> <span class="divider">/</span></li>
					<li class="active">产品列表</li>
				</ul>

				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/product/add'/>" class="btn btn-primary">添加</a>
						</div>
						<h3 class="yahei">产品列表</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="<c:url value='/admin/product'/>"> 产品列表</a></li>
						<li><a data-toggle="tab" href="<c:url value='/admin/productCategory'/>"> 产品分类</a></li>
					</ul>


					<div id="celebrityList">
						<s:action name="product!search" id="productList"
							executeResult="false">
							<s:param name="query.order">addTime</s:param>
							<s:param name="query.desc">true</s:param>
						</s:action>
						<ul>
							<s:iterator value="%{#productList.products}" status="rowStatus">
								<li class="list"
									onmouseover="this.style.backgroundColor='#f9f9f9';"
									onmouseout="this.style.backgroundColor='#ffffff';"
									id="product${id}">
									<div class="box">
										<div class="avatar">
										<c:if test="${photo == null}">
											<img  src="${pageContext.request.contextPath}/images/base/user50-50.jpg"
													  alt="${nickname}" width="50" height="50" />
										</c:if>
										<c:if test="${photo != null}">
											<a href="<c:url value='product/view/${id}'/>"><img
													src="${pageContext.request.contextPath}/upload/product/<s:date name='%{addTime}' format='yyyyMMdd' />/${img}"
													width="50" height="50" /> </a>
										</c:if>
										</div>
										<div class="name">
											<a href="/StockMatch/Stock?MatchId=2&uid=100397">${user.username}</a>
										</div>
									</div>
									<div class="list_content">
										<div>
											名称：
											<span class="c333">${name}</span>
										</div>
										<div class="time">
											分类:
											<c:if test="${productCategory.name == null}">
											默认类&nbsp;&nbsp;|&nbsp;&nbsp;
											</c:if>
											<c:if test="${productCategory.name != null}">
											${productCategory.name}&nbsp;&nbsp;|&nbsp;&nbsp;
											</c:if>
											${user.username}&nbsp;&nbsp;发表于
											<s:date name='%{addTime}' format='yyyy-MM-dd HH:mm:ss' />
											
										</div>
										<div class="tips">
											<a href="<c:url value='/admin/product/edit/${id }'/>">修改</a>
											&nbsp;&nbsp;|&nbsp;&nbsp;
											<a href="<c:url value='/product!delete.action?id=${id}'/>"
												onclick="return deleteData('product',${id});">删除</a>
										</div>

										<div class="contxt">
											${util:preview(content,100)}
											<p class="r">
												<a href="<c:url value='/admin/product/view/${id}'/>">查看全文</a>
											</p>
										</div>
									</div>
								</li>
							</s:iterator>
						</ul>
						<div class="c"></div>
						<%@ include file="/common/page.jsp"%>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>

