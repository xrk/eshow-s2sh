<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="/common/taglibs.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="icon" href="<c:url value="/images/favicon.ico"/>" />
		<title><decorator:title />_EShow开源框架</title>
		<script type="text/javascript" src="<c:url value='/scripts/base.js'/>"></script>
		<%@ include file="/common/scripts.jsp"%>
		<link rel="stylesheet" href="<c:url value='/styles/index.css'/>"
			type="text/css" />
		<decorator:head />
	</head>
	<body
		<decorator:getProperty property="body.id" writeEntireProperty="true"/>
		<decorator:getProperty property="body.class" writeEntireProperty="true"/>>
        <div class="w980 header">
              <div class="logo left"> <a href="<c:url value='/'/>" title="返回首页"><img
									src="<c:url value='/images/logo.png'/>" width="230" height="50"
									border="0" alt="返回首页" /> </a> <span style="font-size: 18px;">1.0</span>
							<span style="color: #666; font-size: 14px;">正式版</span>
                   </div>
                   <ul class="nav left">
                   		<li><a href="<c:url value='/info/about'/>" style="width: 40px;">关于</a></li>
                       <li><a href="<c:url value='/topic'/>"  style="width: 47px;">讨论区</a></li>
						<li>	<a href="<c:url value='/blog'/>"  >开发日志</a></li>
							<li><a href="<c:url value='/twitter'/>"  style="width: 47px;">微博</a></li>
							<li><a href="<c:url value='/'/>"  style="width: 40px;">首页</a></li>
                   </ul>   
                   <div class="nav_r"><c:if test="${pageContext.request.remoteUser == null}">
								<a href="<c:url value="/login"/>" class="lnk2"
									style="width: 35px;">登录</a>&nbsp;|&nbsp;
									<a href="<c:url value="/signup"/>" class="lnk2"
									style="width: 35px;">注册</a>
							</c:if>
							<c:if test="${pageContext.request.remoteUser != null}">
									欢迎：<a href="<c:url value='/user/'/>" class="lnk2"><authz:authentication
										operation="nickname" /> </a>
								<a href="<c:url value='/logout'/>" class="lnk2"
									style="width: 35px;">退出</a>
							</c:if></div>              
                                    
				
			
			<decorator:body />
			<div id="foot" class="w980">
				<p>
					ICP备案编号：苏ICP备10018847号
				</p>
				<ul class="pipe">
					<li class="fst">
						<a href="<c:url value='/info/about'/>">关于</a>
					</li>
					<li>
						<a href="<c:url value='/info/team'/>">团队成员</a>
					</li>
					<li>
						<a href="<c:url value='/info/feedback'/>">汇报Bug</a>
					</li>
					<li>
						<a href="<c:url value='/info/donate'/>">捐助开发</a>
					</li>
					<li>
						<a href="<c:url value='/info/svn'/>">源码</a>
					</li>
					<li>
						<a href="<c:url value='/info/joinus'/>">加入我们</a>
					</li>
					<li>
						<a href="<c:url value='/info/link'/>">友情链接</a>
					</li>
					<li>
						<a href="<c:url value='/info/history'/>">更多版本</a>
					</li>
				</ul>
				<img src="<c:url value='/images/0.gif'/>" width="980" height="1"
					style="background: #d0d0d0;" />
				<p>
					Copyright &copy; 2009 www.eshow.org.cn All rights reserved.
					&nbsp;&nbsp;&nbsp;&nbsp;典型案例：
					<a href="http://www.fanbao.cn" target="_blank">翻宝网</a> <a href="http://www.mileshu.com" target="_blank">米乐鼠</a>
					&nbsp;&nbsp;&nbsp;&nbsp;支持公司：
					<a href="http://www.daoqun.net" target="_blank">无锡到群软件科技有限公司 </a>
					&nbsp;&nbsp;&nbsp;&nbsp;开源伙伴：
					<a href="http://www.opensourceforce.org/" target="_blank">开源力量 </a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<script type="text/javascript"
						src="http://js.tongji.linezing.com/1278593/tongji.js"></script>
					<noscript>
						<a href="http://www.linezing.com"><img
								src="http://img.tongji.linezing.com/1278593/tongji.gif" /> </a>
					</noscript>
				</p>
			</div>
		</div>
	</body>
</html>
