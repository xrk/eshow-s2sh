<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"
%>
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
          <h1 class="yahei">微薄 </h1>

        </div>
      </div>
    </header>
<div class="container">   
          <ul class="nav nav-pills">
              <li><a href="${ctx}/twitter/">大家的微博</a></li>
              <li><a href="#">我的微博</a></li>
              <li  class="active"><a href="#">继续说</a></li>  
            </ul>
     
       <form class="bs-docs-example">
            <fieldset>
              <legend>心情点滴，我要记录...（200字内）</legend> 
               <textarea rows="3" class="input-xxlarge"></textarea>
                <br/>
                <br/>
              <button type="submit" class="btn">提交</button>
            </fieldset>
          </form>
         
</div>
  </body>
</html>
