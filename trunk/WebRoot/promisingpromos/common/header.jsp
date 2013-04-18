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
        <input type="text" class="text fl" name=""/>
        <input type="submit" class="btn fl" value=""/>
      </div>

    </div>
 </div>
