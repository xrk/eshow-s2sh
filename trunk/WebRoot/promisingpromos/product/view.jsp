<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<s:action name="product!view" id="view" executeResult="false" />
<head>
<title>${view.product.name}</title>
<meta name="keywords" content="${view.product.name}" />
<meta name="description" content="${view.product.name}" />
</head>
<body>
	<section>
		<c:set var="current">product</c:set>
		<%@ include file="../common/header.jsp"%>
		<div class="w1000 pt10 clearfix">
			<%@ include file="../include/left.jsp"%>
			<div class="main fr">
				<div class="crumbnav yahei">
					<a href="http://www.promisingpromos.com/">Home</a> > 
					<a href="http://www.promisingpromos.com/product/">Products</a> > 
					<a href="http://www.promisingpromos.com/product/category/${view.product.productCategory.id}">${view.product.productCategory.name}</a> > 
					<a href="http://www.promisingpromos.com/product/view/${view.product.id}">${view.product.name}</a>
				</div>
				<div class="view clearfix yahei">
					<div class="v-pic fl">
						<img src="${view.product.img}!middle.jpg">
					</div>
					<div class="v-unit fr yahei">
						<ul class="clearfix">
							<li><a href="javascript:;" onclick="javascript:window.print();" style="color:#fff">PRINT SPECS</a></li>
						</ul>
						<div class="pcs">
							<a href="javascript:;">CODE : ${view.product.code }</a> <a href="javascript:;">As low as : ${view.product.price}$</a>
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