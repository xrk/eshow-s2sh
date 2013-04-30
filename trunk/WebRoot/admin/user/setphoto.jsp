<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="user!view" id="view" executeResult="false">
</s:action>
<head>
	<title>修改头像</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/profile.css'/>" type="text/css" />
	<link media="screen" type="text/css"
		href="<c:url value='/scripts/validate/theme/grey/formcheck.css'/>"
		rel="stylesheet" />
	<script type="text/javascript"
		src="<c:url value='/scripts/validate/lang/zh-CN.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/scripts/validate/formcheck.js'/>"></script>
	<script type="text/javascript">
		window.addEvent('domready', function() {
			new FormCheck('userForm');
		});
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
						<h3 class="yahei">修改头像</h3>
						<%@ include file="/common/messages.jsp"%>
					<div id="uploadfaceimg">
							<div class="l" id="div_Log">
								<p class="title">
									当前头像
								</p>
								<p class="avatar50">
									<c:if test="${view.user.photo==null}">
										<a
											href="<c:url value="/admin/user/view/${view.user.username}"/>"><img
												src="${pageContext.request.contextPath}/common/images/user50-50.jpg"
												alt="${view.user.nickname}" /> </a>
									</c:if>
									<c:if test="${view.user.photo!=null}">
										<a href="<c:url value="/admin/user/view/${username}"/>"><img
												src="${pageContext.request.contextPath}/upload/user/<s:date name='%{#view.user.addTime}' format='yyyyMMdd' />/${view.user.photo}<%=Math.round(Math.random() * 100000)%>"
												alt="${view.user.nickname}" /> </a>
									</c:if>
								</p>
								<p class="avatar100">
									<c:if test="${view.user.photo==null}">
										<a
											href="<c:url value="/admin/user/view/${view.user.username}"/>"><img
												src="${pageContext.request.contextPath}/common/images/user100-100.jpg"
												alt="${view.user.nickname}" /> </a>
									</c:if>
									<c:if test="${view.user.photo!=null}">
										<img
											src="${pageContext.request.contextPath}/upload/user/<s:date name='%{#view.user.addTime}' format='yyyyMMdd' />/${view.user.photo}<%=Math.round(Math.random() * 100000)%>" />
									</c:if>
								</p>
							</div>
							<div class="l" id="div_HeadImageCut" style="display: none">
								<p class="title">
									剪辑头像照片
								</p>
								<div id="div_Loading" class="loading">
									<span><img src="/content/images/ui/loading.gif" /> </span>
									<span style="margin: 0 0 20px 10px">图像加载中...</span>
								</div>
								<div id="div_Editor" style="display: none">
									<div id="img_content">
										<div id="image">
											<img id="img" src="" />
										</div>
										<div id="drop">
											<img id="drop_img" src="" />
										</div>
									</div>
									<table>
										<tr>
											<td width="30"></td>
											<td id="Min">
												<img alt="缩小" src="/content/images/faceimg/Minc.gif"
													style="width: 19px; height: 19px" id="moresmall"
													class="smallbig" />
											</td>
											<td>
												<div id="bar">
													<div class="child"></div>
												</div>
											</td>
											<td id="Max">
												<img alt="放大" src="/content/images/faceimg/Maxc.gif"
													style="width: 19px; height: 19px" id="morebig"
													class="smallbig" />
											</td>
										</tr>
									</table>
								</div>
							</div>
							<div class="r" id="div_Upload">
								<s:form action="user!photo.html" id="userForm" method="post"
									validate="false" enctype="multipart/form-data">
									<input type="hidden" name="id" value="${view.user.id}">
									<p class="title">
										更换头像
									</p>
									<p style="margin-top: 10px; color: #999;">
										图片大小不能超过2M，支持 .jpeg .jpg .gif .bmp .png 格式
									</p>
									<p style="margin: 5px 0 5px 0;">
										<input style="width: 250px; height: 24px;" type="file"
											id="file" class="inputtext text-input validate['required']" style="width:250px" name="file" />
									</p>
									<p>
										<input type="submit" class="botton" value="上传" id="btnUpload"
											onMouseOut="this.className='botton';"
											onMouseOver="this.className='botton2';" />
									</p>
									<div id="div_Uploading" class="loading" style="display: none">
										<span><img src="/content/images/ui/loading.gif" /> </span>
										<span style="margin: 0 0 20px 10px">图像上传中，请稍候...</span>
									</div>
								</s:form>
							</div>
							<div class="r" id="div_Note" style="display: none">
								<form name="imgform" action="/User/UploadFaceImg" method="post"
									enctype="multipart/form-data" target="hidden_frame"></form>
								<p class="title">
									说明
								</p>
								<p style="margin-top: 10px; color: #999;">
									请在左边的编辑窗口拖动和缩放你上传的图片
									<br />
									点击“保存头像”之后系统将使用中间高亮区
									<br />
									域为你生成头像
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

