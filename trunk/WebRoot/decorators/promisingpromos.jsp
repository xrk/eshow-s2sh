<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="/common/taglibs.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页_EShow开源框架</title>
<link href="${ctx}/promisingpromos/styles/style.css" rel="stylesheet"/> 
<script src="${ctx}/promisingpromos/scripts/jquery-1.9.1.min.js"></script>   
<script src="${ctx}/promisingpromos/scripts/bxslider/jquery.bxslider.min.js"></script>  
<script>
 $(document).ready(function() {
    $('.index_banner').bxSlider({
      controls:false,
      pager:false,
      auto: true
    }); 
})
</script> 
<decorator:head />
</head>
<body
	<decorator:getProperty property="body.id" writeEntireProperty="true"/>
	<decorator:getProperty property="body.class" writeEntireProperty="true"/>>
	
	<decorator:body />
	<div class="footer gray">
		<p>
			Copyright © 2009 Promising Promos Inc All rights reserved.<br>
				Promising Promos Inc,26500 West Agoura Road, Suite 102-622
				Calabasas, CA 91302Guaranteed 
		</p>
	</div>
</body>
</html>
