<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<s:action name="info!browse" id="serviceview" executeResult="false" >
	<s:param name="query.url">serviceview</s:param>
	<s:param name="query.website">promisingpromos</s:param>
</s:action>
<s:action name="product!view" id="view" executeResult="false"/>
<head>
	
	<title>${serviceview.info.title }</title>
	<meta name="keywords" content="${serviceview.info.title }" />
	<meta name="description" content="${serviceview.info.title }" />
</head>
<body>
<c:set var="current">service</c:set>
	<section>
	<%@ include file="../common/header.jsp"%>
		<div class="w1000 pt10 clearfix">
	  <s:action name="product-category!list" id="productCategorys" executeResult="false" />
      <div class="side fl">
          <div class="yahei cate">
              <h3>CATEGORIES</h3>
              <ul>
              	  <s:iterator value="%{#productCategorys.productCategories}">
              	  		<li><a href="${ctx}/promisingpromos/product/category/${id}" title="${name }">${name }</a></li>
              	  </s:iterator>
              </ul>
          </div>
				<s:action name="product!search" id="productsByCount">
					<s:param name="query.order">count</s:param>
					<s:param name="query.desc">true</s:param>
					<s:param name="query.pagesize">6</s:param>
				</s:action>
				<div class="hotproduct">
              <h3 class="yahei">HOT PRODUCTS</h3>
              <ul class="clearfix">
               <s:iterator value="%{#productsByCount.products}">
               	<li><a href="${ctx}/promisingpromos/product/view/${id}"><img src="${img }"/></a></li>
                </s:iterator>
              </ul>
          </div>
      </div>
      <div class="main fr"> 
          <div class="crumbnav yahei">
             <a href="${ctx}/promisingpromos/">Home</a> > 
             <a href="${ctx}/promisingpromos/service/">${serviceview.info.title}</a>  

          </div>
                <s:action name="service!view" id="serviceview">
                </s:action>
          <div class="text clearfix yahei">
               <div class="text-c">
                <p>${serviceview.service.id}.&nbsp; <a href="${ctx }/promisingpromos/service/view/${serviceview.service.id}">${serviceview.service.title}</a></p>
                ${serviceview.service.content}
               </div>
          </div>
      </div>
      

 </div>
	</section>
</body>