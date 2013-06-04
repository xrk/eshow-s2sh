<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="info!browse" id="view" executeResult="false">
	<s:param name="query.url">about</s:param>
	<s:param name="query.website">promisingpromos</s:param>
</s:action>
<head>
<title>${view.info.title}</title>
<meta name="keywords" content="${view.info.title}" />
<meta name="description" content="${view.info.title}" />
</head>
<body>
	<section>
		<c:set var="current">about</c:set>
		<%@ include file="common/header.jsp"%>
		<div class="w1000 pt10 clearfix">
			<%@ include file="include/left.jsp"%>
			<div class="main fr">
				<div class="crumbnav yahei">
					<a href="http://www.promisingpromos.com/">Home</a> > <a href="http://www.promisingpromos.com/${view.info.url}">${view.info.title}</a>
				</div>
				<div class="text clearfix yahei">
					<h1>${view.info.title}</h1>
					<div class="text-c">
						${view.info.content}
					</div>
				</div>
			</div>
		</div>
	</section>
</body>