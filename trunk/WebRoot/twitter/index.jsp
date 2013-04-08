<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<c:set var="myid">
	<authz:authentication operation='id' />
</c:set>
<head>
	<title>微博</title>
	<meta name="keywords" content="微博，心情，记事" />
	<meta name="description" content="微博客，上Eshow微博，马上注册" />
	<link rel="stylesheet" href="<c:url value='/styles/twitter.css'/>"
		type="text/css" />
	<script type="text/javascript"
		src="<c:url value='/scripts/delete.js'/>"></script>
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
			<li class="active"><a href="${ctx}/twitter/">大家的微博</a>
			</li>
			<li><a href="#">我的微博</a>
			</li>
			<li><a href="${ctx }/t-add.jsp">继续说</a>
			</li>
		</ul>
		<s:action name="twitter!search" id="twitterList" executeResult="false">
			<s:param name="queryBean.order">addTime</s:param>
			<s:param name="queryBean.desc">true</s:param>
		</s:action>
		<s:iterator value="%{#twitterList.twitters}">
			<s:if test="%{#twitterList.twitters}==null">
				<div class="mainMsg">目前没有记录</div>
			</s:if>
			<ul class="feeds">
				<li class="feed_li">
					<div class="user_pic">
						<c:if test="${user.photo == null}">
							<a href="/eshow/twitter/workmate/${user.id}" class="lnk1"><img
								src="${pageContext.request.contextPath}/images/base/user50-50.jpg"
								alt="${user.username}" width="50" height="50" /> </a>
						</c:if>
						<c:if test="${user.photo != null}">
							<a href="/eshow/twitter/workmate/${user.id}"><img
								src="${ctx}/upload/user/<s:date name='%{user.addTime}' format='yyyyMMdd' />/${user.photo}"
								alt="${user.username}" width="50" height="50" /> </a>
						</c:if>
					</div>
					<div class="msg_box">
						<h3 class="msg_tit">
							<a href="/suiyi/blog/2901" target="_blank"></a>
						</h3>
						<div class="msg_cnt clearfix"><span>${content}</span></div>
						<div class="pubinfo clearfix">
							<p class="left fl">
								<a class="time" href="/suiyi/blog/2901" target="_blank"><time>
										<i class="icon-time"></i> <s:date name='addTime' format="yyyy-MM-dd HH:mm" />
									</time> </a> <a href="http://bangqu.com"><i class="icon-share-alt"></i>
									来自帮趣网</a>
							</p>
							<p class="feedattr fr">
								<a id="relay" onclick="loadComments('blog',2901)"
									href="javascript:;"><i class="icon-comment"></i> 评论(<span>${commentSize }<>)</a>
							</p>
						</div>
						<div class="none loading">
							<div class="comment well  clearfix">
								<div class="input clearfix ">
									<form id="blogCommentForm2892" name="blogCommentForm"
										onsubmit="return saveComment('blog',2892);"
										action="/blog-comment!save.action" method="post">
										<input type="hidden" name="blogId" value="2892"> <input
											type="hidden" name="redirect"
											value="/ajax/blog/comment/view.jsp">
										<textarea class="textinput" id="content"
											name="blogComment.content"></textarea>
										<input type="submit" class="btn fr btn-primary" value="评论">
										<em class="green"></em>
									</form>
								</div>
								<ul class="commentlist">
									<li><span class="pic"> <a href="/sql"> <img
												width="18" height="18"
												src="http://avatar.bangqu.com/2012/03/26/2.jpg!small.jpg">
										</a> </span>
										<p>
											<a id="name" href="/sql">刘小春</a> 不错<span>(29秒前)</span> <a
												id="reply_comment" name="reply_comment" class="reply"
												href="javascript:;" data-model="blog">回复</a>
										</p></li>
								</ul>
							</div>
						</div>
						<div id="load2901" class="none loading"></div>
					</div>
				</li>
			</ul>
		</s:iterator>
		<%@ include file="/common/page.jsp"%>
	</div>
</body>
