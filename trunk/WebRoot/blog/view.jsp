<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<s:action name="blog!view" id="view" executeResult="false"></s:action>
<c:set var="myid">
	<authz:authentication operation='id' />
</c:set>
<head>
	<title>${view.blog.title}</title>
	<meta name="keywords" content="${view.blog.title}" />
	<meta name="description" content="${view.blog.title}" />
	<link rel="stylesheet" href="<c:url value='/styles/blog.css'/>"
		type="text/css" media="screen" />
	<link rel="stylesheet" href="<c:url value='/styles/test.css'/>"
		type="text/css" />
	<script type="text/javascript"
		src="<c:url value='/scripts/delete.js'/>"></script>
	<link media="screen" type="text/css"
		href="<c:url value='/scripts/validate/theme/grey/formcheck.css'/>"
		rel="stylesheet" />
	<script type="text/javascript"
		src="<c:url value='/scripts/validate/lang/zh-CN.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/scripts/validate/formcheck.js'/>"></script>
	<script type="text/javascript">
			window.addEvent('domready', function() {
				new FormCheck('blogCommentForm');
			});
	    </script>
</head>
<body>
	<div class="w980 ">
   <div class="wrap_top left" ></div>
<div class="wrapper left">

<div class="banner left "> &nbsp; <img src="<c:url value='/images/blog.jpg'/>"  width="890"  />  </div>
 <div class="left" style="height:70px; width:100%; background-color:#eee; border-bottom:1px #ddd solid;"> <h2 style="padding:10px 15px 0; color:#666; ">EShow平台友好开发计划</h2> </div>

   
    <div class="narrowcolumn left">
							
							<div class="title" >
								<h3 style="color: #0000FF">
									${view.blog.title}
								</h3>
								<small style="color: #23a726"> <s:date
										name='%{#view.blog.addTime}' format='yyyy-MM-dd' /> by
									${view.blog.user.username} 分类:${view.blog.category.name} </small>
							</div>
							<div class="post left" id="post-1920" >
								${view.blog.content}
							</div>
							<div class="post" id="post-1896" style="margin: 15px 0px 20px 0;">
								<table width="650px">
									<tr style="align: left;">
										<a href="<c:url value='/blog'/>" class="lnk1">&laquo;返回上一层</a>
									</tr>
								</table>
							</div>
							<s:action name="blogComment!search" id="blogCommentList"
								executeResult="false">
								<s:param name="queryBean.blogId">${view.blog.id}</s:param>
								<s:param name="queryBean.desc">true</s:param>
							</s:action>
							<s:iterator value="%{#blogCommentList.blogComments}"
								status="rowStatus">
								<div class="commenta" id="blogComment${id}">
									<div class="commenta_avatar">
										<a href="<c:url value='/user/view?id=${user.id}'/>"> <c:if
												test="${user.photo==null}">
												<img
													src="${pageContext.request.contextPath}/images/base/user50-50.jpg"
													alt="${user.nickname}" />
											</c:if> <c:if test="${user.photo!=null}">
												<img
													src="${pageContext.request.contextPath}/upload/user/<s:date name='%{#view.blog.user.addTime}' format='yyyyMMdd' />/${view.blog.user.photo}"
													alt="${user.nickname}" width="50" height="50" />
											</c:if> </a>
									</div>
									<div class="commenta_cont">
										<div class="commenta_info">
											<span class="l">${name}&nbsp;&nbsp;${user.username}于 <s:date
													name='%{addTime}' format='yyyy-MM-dd HH:mm:ss' /> </span>
											<c:if test="${user.id==myid}">
												<span class="r" style="margin-right: -100px;"> <a
													href="javascript:void(0);"
													onclick="return deleteData('blogComment',${id});"
													class="lnk2">删除</a> </span>
											</c:if>
										</div>
										<div class="commenta_contxt">
											${content}
										</div>
									</div>
								</div>
							</s:iterator>
							<div class="comment_textarea" id="replay"
								style="margin-top: 10px;">
								<s:form action="blogComment!save.html" id="blogCommentForm"
									method="post">
									<input name="blogId" type="hidden" value="${view.blog.id }" />
									<span style="font-size: 16px;">标题:</span>
									<input name="blogComment.name" class="inputtext"
										style="width: 300px;" maxlength="100" type="text"
										onblur="this.className='inputtext'"
										value="回复:${view.blog.title }" />
									<div style="margin-bottom: -10px;">
										&nbsp;
									</div>
									<div style="margin-left: 37px;">
										<textarea class="inputtext text-input validate['required']"
											class="textarea" name="blogComment.content" id="inputBox"
											style="width: 400px; height: 70px;"
											onblur="this.className='textarea'"
											onfocus="this.className='textarea2'"></textarea>
										<p style="margin-top: 5px;">
											<input type="submit" class="botton" value="发表"
												onMouseOut="this.className='botton';"
												onMouseOver="this.className='botton2';" />
										</p>
									</div>
									<div class="c h5"></div>
								</s:form>
							</div>
						</div>
    <div id="sidebar">
							<ul>
								<li>
									<a href="<c:url value='/info/svn'/>"
										style='color: #23a726; font-size: 10pt; text-decoration: none;'>&gt;&gt;下载EShow框架</a>
									<br />
									<a href="<c:url value='/twitter'/>"
										style='color: #23a726; font-size: 10pt; text-decoration: none;'>&gt;&gt;查看微博</a>
								</li>
								<li class="pagenav">
									<h2 style="color: #888888">
										日志分类
									</h2>
									<ul>
										<li class="page_item page-item-654">
											<a href="<c:url value='/blog'/>" class="lnk1">全部日志</a>
										</li>
										<s:action name="category!list" id="categoryList"
											executeResult="false">
										</s:action>
										<s:iterator value="%{#categoryList.categories}"
											status="rowStatus">
											<c:if test="${view.blog.category.id == id}">
												<li class="page_item page-item-654">
													<a href="<c:url value='/blog/category/${id}'/>"
														class="lnk1" style="margin-left: -5px;"><font
														color="#23a726;">${name}</font>
													</a>
												</li>
											</c:if>
											<c:if test="${view.blog.category.id != id}">
												<li class="page_item page-item-654">
													<a href="<c:url value='/blog/category/${id}'/>"
														class="lnk1">${name}</a>
												</li>
											</c:if>
										</s:iterator>
									</ul>
								</li>
							</ul>
						</div>
   
 
  <div class="wrap_bottom left"></div>
           <div style="clear:both;"></div> 
</div>
</div>
    	
        
	
</body>
