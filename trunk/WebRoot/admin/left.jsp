<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>

<div class="span2">
      <ul class="nav nav-list well">
        <li class="nav-header">店铺管理</li>
        <li><span><a href="<c:url value='/admin/twitter'/>"><img src="<c:url value='/admin/images/app_list_twitter.gif'/>"> 微博客</a>
        <em><a href="<c:url value='/admin/twitter/add'/>"> 发表</a></em></span></li>
        <li><span><a href="<c:url value='/admin/blog'/>"><img src="<c:url value='/admin/images/app_list_blog.gif'/>"> 日志</a>
        <em><a href="<c:url value='/admin/blog/add'/>"> 发表</a></em></span></li>
        <li><span><a href="<c:url value='/admin/album'/>"><img src="<c:url value='/admin/images/app_list_album.gif'/>"> 相册</a>
         <em><a href="<c:url value='/admin/photo/add'/>"> 上传图片</a> </em></span></li>
        <li><span><a href="<c:url value='/admin/topic'/>"><img src="<c:url value='/admin/images/app_list_topic.gif'/>"> 讨论区</a></span></li>
        <li><span><a href="<c:url value='/admin/product'/>"><img src="<c:url value='/admin/images/app_list_product.gif'/>"> 产品</a></span></li>
        <li><span><a href="<c:url value='/admin/service'/>"><img src="<c:url value='/admin/images/app_list_service.gif'/>"> 服务</a></span></li>
        <li><span><a href="<c:url value='/admin/info'/>"><img src="<c:url value='/admin/images/app_list_info.gif'/>"> 信息页</a></span></li>
        <li class="nav-header">
        <a href="<c:url value='/admin/user'/>"><img src="<c:url value='/admin/images/app_list_user.gif'/>"> 用户管理</a></li>
        <li><a href="<c:url value='/admin/user'/>"><i class="icon-book"></i> 用户列表</a></li>
        <li><a href="<c:url value='/admin/user/edit'/>"><i class="icon-th"></i> 修改资料</a></li>
        <li><a href="<c:url value='/admin/user/password'/>"><i class="icon-user"></i> 修改密码</a></li>
        <li><a href="<c:url value='/admin/user/setphoto'/>"><i class="icon-user"></i> 修改头像</a></li>
        <li><a href="<c:url value='/admin/user/add'/>"><i class="icon-user"></i> 添加用户</a></li>
        
        <li class="nav-header"><a href="<c:url value='/admin/service'/>"><img src="<c:url value='/admin/images/app_list_system.gif'/>"> 服务管理</a></li>
        <li><a href="<c:url value='/admin/service'/>"><i class="icon-picture"></i> 服务列表</a></li>
        <li><a href="<c:url value='/admin/serviceType'/>"><i class="icon-flag"></i> 服务类型</a></li>
        <li><a href="<c:url value='/admin/service/add'/>"><i class="icon-flag"></i> 添加服务</a></li>
        
        <li class="nav-header"><a href="<c:url value='/admin/topic'/>"><img src="<c:url value='/admin/images/app_list_system.gif'/>"> 讨论区管理</a></li>
        <li><a href="<c:url value='/admin/topic/audit'/>"><i class="icon-picture"></i> 未审核</a></li>
        <li><a href="<c:url value='/admin/topic/mine'/>"><i class="icon-flag"></i> 我发表的话题</a></li>
        <li><a href="<c:url value='/admin/topic/replied'/>"><i class="icon-flag"></i> 我参与的话题</a></li>
        <li><a href="<c:url value='/admin/board'/>"><i class="icon-picture"></i> 话题板块</a></li>
        <li><a href="<c:url value='/admin/topic/add'/>"><i class="icon-flag"></i> 发表话题</a></li>
        
        <li class="nav-header"><a href="<c:url value='/admin/service'/>"><img src="<c:url value='/admin/images/app_list_system.gif'/>"> 系统管理</a></li>
        <li><a href="href="<c:url value='/admin/system'/>"><i class="icon-picture"></i> 网络参数</a></li>
        <li><a href=""><i class="icon-flag"></i> 角色管理</a></li>
        <li><a href="<c:url value='/admin/thumb'/>"><i class="icon-flag"></i> 缩略图</a></li>
        <li><a href="<c:url value='/admin/app'/>"><i class="icon-flag"></i> 组件管理</a></li>
        
        <li class="nav-header"><a href="<c:url value='/admin/product'/>"><img src="<c:url value='/admin/images/app_list_system.gif'/>"> 产品管理</a></li>
         <li><a href="<c:url value='/admin/product'/>"><i class="icon-picture"></i> 产品列表</a></li> 
        <li><a href="<c:url value='/admin/productCategory'/>"><i class="icon-flag"></i> 产品分类</a></li>
        <li><a href=""><i class="icon-flag"></i> 产品详细</a></li>
        <li><a href="<c:url value='/admin/product/add'/>"><i class="icon-flag"></i> 添加产品</a></li>
		
		<li class="addapp"><a href="<c:url value='/admin/app/add'/>">添加组件</a>
		</li>
		<li class="setapp"><a href="<c:url value='/admin/app'/>">管理组件</a>
		</li>
	</ul>
</div>

