<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="/common/taglibs.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" href=" " />
<title>首页_街区淘管理</title>
<link href="${ctx}/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="${ctx}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link rel="stylesheet" href="${ctx}/admin/styles/styleadmin.css" />
<script src="${ctx}/admin/bootstrap/js/jquery-1.9.1.min.js"></script>
<script src="${ctx}/admin/bootstrap/js/bootstrap-carousel.js"></script>
<decorator:head />
</head>
<body
		<decorator:getProperty property="body.id" writeEntireProperty="true"/>
		<decorator:getProperty property="body.class" writeEntireProperty="true"/>>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">

				<a class="brand" href="./index.html">Bootstrap</a>
				<div class="nav-collapse">
					<ul class="nav">
						<li class="active"><a href="./index.html">概述</a></li>
						<li class=""><a href="./scaffolding.html">框架</a></li>
						<li class=""><a href="./base-css.html">基础CSS</a></li>
						<li class=""><a href="./components.html">组件</a></li>
						<li class=""><a href="./javascript.html">Javascript插件</a></li>
						<li class=""><a href="./less.html">使用LESS</a></li>
						<li class="divider-vertical"></li>
						<li class=""><a href="./download.html">定制</a></li>
						<li class=""><a href="./examples.html">例子</a></li>
						<li class=""><a href="./wrongway.html">译者言</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<decorator:body />
	<div class="footer">
		<footer class="container">
		<p align="center">
			无锡圆周率网络科技有限公司版权所有 <br> 苏ICP备12072352号Copyright2012© jiequtao.com
				Inc. All rights reserved
		</p>
		</footer>
	</div>

</body>
</html>
