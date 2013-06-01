<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<head>
<title>登录</title>
<meta name="descriptions" content="登录" />
<meta name="keywords" content="登录" />
</head>
<body>
	<div class="container">
		<div class="span6 offset3 login">
			<form method="post" class="form-horizontal" id="loginForm"
				action="<c:url value='/j_security_check'/>"
				onsubmit="saveUsername(this);return validateForm(this)">
				<c:if test="${param.error != null}">
					<div class="alert fade in">
						<fmt:message key="errors.password.mismatch" />
						<%--${sessionScope.ACEGI_SECURITY_LAST_EXCEPTION.message}--%>
					</div>
				</c:if>
				<br />
				<div class="control-group">
					<label class="control-label" for="inputEmail">用户名</label>
					<div class="controls">
						<input id="j_username" name="j_username" type="text" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputEmail">密码</label>
					<div class="controls">
						<input type="password" name="j_password" id="j_password" />
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<label class="checkbox"> <input type="checkbox"
							name="rememberMe" id="rememberMe" checked="checked" /> 让系统记住我 </label> <input
							type="submit" name="login" class="btn"
							value="<fmt:message key='button.login'/>" />
					</div>
				</div>
				<!-- div class="control-group">
					<div class="controls">
						<fmt:message key="login.signup">
							<fmt:param>
								<c:url value="/user/signup" />
							</fmt:param>
						</fmt:message>
					</div>
				</div -->
		</div>
	</div>
</body>