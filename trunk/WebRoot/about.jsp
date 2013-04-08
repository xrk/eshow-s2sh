<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<c:set var="myid">
	<authz:authentication operation='id' />
</c:set>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页_EShow开源框架</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link href="styles/style.css" rel="stylesheet" />
</head>
<body>
  <header id="header">
      <div class="hero-unit showcase">
        <div class="container">
          <h1 class="yahei">关于</h1>

        </div>
      </div>
    </header>
<div class="container">   
  <div class="row">
         <div class="span12" > 
    <div class="page-header">
    <h4>作者:</h4>
    </div>
    
  <h5>张磊<small>Leida</small></h5>  
<p>EShow开源系统创始人 </p>
<p>信奉信息自由，交流创造价值 </p>
 
    <div class="page-header">
    <h4>
联系方式:</h4>
</div> 
    <h5 id="pauldillard">您可以通过多种方式联系我们：</h5>

<p>如果您有疑问或者意见想和大家讨论</p>
<p>建议光临我们的 论坛 </p>

<p>如果您想直接联络我（Leida、张磊），可以通过 </p>
<p>Email: leida#daoqun.net</p>
<p>MSN: zhanglei20084#hotmail.com </p>
<p>QQ: 149151419 </p>
<p>QQ群：217273774 (EShow开源框架)</p> 
</div> 
 
</div>

</div>
  </body>
</html>
