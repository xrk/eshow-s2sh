<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<div class="span2">
      <ul class="nav nav-list well">
      	<li class="nav-header">交流管理</li>
        <li><a href="${ctx}/admin/twitter"><i class="icon-leaf"></i>  微博客</a></li>
        <li><a href="${ctx}/admin/blog"><i class="icon-pencil"></i>  日志</a></li>
        <li><a href="${ctx}/admin/topic"><i class="icon-list"></i>  讨论区</a></li>
        <li class="nav-header">图片管理</li>
        <li><a href="${ctx}/admin/album"><i class="icon-file"></i>  相册</a></li>
        <li><a href="${ctx}/admin/photo"><i class="icon-picture"></i>  图片</a></li>
        <li class="nav-header">内容管理</li>
        <li><a href="${ctx}/admin/product"><i class="icon-share"></i>  产品</a></li> 
        <li><a href="${ctx}/admin/service"><i class="icon-hand-right"></i>  服务</a></li>
		<li><a href="${ctx}/admin/info"><i class="icon-book"></i>  信息页</a></li>
        <li class="nav-header">系统管理</li>
        <li><a href="${ctx}/admin/user"><i class="icon-user"></i>  用户</a></li>
	</ul>
</div>

