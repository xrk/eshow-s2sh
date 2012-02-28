<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<s:action name="category!view" id="categoryList" executeResult="false" />
<c:set var="myid">
  <authz:authentication operation='id' />
</c:set>
<head>
<title>开发日志</title>
<meta name="keywords" content="开发日志" />
<meta name="description" content="开发日志" />
<link rel="stylesheet" href="<c:url value='/styles/blog.css'/>"
		type="text/css" media="screen" />
</head>
<body>

<div class="w980 ">
   <div class="wrap_top left" ></div>
<div class="wrapper left">

<div class="banner left "> &nbsp; <img src="<c:url value='/images/blog.jpg'/>"  width="890"  />  </div>
 <div class="left" style="height:70px; width:100%; background-color:#eee; border-bottom:1px #ddd solid;"> <h2 style="padding:10px 15px 0; color:#666; ">EShow平台友好开发计划</h2> </div>

   
    <div class="narrowcolumn left" >
      <div class="post" id="post-1920" >
        <s:action name="blog!search" id="blogList" executeResult="false">
          <s:param name="queryBean.categoryId">${param.id}</s:param>
          <s:param name="queryBean.order">addTime</s:param>
          <s:param name="queryBean.desc">true</s:param>
          <s:param name="pagesize">5</s:param>
        </s:action>
        <s:iterator value="%{#blogList.blogs}" status="rowStatus">
          <ul>
            <li>
              <h3>
                <p><a href="<c:url value='/blog/view/${id}'/>" class="lnk1">${title}</a></p>
              </h3>
              <small style="color: #23a726">
              <s:date name='%{addTime}'
										format='yyyy-MM-dd' />
              by ${user.username} 分类:${category.name} </small> <br/>
              <div class="entry"> ${util:preview(content,300)}&nbsp;&nbsp;&nbsp;&nbsp; <small style="color: #"> <font color="#23a726"><a
											href="<c:url value='/blog/view/${id}'/>" class="lnk1">阅读更多--&gt;&gt;</a> </font> </small> <br />
              </div>
            </li>
          </ul>
        </s:iterator>
        <div style="text-align: center;">
          <%@ include file="/common/page.jsp"%>
        </div>
      </div>
    </div>
    <div id="sidebar">
      <ul>
        <li> <a href="<c:url value='/info/svn'/>"
									style='color: #23a726; font-size: 10pt; text-decoration: none;'>&gt;&gt;下载EShow框架</a> <br />
          <a href="<c:url value='/twitter'/>"
									style='color: #23a726; font-size: 10pt; text-decoration: none;'>&gt;&gt;查看微博</a> </li>
        <li class="pagenav">
          <h2 style="color: #888888"> 日志分类 </h2>
          <ul>
            <li> <a href="<c:url value='/blog'/>" class="lnk1"
											style="margin-left: -5px;"><font color="#23a726;">全部日志</font> </a> </li>
            <s:action name="category!list" id="categoryList"
										executeResult="false"> </s:action>
            <s:iterator value="%{#categoryList.categories}"
										status="rowStatus">
              <li class="page_item page-item-654">
                <c:if test="${categoryList.category.id == id}"> <a href="<c:url value='/blog/category/${id}'/>" class="lnk1"><font
													color="#23a726;">${name}</font> </a> </c:if>
                <c:if test="${categoryList.category.id != id}"> <a href="<c:url value='/blog/category/${id}'/>" class="lnk1">${name}</a> </c:if>
              </li>
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
