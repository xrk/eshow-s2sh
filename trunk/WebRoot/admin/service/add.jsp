<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<head>
	<title>添加服务</title>
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
					<div id="mainTab">
						<ul>
							<li>
								<span class="txt6"><a
									href="<c:url value='/admin/service'/>">服务列表</a> </span>
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
					<div id="serviceEdit">
						<s:form id="serviceForm" action="service!save.html" method="post"
							enctype="multipart/form-data">
							<p>
								<span class="l">服务标题：</span>
								<span class="r">&nbsp; <input name="service.title"
										class="inputtext text-input validate['required']"
										style="width: 300px;" maxlength="50" type="text"
										onblur="this.className='inputtext'" /> </span>
							</p>

							<p>
								<span class="l">选择类型：</span>
								<span class="r">&nbsp; <s:action name="serviceType!list"
										id="serviceTypeList" executeResult="false" /> <select
										name="serviceTypeId">
										<s:iterator value="%{#serviceTypeList.serviceTypes}"
											status="rowStatus">
											<option value="${id}">
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
							<p>
								<span class="l">内容：</span>
								<span class="r"> <textarea id="ke-text"
										name="service.content" style="width: 600px; height: 300px;"></textarea>
								</span>
							</p>
							<p style="width: 640px; text-align: center;">
								<input type="submit" class="botton" value="提交"
									onmouseout="this.className='botton';"
									onmouseover="this.className='botton2';" />
								<input type="button" class="botton_close1" value="取消"
									onmouseout="this.className='botton_close1';"
									onmouseover="this.className='botton_close2';"
									onclick="javascript:history.back();" />
							</p>

							<div class="c"></div>
							<div class="c h5"></div>
							<span class="l"></span>
							<p>
								<input type="hidden" id="securitiesIds" name="listSecuritiesIds" />
							</p>
							<div class="c h10"></div>
						</s:form>
					</div>
				</div>
				<div class="c"></div>
			</div>
			<div class="c"></div>
			<div class="boxs3_rt"></div>
			<div class="boxs3_lb"></div>
			<div class="boxs3_rb"></div>
		</div>
	</div>
</body>

