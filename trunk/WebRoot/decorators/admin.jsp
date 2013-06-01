<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="/common/taglibs.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" href="" />
<link href="${dll}/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="${dll}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link rel="stylesheet" href="${ctx}/admin/styles/styleadmin.css" />
<script src="${dll}/bootstrap/js/jquery-1.9.1.min.js"></script>
<script src="${ctx}/admin/scripts/admin.js"></script>
<script src="${dll}/bootstrap/js/bootstrap-carousel.js"></script>
<decorator:head />
</head>
<body
	<decorator:getProperty property="body.id" writeEntireProperty="true"/>
	<decorator:getProperty property="body.class" writeEntireProperty="true"/>>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand yahei" href="${ctx}/admin/index">网站管理平台</a>
				<div class="nav-collapse">
					<ul class="nav">
						<li class="active"><a href="${ctx}/admin/index">首 页</a>
						</li>
						<li class=""><a href="${ctx}/">返回前台</a>
						</li>
					</ul>
					<p class="navbar-text pull-right">
						欢迎： <a href="" class="navbar-link"><span> <security:authentication
									property="principal.realname" /> </span>
						</a>&nbsp;&nbsp; <a href="" class="navbar-link">退出</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<decorator:body />
	<div class="footer">
		<footer class="container">
		<p align="center">
			无锡到群软件科技有限公司技术支持 <br> 苏ICP备10018847号 Copyright 2009-2013© daoqun.com Inc. All rights reserved 
		</p>
		</footer>
	</div>
</body>
</html>
