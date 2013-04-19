<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<div class="header">
	<a href="./"><img class="logo " src="./images/logo.jpg"> </a>
	<div class="nav fr yahei">
		<a href="./" <c:if test="${current=='index'}">class="hover"</c:if>>首 页</a>
		<a href="bangqu" <c:if test="${current=='bangqu'}">class="hover"</c:if>>帮趣网</a>
		<a href="app" <c:if test="${current=='app'}">class="hover"</c:if>>移动互联网</a>
		<a href="demo" <c:if test="${current=='demo'}">class="hover"</c:if>>产品展示</a>
		<a href="about" <c:if test="${current=='about'}">class="hover"</c:if>>关于我们</a>
	</div>
</div>
