<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<c:set var="myid">
	<authz:authentication operation='id' />
</c:set>
<head>
	<title>意见反馈</title>
	<meta name="keywords" content="意见反馈" />
	<meta name="description" content="意见反馈" />
	<link rel="stylesheet" href="<c:url value='/styles/feedback.css'/>"
		type="text/css" />
</head>
<body>

</body>
