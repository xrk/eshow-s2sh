<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="info!browse" id="view" executeResult="false">
	<s:param name="query.url">contact</s:param>
	<s:param name="query.website">promisingpromos</s:param>
</s:action>
<head>
<title>${view.info.title}</title>
<meta name="keywords" content="${view.info.title}" />
<meta name="description" content="${view.info.title}" />
</head>
<body>
	<c:set var="current">contact</c:set>
	<section>
		<%@ include file="common/header.jsp"%>
		<div class="w1000 pt10 clearfix">
			<%@ include file="include/left.jsp"%>
			<div class="main fr">
				<div class="crumbnav yahei">
					<a href="">Home</a> > <a href="${view.info.url}">${view.info.url}</a>
				</div>
				<div class="text clearfix yahei">
					<h1>${view.info.title}</h1>
					<div class="text-c">
						<p class="t-c">
							<img src="http://www.promisingpromos.com/images/bud.jpg" />
						</p>
						${view.info.content}</a>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>