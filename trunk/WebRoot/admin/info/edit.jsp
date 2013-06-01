<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="info!view" id="view" executeResult="false" />
<head>
<title>修改信息${view.info.title}</title>
<%@ include file="/common/validate.jsp"%>
<%@ include file="/common/ueditor.jsp"%>
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li><a href="${ctx}/admin/info/">信息中心</a> <span
						class="divider">/</span></li>
					<li class="active">修改信息</li>
				</ul>
				<div class="well com">
					<ul id="myTab" class="nav nav-tabs">
						<li><a data-toggle="tab"
							href="${ctx}/admin/info">信息列表</a>
						</li>
						<li class="active"><a data-toggle="tab"
							href="${ctx}/admin/info">修改信息</a>
						</li>
					</ul>
					<s:form id="infoForm" cssClass="form-horizontal" action="info!update.action" method="post">
						<s:hidden name="id" value="%{#view.info.id}"></s:hidden>
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="input01">信息URL</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="info.url" value="${view.info.url}">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">信息标题 </label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="info.title" value="${view.info.title}">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="textarea">信息内容</label>
								<div class="controls">
									<textarea id="content" name="info.content" class="content">${view.info.content}</textarea>
									<script type="text/javascript">
										var editorOption = {
											toolbars : [ [ 'Bold', 'underline', 'forecolor', 'Undo', 'Redo',
													'insertimage', 'link', 'unlink', 'justifyleft',
													'justifycenter', 'justifyright', 'insertunorderedlist',
													'insertorderedlist','|','AutoTypeSet','FormatMatch','RemoveFormat','|', 'highlightcode', 'Source', 'FullScreen' ] ],
											wordCount : false,
											initialContent:'',
											elementPathEnabled : false,
											minFrameHeight : 341,
											maxInputCount:20 
										};
										var _editor = new baidu.editor.ui.Editor(editorOption);
										_editor.render('content');
									</script>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">发表</button>
								<button class="btn" onclick="javascript:history.back();">取消</button>
							</div>
						</fieldset>
					</s:form>
				</div>
			</div>
		</div>
	</div>
</body>

