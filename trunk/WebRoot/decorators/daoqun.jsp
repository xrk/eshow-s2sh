<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><decorator:title />_到群软件</title>
<link rel="stylesheet" href="./styles/style.css" />
<decorator:head />
</head>
<body
	<decorator:getProperty property="body.id" writeEntireProperty="true"/>
	<decorator:getProperty property="body.class" writeEntireProperty="true"/>>
	<decorator:body />
	<div class="footer">
		<div class="links clearfix">
			<div class="fl">
				到群软件旗下产品： <a href="http://bangqu.com" target="_blank">帮趣网</a> <a
					href="http://baobao.bangqu.com" target="_blank">帮趣宝宝</a> <a
					href="http://www.mileshu.com" target="_blank">米乐鼠</a>
			</div>
			<div class="link fr">
				<a href="about">关于我们</a> | <a href="contact">联系方式</a> | <a
					href="job">加入我们</a>
			</div>
		</div>
		<p class="reser">www.daoqun.com 2009-2013 © All Rights Reserved.</p>
		<p class="icp">苏ICP备10018847号</p>
	</div>
</body>
</html>
