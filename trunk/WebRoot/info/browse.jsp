<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="info!browse" id="view" executeResult="false" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${view.info.title }_EShow开源框架</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link href="styles/style.css" rel="stylesheet" />
</head>
<body>
	<header id="header">
		<div class="hero-unit showcase">
			<div class="container">
				<h1 class="yahei">${view.info.title }</h1>
			</div>
		</div>
	</header>
	<div class="container">
		<div class="row">
			<div class="span12">
				${view.info.content }
			</div>
		</div>
	</div>
</body>
</html>
