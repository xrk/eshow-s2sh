<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><decorator:title /></title>
<%@ include file="/common/style/bootstrap.jsp"%>
<link href="${dll}/styles/style.css" rel="stylesheet" />
<%@ include file="/common/jquery.jsp"%>
<decorator:head />
</head>
<body
	<decorator:getProperty property="body.id" writeEntireProperty="true"/>
	<decorator:getProperty property="body.class" writeEntireProperty="true"/>>
	<div class="navbar navbar-static-top" id="main-nav">
		<div class="navbar-inner">
			<div class="container">
				 <a class="brand yahei" href="${ctx}/" title="Fleetio homepage"> 网站用户系统
				</a>
				<div class="pull-right">
					<a class="btn btn-inverse" href="${ctx}/user/login" title="Log in to Fleetio">登陆</a>
				</div>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li class=""><a href="${ctx}/">首页</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<decorator:body />
	<footer class="footer container">
		<p class="center">
			Copyright © 2009-2013 www.daoqun.com All rights reserved.
			&nbsp;&nbsp;&nbsp;&nbsp;合作伙伴： <a href="http://www.daoqun.net"
				target="_blank">帮趣网</a>
		</p>
	</footer>
</body>
</html>
