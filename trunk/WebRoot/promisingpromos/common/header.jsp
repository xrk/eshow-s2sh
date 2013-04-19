<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<div class="header">
    <div class="top clearfix">
        <div class="logo fl">
          <img src="${ctx}/promisingpromos/images/logo.png"/>
        </div>
        <div class="info yahei fr gray">
          For more information call <span>818-839-2146</span><br>
           or email <span>speedpromo.info@gmail.com</span>
        </div>
    </div>
    <div class="navbox yahei"> 
      <div class="nav fl">
        <a href="${ctx}/promisingpromos/"  <c:if test="${current=='index'}">class="active"</c:if>>HOME</a>
        <a href="${ctx}/promisingpromos/product/"  <c:if test="${current=='product'}">class="active"</c:if>>PRPODUCTS</a>
        <a href="${ctx}/promisingpromos/service/"  <c:if test="${current=='service'}">class="active"</c:if>>SERVICES</a>
        <a href="${ctx}/promisingpromos/support"  <c:if test="${current=='support'}">class="active"</c:if>>SUPPORT</a>
        <a href="${ctx}/promisingpromos/about"  <c:if test="${current=='about'}">class="active"</c:if>>ABOUT US</a>
        <a href="${ctx}/promisingpromos/contact"  <c:if test="${current=='contact'}">class="active"</c:if>>CONTACT US</a> 
      </div>
      <div class="search fr">
			<s:form action="product!serachproduct.action" method="post"
				id="productForm" namespace="">
				<input type="hidden" name="REDIRECT"
					value="${ctx }/promisingpromos/product/search" />
				<input type="text" class="text fl" name="query.name" />
				<input type="submit" class="btn fl" name="" value="" />
			</s:form>
<!-- 			<form id="searchForm" name="searchForm" action="${ctx}/search/" -->
<!-- 				method="get" class="navbar-form pull-left"> -->

<!-- 				<input type="text" class="fl s_input" hidefocus name="keyword" -->
<!-- 					placeholder="<fmt:message key="search.header.tip" />" -->
<!-- 					x-webkit-speech x-webkit-grammar="builtin:translate" -->
<!-- 					value="${param.keyword}"> -->
<!-- 				<button class="lsb fl none" -->
<!-- 					value="<fmt:message key="button.search" />" type="hidden"></button> -->
<!-- 				<div id="top_search_loader clearfix" class="none"> -->
<!-- 					<span class="tip"><fmt:message key="search.header.tip" /> -->
<!-- 					</span> -->
<!-- 				</div> -->
<!-- 			</form> -->
		</div>
    </div>
 </div>
