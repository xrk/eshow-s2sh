<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="info!browse" id="view" executeResult="false" />
<head>
	<title>${view.info.title }</title>
	<meta name="keywords" content=${view.info.title } />
	<link rel="stylesheet" href="<c:url value='/styles/info.css'/>"
		type="text/css" />
</head>
<body>
	<div id="page-wrapper">
		<img src="../images/top-hr.png"
			style="height: 12px; margin-top: 10px; width: 980px;" />
		<table cellspacing="0" cellpadding="0"
			style="background: url(../images/bg-body.png) repeat-y top; width: 980px;">
			<tr>
				<td width="2"></td>
				<td valign="top"
					style="background: url(../images/bg-sec-12.png) repeat-x top; padding: 40px 40px;">
					<div id="introcontainer">
						<div class="introshadow">
							<div class="realintro">
								<h1 id="firstHeading">
									${view.info.title}
								</h1>
								${view.info.content }
							</div>
						</div>
					</div>
				</td>
				<td width="3"></td>
			</tr>
		</table>
		<table cellspacing="0" cellpadding="0"
			style="background: url(../images/bg-btm-hr.png) repeat-y top; width: 980px; height: 9px;">
			<tr>
				<td></td>
			</tr>
		</table>
	</div>
</body>