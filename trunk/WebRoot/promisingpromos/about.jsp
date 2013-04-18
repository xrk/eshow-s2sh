<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<head>
	<title>关于我们</title>
	<meta name="keywords" content="关于我们" />
	<meta name="description" content="关于我们" />
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
               	<li> <a href="${ctx}/promisingpromos/product/view/${id}"><img src="${img }"/></a></li>
                </s:iterator>
              </ul>
          </div>
      </div>

      <div class="main fr"> 
          <div class="crumbnav yahei">
            <a href="">Home</a> > 
            <a href="">About</a> 

          </div>
          <div class="text clearfix yahei">
                  <h1>ABOUT US</h1>
               <div class="text-c">
                <p  class="t-c"><img src="${ctx }/promisingpromos/images/bud.jpg"/></p>
                  <p>Whether you are promoting a new product, looking for sales incentives, custom products or common gifts, you’re come to the right site. With more than 250 skilled account executives and over 17,000 cooperating factories in China. Speed Promotional Inc. is able to help customers for every need. We ensure every customer timely response, on time delivery, super customer services and other aspects. Here at Speed Promotional Inc, we are proud to be able to offer different sorts of promotional products other companies find difficult to match. However, if you can’t find the type of product you required, please don’t hesitate to contact our customer service staff and we will do everything to provide you with the item you need. Moreover, ordering your promotional products from us, couldn’t be any easier, you can either send inquiry of your custom promotional product online or speak to our friendly staff directly on the phone. If you do have any queries regarding our huge range of promotional items or our service, please feel free to contact us at any time, our team of experts are always ready to help.</p>
                  <p>Whatever your specific needs are for promotional products, whether you’re after printed promotional products for your next exhibition, or you are launching a new service, you’re bound to find your requirements here.</p>
               </div>
          </div>

      </div>
      

 </div>
	</section>
</body>