<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="user!view" id="view" executeResult="false">
</s:action>
<head>
	<title>修改密码</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/profile.css'/>" type="text/css" />
	<script>
		function validateForm()
		{
			if($("oldPassword").value.length == 0){
		            alert("请输入旧密码！");
		            $("oldPassword").focus();
		            return false;
		        }
		    if($("user.password").value.length == 0){
		            alert("请输入新密码！");
		            $("user.password").focus();
		            return false;
		        }
		    if($("user.confirmPassword").value.length == 0){
		            alert("请再次输入新密码！");
		            $("user.confirmPassword").focus();
		            return false;
		        }
		        if($("user.password").value!= $("user.confirmPassword").value){
		        	alert("确认新密码应和新密码相同！");
		            $("user.confirmPassword").focus();
		            return false;
		        }
		        return true;
		}
		</script>
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<s:include value="../title.jsp"></s:include>

				<div class="well com">
					<div class="page-header">
						<h3 class="yahei">修改资料</h3>
						<%@ include file="/common/messages.jsp"%>
						<%@ include file="/common/messages.jsp"%>
					<s:form action="user!password.html" id="userForm" method="post"
						onsubmit="return validateForm();" validate="false">
						<input type="hidden" name="redirect" value="password" />
						<input type="hidden" name="id" value="${view.user.id}" />
						<input type="hidden" name="user.username"
							value="${view.user.username}" />
						<input type="hidden" name="user.nickname"
							value="${view.user.nickname}" />
						<div id="profile_form">
							<ul>
								<li>
									<span class="l">旧密码：</span><span class="r"><input
											class="inputtext" name="oldPassword" id="oldPassword"
											style="width: 150px" maxlength="20" type="password"
											onblur="this.className='inputtext';"
											onfocus="this.className='inputtext2';" /> </span>
								</li>
								<li>
									<span class="l">新密码：</span><span class="r"><input
											class="inputtext" name="user.password" id="password"
											style="width: 150px" maxlength="20" type="password"
											onblur="this.className='inputtext';"
											onfocus="this.className='inputtext2';" /> </span>
								</li>
								<li>
									<span class="l">确认密码：</span><span class="r"><input
											class="inputtext" name="user.confirmPassword"
											id="confirmPassword" style="width: 150px" maxlength="20"
											type="password" onblur="this.className='inputtext';"
											onfocus="this.className='inputtext2';" /> </span>
								</li>
								<li>
									<span style="padding-left: 85px;"><input type="submit"
											class="botton" value="保存设置"
											onMouseOut="this.className='botton';"
											onMouseOver="this.className='botton2';" /> </span>
								</li>
							</ul>
						</div>
					</s:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

