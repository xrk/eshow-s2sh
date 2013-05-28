<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<s:action name="info!browse" id="productview" executeResult="false">
	<s:param name="query.url">productview</s:param>
	<s:param name="query.website">promisingpromos</s:param>
</s:action>
<s:action name="product!view" id="view" executeResult="false" />
<head>
<title>${productview.info.title }</title>
<meta name="keywords" content="${productview.info.title }" />
<meta name="description" content="${productview.info.title }" />
</head>
<body>
	<c:set var="current">product</c:set>
	<section>
		<%@ include file="../common/header.jsp"%>
		<div class="w1000 pt10 clearfix">
			<%@ include file="../include/left.jsp"%>
			<div class="main fr">
				<div class="crumbnav yahei">
					<a href="http://www.promisingpromos.com/">Home</a> > <a
						href="http://www.promisingpromos.com/product/">${productview.info.title}</a>
				</div>
				<div class="view clearfix yahei">
					<div class="v-pic fl">
						<img src="${view.product.img}!middle.jpg">
					</div>
					<div class="v-unit fr yahei">
						<ul class="clearfix">
							<li>GET A SAMPLE</li>
							<li>PRINT SPECS</li>
							<li>ADD TO WISH LIST</li>
							<li>EMAIL A FRIEND</li>
						</ul>
						<div class="pcs">
							<a href="">Quantity(pcs)</a> <a href="">Unit Price($)</a>
						</div>

					</div>
				</div>
				<dl class="v-info yahei">
					<dt>${view.product.name } (${view.product.code })</dt>
					<dd>
						<span class="tit">PRICE :</span> <span class="cc">$${view.product.price}</span>
					</dd>
					<dd>${view.product.content }</dd>
				</dl>
			</div>
		</div>
	</section>
</body>