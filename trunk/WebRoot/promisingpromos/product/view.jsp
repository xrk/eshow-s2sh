<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<s:action name="product!view" id="view" executeResult="false"/>
<head>
	<title>开发日志</title>
	<meta name="keywords" content="开发日志" />
	<meta name="description" content="开发日志" />
	<link rel="stylesheet" href="<c:url value='/styles/blog.css'/>"
		type="text/css" media="screen" />
</head>
<body>
	<section>
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
            <a href="">Home</a> > 
            <a href="">Catgories</a> > 
            <a href="">Catgories</a>

          </div>
          <div class="view clearfix yahei">
               <div class="v-pic fl">
                  <img src="${view.product.img}">
               </div>
               <div class="v-unit fr yahei">
                    <ul class="clearfix">
                        <li>GET A SAMPLE</li>
                        <li>PRINT SPECS</li>
                        <li>ADD TO WISH LIST</li>
                        <li>EMAIL A FRIEND</li> 
                    </ul>
                    <div class="pcs">
                        <a href="">Quantity(pcs)</a>
                        <a href="">Unit Price($)</a>
                    </div>

               </div>
          </div>
          <dl class="v-info yahei">
                <dt>${view.product.name } (${view.product.code })</dt>
                <dd>
                  <span class="tit">PRICE :</span>
                  <span class="cc">$${view.product.price}</span>
                </dd>
                <dd>${view.product.content }</dd>
                </dl>
      </div>
      

 </div>
	</section>
</body>