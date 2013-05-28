<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="info!browse" id="view" executeResult="false">
	<s:param name="query.url">service</s:param>
	<s:param name="query.website">promisingpromos</s:param>
</s:action>
<head>
<c:set var="current">service</c:set>
<title>${view.info.title}</title>
<meta name="keywords" content="${view.info.title}" />
<meta name="description" content="${view.info.title}" />
</head>
<body>
	<section>
		<%@ include file="../common/header.jsp"%>
		<div class="w1000 pt10 clearfix">
			<%@ include file="../include/left.jsp"%>
			<div class="main fr">
				<div class="crumbnav yahei">
					<a href="http://www.promisingpromos.com/">Home</a> > <a
						href="${view.info.url}/">${view.info.url}</a>
				</div>
				<div class="text clearfix yahei">
					<h1>${view.info.title}</h1>
					<div class="text-c">
						${view.info.content}
						<s:action name="service!list" id="services" />
						<s:iterator value="%{#services.services}">
							<p>
								${id}.&nbsp; <a
									href="http://www.promisingpromos.com/service/view/${id}">${title}</a>
							</p>
						</s:iterator>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>