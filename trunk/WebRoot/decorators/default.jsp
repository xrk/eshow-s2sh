<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="/common/taglibs.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页_EShow开源框架</title>
<link href="${ctx}/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="${ctx}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link href="${ctx}/styles/style.css" rel="stylesheet" />
<script src="${ctx}/bootstrap/js/jquery-1.9.1.min.js" />
<script src="${ctx}/bootstrap/js/bootstrap-carousel.js"></script>
<decorator:head />
</head>
<body
	<decorator:getProperty property="body.id" writeEntireProperty="true"/>
	<decorator:getProperty property="body.class" writeEntireProperty="true"/>>
	<%@ include file="/common/header.jsp"%>
	<decorator:body />
	<footer class="footer container">
	<p class="pull-right">
		<a href="#">回到顶端</a>
	</p>


	<p>ICP备案编号：苏ICP备10018847号</p>
	<p class="links">
		<a href="/eshow/about.jsp">关于</a> <a href="/eshow/info/team">团队成员</a>
		<a href="/eshow/info/feedback">汇报Bug</a> <a href="/eshow/info/donate">捐助开发</a>
		<a href="/eshow/info/svn">源码</a> <a href="/eshow/info/joinus">加入我们</a>
		<a href="/eshow/info/link">友情链接</a>
	</p>
	<p>
		Copyright © 2009 www.eshow.org.cn All rights reserved.
		&nbsp;&nbsp;&nbsp;&nbsp;典型案例： <a href="http://www.fanbao.cn"
			target="_blank">翻宝网</a> <a href="http://www.mileshu.com"
			target="_blank">米乐鼠</a> &nbsp;&nbsp;&nbsp;&nbsp;支持公司： <a
			href="http://www.daoqun.net" target="_blank">无锡到群软件科技有限公司 </a>
		&nbsp;&nbsp;&nbsp;&nbsp;开源伙伴： <a
			href="http://www.opensourceforce.org/" target="_blank">开源力量 </a>
		&nbsp;&nbsp;&nbsp;&nbsp;
	</p>
	</footer>
</body>
</html>
