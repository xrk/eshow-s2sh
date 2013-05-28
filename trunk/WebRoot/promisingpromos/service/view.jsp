<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<s:action name="info!browse" id="serviceview" executeResult="false">
	<s:param name="query.url">serviceview</s:param>
	<s:param name="query.website">promisingpromos</s:param>
</s:action>
<s:action name="product!view" id="view" executeResult="false" />
<head>
<title>${serviceview.info.title }</title>
<meta name="keywords" content="${serviceview.info.title }" />
<meta name="description" content="${serviceview.info.title }" />
</head>
<body>
	<c:set var="current">service</c:set>
	<section>
		<%@ include file="../common/header.jsp"%>
		<div class="w1000 pt10 clearfix">
			<%@ include file="../include/left.jsp"%>
			<div class="main fr">
				<div class="crumbnav yahei">
					<a href="http://www.promisingpromos.com/">Home</a> > <a
						href="http://www.promisingpromos.com/service/">${serviceview.info.title}</a>
				</div>
				<s:action name="service!view" id="serviceview">
				</s:action>
				<div class="text clearfix yahei">
					<div class="text-c">
						<p>
							${serviceview.service.id}.&nbsp; <a
								href="http://www.promisingpromos.com/service/view/${serviceview.service.id}">${serviceview.service.title}</a>
						</p>
						${serviceview.service.content}
					</div>
				</div>
			</div>
		</div>
	</section>
</body>