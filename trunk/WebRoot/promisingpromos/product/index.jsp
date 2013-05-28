<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<s:action name="info!browse" id="view" executeResult="false">
	<s:param name="query.url">productindex</s:param>
	<s:param name="query.website">promisingpromos</s:param>
</s:action>
<head>
<title>${view.info.title }</title>
<meta name="keywords" content="${view.info.title }" />
<meta name="description" content="${view.info.title }" />
</head>
<body>
	<c:set var="current">product</c:set>
	<section>
		<%@ include file="../common/header.jsp"%>
		<div class="w1000 pt10 clearfix">
			<%@ include file="../include/left.jsp"%>
			<div class="main fr">
				<div class="crumbnav yahei">
					<a href="http://www.promisingpromos.com/">Home</a> > <a href="http://www.promisingpromos.com/product/">${view.info.title}</a>

				</div>
				<s:action name="product!list" id="products" executeResult="false" />
				<ul class="product clearfix yahei">
					<s:iterator value="%{#products.products}" status="rowStatus" var="product">
						<li><a href="http://www.promisingpromos.com/product/view/${id}"> <img src="${product.img}!small.jpg" />
								<p>
									<span class="name str">${name}</span><br> Item# ${code }<br>
									As low as <span class="price str">$${price}</span>
								</p> </a></li>
					</s:iterator>
				</ul>
			</div>
		</div>
	</section>
</body>