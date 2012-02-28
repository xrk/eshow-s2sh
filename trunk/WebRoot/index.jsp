<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<head>
	<title>首页</title>
	<meta name="description"
		content="采用流行的J2EE轻量级框架（Struts2+Spring+Hibernate），基于国外开源框架Appfuse，我们可以简称Appfuse中文加强版" />
	<meta name="keywords" content="Java框架，Appfuse" />
	<link rel="stylesheet" href="<c:url value='/styles/index.css'/>"
		type="text/css" />
</head>
<body>
	<div id="page-wrapper">
		<div><img src="images/top-hr.png" style="height: 12px; margin-top: 10px; width: 980px;" /></div>
		<table cellspacing="0" cellpadding="0"
			style="background: url(images/bg-body.png) repeat-y top; width: 980px;">
			<tr>
				<td width="2"></td>
				<td valign="top"
					style="background: url(images/bg-sec-12.png) repeat-x top;">
					<br />
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<div style="position: relative">
									<a href="<c:url value='/info/svn'/>"
										style="text-decoration: none;"> <img
											src="images/title-slogn.png" width="625" height="90"
											class="png" style="margin-left: 220px;" border="0" /> </a>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div style="position: relative">
									<img alt="" src="images/ss-main.jpg" width="770" height="300"
										style="margin: 8px auto 0px 100px;" />
								</div>
							</td>
						</tr>
					</table>
					<div id="buckets-list">
						<a href="info/eshow" class="lnk1"><img
								src="images/technology.jpg" class="ftr" /><strong>技术领先</strong><span>
								采用流行的J2EE轻量级框架（Struts2+Spring<br />+Hibernate），基于国外开源框架Appfuse，我们可以简称Appfuse中文加强版…</span>
						</a>
						<a href="info/eshow" class="lnk1"><img src="images/easy.jpg"
								class="ftr" /><strong>简单易用</strong><span>
								Java新手和入门SSH框架着，非常简单，非常易用！</span> </a>
						<a href="info/eshow" class="lnk1"><img src="images/fast.jpg"
								class="ftr" /><strong>快速开发</strong><span>
								使用基于SSH框架的EShow平台，可以快速开发出中小型企业网站和社区门户！</span> </a>
						<a href="info/eshow" target="_blank"
							onclick="return downcounter(3);" class="lnk1"><img
								src="images/opensource.jpg" class="ftr" border="0" /><strong>完全开源</strong><span>
								完全开放EShow的每一个细节！</span> </a>
						<a href="info/eshow" class="lnk1"><img src="images/update.jpg"
								class="ftr" /><strong>更新迅速</strong><span>
								到群软件团队会每一天更新EShow平台，使得EShow越来越好</span> </a>
						<a href="info/eshow" class="lnk1"><img src="images/ideal.jpg"
								class="ftr" /><strong>理想远大</strong><span>
								让EShow平台成为Java入门者的必备学习框架，成为一个流行的J2EE框架</span> </a>
					</div>
				</td>
				<td width="3"></td>
			</tr>
		</table>
		<table cellspacing="0" cellpadding="0"
			style="background: url(images/bg-body.png) repeat-y top; width: 980px;">
			<tr>
				<td width="2"></td>
				<td valign="top"
					style="background: url(images/bg-sec-2nd.png) repeat-x top; padding: 40px 40px;">
					<h3>
						实用性
					</h3>
					<ul>
						<li>
							来自国外
							<span class="dc">Appfuse</span>框架是国外顶尖程序员Matt
							Raible开发。国内工程师普遍存在一个情况，工程师都不屑于其他同级别工程师的框架和代码，都认为自己的才是好的。但是如果比自己更好的，都愿意虚心学习。
						</li>
						<li>
							S2SH
							<span class="dc">Struts2+Spring+Hibernate</span>国内主流轻量级Java开发框架，具有一定的普遍性和实用性。
						</li>
						<li>
							面向互联网
							<span class="dc">Web互联网</span>提供的示例DEMO可以直接换套前台风格，得到一个企业Web2.0网站。软件互联网公司可以直接通过框架开发更好复杂的互联网网站应用。
						</li>
					</ul>
					<h3>
						易用性
					</h3>
					<ul>
						<li>
							代码
							<span class="dc">简单</span>代码结构合理，格式清晰，统一采用驼峰式命名。
						</li>
						<li>
							学习
							<span class="dc">成就</span>学习该框架，因为站在了巨人的肩膀上，掌握之后会对开发框架有一个系统了解。并且感觉到一定的质的飞跃。
						</li>
						<li>
							快速
							<span class="dc">时间</span>熟悉框架即可模仿提供的功能进行开发，迅速实现功能的复制，积累部分之后将更为迅速。
						</li>
					</ul>
					<h3>
						功能多
					</h3>
					<ul>
						<li>
							微博客
							<span class="dc">Twitter</span>目前互联网流行的功能，将使学习者迅速掌握。
						</li>
						<li>
							相册
							<span class="dc">ImageMagick</span>采用了缩略效果堪比Photoshop的第三方包，使相册更为实用。
						</li>
						<li>
							讨论区
							<span class="dc">Topic</span>简易的社区，无需集成第三方论坛，就可以有一个站内的社区，减少各方面成本。
						</li>
					</ul>
					<h3>
						Web2.0主题
					</h3>
					<ul>
						<li>
							Web2.0 开发人员总结了Web2.0里面的重要2个元素：
							<p></p>
							1.功能实用易用，
							<p></p>
							2.界面清爽简单舒服
						</li>
					</ul>
					<p class="kb" style="text-align: center">
						<a target="_blank" href="<c:url value='/blog'/>" class="lnk1">访问开发者博客，了解更多关于EShow的资料</a>
					</p>
				</td>
				<td width="3"></td>
			</tr>
		</table>
		<table cellspacing="0" cellpadding="0"
			style="background: url(images/bg-btm-hr.png) repeat-y top; width: 980px; height: 9px;">
			<tr>
				<td></td>
			</tr>
		</table>
	</div>
</body>
