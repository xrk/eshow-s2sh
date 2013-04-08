<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="taglibs.jsp"%>
<div class="pagination">
	<ul>
		<c:if test="${page.currentPage!=0}">
		<li class="disabled"><a href="?begin=${page.prePage}">«</a></li></c:if>
	<c:forEach var="x" begin="${page.startPage}" end="${page.endPage}"
		step="1">
		<c:if test="${x==page.currentPage}">
			<li><span class="current">${x}</span></li>
		</c:if>
		<c:if test="${x!=page.currentPage}">
			<li><a class="chn" href="?begin=${x}">${x}</a></li>
		</c:if>
	</c:forEach>
	<c:if test="${page.currentPage < page.totalPage}">
		<li><a href="?begin=${page.nextPage}">»</a></li></c:if>
	</ul>
</div>
