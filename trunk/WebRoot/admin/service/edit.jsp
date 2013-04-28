<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="service!view" id="view" executeResult="false" />
<head>
	<title>修改服务</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/service.css'/>" type="text/css" />
	<%@ include file="/common/formcheck.jsp"%>
	<script type="text/javascript">
	 	window.addEvent('domready', function() {
			new FormCheck('serviceForm');
		});
    </script>
	<script type="text/javascript" charset="utf-8"
		src="<c:url value="/components/kindeditor/kindeditor.js"/>"></script>
	<script type="text/javascript">
	    KE.show({
	        id : 'ke-text'
	    });
	</script>
</head>
<body>
	<div id="main">
		<s:include value="../left.jsp"></s:include>
		<div id="mainarea">
			<div id="mainarea_bg">
				<div id="content">
					<div id="mainTop">
						<h2>
							<img src="<c:url value='/admin/images/app_list_service.gif'/>" />
							服务
						</h2>
					</div>
					<!-- 文章页面导航 -->
					<div id="mainTab">
						<ul>
							<li>
								<span class="txt6"><a
									href="<c:url value='/admin/service'/>">服务列表</a> </span>
							</li>
							<li class="on">
								<span class="txt6"><a
									href="<c:url value='/admin/service/edit/${view.service.id}'/>">修改服务</a> </span>
							</li>
							<li>
								<span class="txt6"><a
									href="<c:url value='/admin/serviceType'/>">服务类型</a> </span>
							</li>
							<li class="navtxt">
								<a href="<c:url value='/admin/service/add'/>">添加服务</a>
							</li>
						</ul>
					</div>
					<div id="analysisEdit">
						<s:form id="serviceForm" action="service!update.html"
							method="post" enctype="multipart/form-data">
							<s:hidden name="id" value="%{#view.service.id}"></s:hidden>
							<p>
								<span class="l">服务标题：</span>
								<span class="r">&nbsp; <input name="service.title"
										class="inputtext text-input validate['required']"
										style="width: 300px;" maxlength="50" type="text"
										onblur="this.className='inputtext'"
										value="${view.service.title}" /> </span>
							</p>
							<p>
								<span class="l">服务类型：</span>
								<s:action name="serviceType!search" id="serviceTypeList"
									executeResult="false" />
								<span class="r">&nbsp; <select id="serviceTypeId"
										name="serviceTypeId">
										<s:iterator value="%{#serviceTypeList.serviceTypes}"
											status="rowStatus">
											<option value="${id}"
												<c:if test="${view.service.serviceType.id==id}">selected="selected"</c:if>>
												${name}
											</option>
										</s:iterator>
									</select> </span>
							</p>
							<p>
								<span class="l">选择图片：</span>
								<span class="r">&nbsp; <input type="file" name="file"
										size="38" class="inputtext text-input validate['required']" />
								</span>
							</p>
							<div style="margin-top: 10px; margin-left: 50px;">
								<span class="l">&nbsp; <c:if
										test="${view.service.img == null}">
										<img
											src="${pageContext.request.contextPath}/images/base/user50-50.jpg" />
									</c:if> <c:if test="${view.service.img != null}">
										<img
											src="${pageContext.request.contextPath}/upload/service/<s:date name='%{#view.service.addTime}' format='yyyyMMdd'/>/${view.service.img}" />
									</c:if> </span>
							</div>
							<p>
								<span class="l">服务内容：</span>
								<span class="r">&nbsp; <textarea id="ke-text"
										name="service.content" style="width: 600px; height: 300px;">${view.service.content}</textarea>
								</span>
							</p>
							<p align="center">
								<input type="submit" class="botton" value="修改"
									onmouseout="this.className='botton';"
									onmouseover="this.className='botton2';" />
								<input type="button" class="botton_close1" value="取消"
									onmouseout="this.className='botton_close1';"
									onmouseover="this.className='botton_close2';"
									onclick="javascript:history.back();" />
							</p>
						</s:form>
					</div>
				</div>
				<!--发表文章-->
				<div class="c"></div>
			</div>
		</div>
	</div>
</body>

