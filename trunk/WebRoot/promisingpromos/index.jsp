<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<s:action name="info!browse" id="view" executeResult="false">
	<s:param name="query.url">home</s:param>
	<s:param name="query.website">promisingpromos</s:param>
</s:action>
<head>
<title>${view.info.title}</title>
<meta name="keywords" content="${view.info.title}" />
<meta name="description" content="${view.info.title}" />
</head>
<body>
	<c:set var="current">index</c:set>
	<section>
		<%@ include file="common/header.jsp"%>
		<div class="w1000 pt10 clearfix">
			<%@ include file="include/left.jsp"%>
			<div class="main fr">
				<div class="banner">
					<ul class="index_banner">
						<li><a href=""><img src="images/banner01.jpg" />
						</a>
						</li>
						<li><a href=""><img src="images/banner02.jpg" />
						</a>
						</li>
					</ul>
				</div>
				<s:action name="product!search" id="products" executeResult="false" >
					<s:param name="query.website">promisingpromos</s:param>
					<s:param name="query.enabled">true</s:param>
					<s:param name="query.pagesize">20</s:param>
					<s:param name="query.order">addTime</s:param>
					<s:param name="query.desc">true</s:param>
				</s:action>
				<ul class="product clearfix yahei">
					<s:iterator value="%{#products.products}" status="rowStatus" var="product">
						<li>
							<a href="http://www.promisingpromos.com/product/view/${id}"> <img src="${product.img}!small.jpg" title="${name}"/>
								<p>
									<span class="name str">${util:preview(name,15)}</span><br> Item# ${code}<br>
									As low as <span class="price str">$${price}</span>
								</p>
							</a>
						</li>
					</s:iterator>
				</ul>
			</div>
		</div>
	</section>
</body>