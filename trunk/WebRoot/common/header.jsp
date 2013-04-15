<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ include file="/common/taglibs.jsp"%>
<%-- Put constants into request scope --%>
<appfuse:constants scope="request"/>
<div class="navbar navbar-static-top" id="main-nav">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-target=".nav-collapse"
				data-toggle="collapse"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span> </a> <a
				class="logo" href="${ctx}/" title="Fleetio homepage"> <img alt="logo"
				width="155" height="22" src="${ctx }/images/logo.png" />
			</a>
			<div class="pull-right">
				<a class="btn btn-inverse" href=" " title="Log in to Fleetio">
					登陆 </a>
			</div>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li class=""><a href="${ctx}/">首页</a></li>
					<li class=""><a href="${ctx}/demo/">案例</a></li>
					<li class=""><a href="${ctx}/blog/">开发日志</a></li>
					<li class=""><a href="${ctx}/topic/">讨论区</a></li>
					<li class=""><a href="${ctx}/twitter/">微博</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>