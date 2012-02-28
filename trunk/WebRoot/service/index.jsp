<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<s:action name="category!view" id="categoryList" executeResult="false" />
<c:set var="myid">
	<authz:authentication operation='id' />
</c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>开发日志</title>
		<meta name="keywords" content="开发日志" />
		<meta name="description" content="开发日志" />
		<link rel="stylesheet" href="<c:url value='/styles/blog.css'/>"
			type="text/css" media="screen" />
	</head>
	<body>
		<div id="page-wrapper">
			<img alt="" src="<c:url value='/images/top-hr.png'/>"
				style="height: 12px; margin-top: 10px; width: 980px;" />
			<table cellspacing="0" cellpadding="0"
				style="background: url(<c:url value='/images/bg-body.png'/>) repeat-y top; width: 980px;">
				<tr>
					<td width="2"></td>
					<td valign="top"
						style="background: url(<c:url value='/images/bg-sec-12.png'/>) repeat-x top; padding: -10px -10px; align: center;">
						<div>
							&nbsp;
							<img src="<c:url value='/images/blog.jpg'/>"
								style="margin: 40px 35px -10px 35px; width: 890px; height: 210px;"/>
						</div>
							<div id="content" class="narrowcolumn" style="margin-bottom:-50px;">
								<div class="post" id="post-1962">
									<h2 style="color:#888888">
										EShow平台友好开发计划
									</h2>
								</div>
								<div class="post" id="post-1920" style="margin-top:-20px;">
									<s:action name="blog!search" id="blogList"
										executeResult="false">
										<s:param name="queryBean.categoryId">${param.id}</s:param>
										<s:param name="queryBean.order">addTime</s:param>
										<s:param name="queryBean.desc">true</s:param>
										<s:param name="pagesize">5</s:param>
									</s:action>
									<s:iterator value="%{#blogList.blogs}" status="rowStatus">
										<h3>
											<a href="<c:url value='/blog/view/${id}'/>" class="lnk1">${title}</a>
										</h3>
										<small style="color: #23a726">
											<s:date name='%{addTime}' format='yyyy-MM-dd'/> by ${user.username}
											分类:${category.name}
										</small>
										<br/>
										<div class="entry">
											${util:preview(content,500)}&nbsp;&nbsp;&nbsp;&nbsp;
											<small style="color: #">
											<font color="#23a726"><a href="<c:url value='/blog/view/${id}'/>" class="lnk1">更多&gt;&gt;</a></font>
											</small>
											<br />
										</div>
									</s:iterator>
									<div style="text-align: center;">
								       <%@ include file="/common/page.jsp"%>
								     </div>
								</div>
							</div>
							<div id="sidebar">
								<ul>
									<li>
										<a href="<c:url value='/info/svn'/>" style='color: #23a726; font-size: 10pt;text-decoration:none;'>&gt;&gt;下载EShow框架</a>
										<br />
										<a href="<c:url value='/twitter'/>" style='color: #23a726; font-size: 10pt;text-decoration:none;'>&gt;&gt;查看微博</a>
									</li>
									<li class="pagenav">
										<h2 style="color:#888888">
											日志分类
										</h2>
										<ul>
											<li>
												<a href="<c:url value='/blog'/>" class="lnk1" style="margin-left:-5px;"><font color="#23a726;">全部日志</font></a>
											</li>
											<s:action name="category!list" id="categoryList"
												executeResult="false">
											</s:action>
											<s:iterator value="%{#categoryList.categories}"
												status="rowStatus">
												<li class="page_item page-item-654">
													<c:if test="${categoryList.category.id == id}"><a href="<c:url value='/blog/categories/${id}'/>" class="lnk1"><font color="#23a726;">${name}</font></a></c:if>
													<c:if test="${categoryList.category.id != id}"><a href="<c:url value='/blog/categories/${id}'/>" class="lnk1">${name}</a></c:if>
												</li>
											</s:iterator>
										</ul>
									</li>
								</ul>
							</div>
					</td>
					<td width="3"></td>
				</tr>
			</table>
			<table cellspacing="0" cellpadding="0"
				style="background: url(<c:url value='/images/bg-btm-hr.png'/>) repeat-y top; width: 980px; height: 9px;">
				<tr>
					<td></td>
				</tr>
			</table>
		</div>
	</body>
</html>