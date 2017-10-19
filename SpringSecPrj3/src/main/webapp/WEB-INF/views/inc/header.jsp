<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags" %>
<div id="header">
			<div class="top-wrapper">
				<h1 id="logo"><a href="${pageContext.request.contextPath}/index.htm"><img src="${pageContext.request.contextPath}/images/logo.png" alt="뉴렉처" /></a></h1>
				<h2 class="hidden">메인메뉴</h2>
				<ul id="mainmenu" class="block_hlist">
					<li>
						<a href="">학습가이드</a>
					</li>
					<li>
						<a href="" >과정선택</a>
					</li>
					<li>
						<a href="" >인기과정</a>
					</li>
				</ul>
				<form id="searchform" action="" method="get">
					<fieldset>
						<legend class="hidden">
							과정검색폼
						</legend>
						<label for="query">과정검색</label>
						<input type="text" name="query" />
						<input type="submit" class="button" value="검색" />
					</fieldset>
				</form>
				<h3 class="hidden">로그인메뉴</h3>
				<ul id="loginmenu" class="block_hlist">
					<li>
						<a href="${pageContext.request.contextPath}/index.htm">HOME</a>
					</li>
					<li>
						<%-- <c:if test="${empty pageContext.request.userPrincipal}"> --%>
						<s:authorize ifNotGranted="ROLE_USER">
						<a href="${pageContext.request.contextPath}/joinus/login.htm">로그인</a>
						</s:authorize>
						<%-- </c:if> --%>
						
						<%-- <c:if test="${not empty pageContext.request.userPrincipal}"> --%>
						
						<s:authorize ifAnyGranted="ROLE_USER,ROLE_ADMIN">
						<s:authentication property="name" var="loginUser"/>
						<%-- <a href="${pageContext.request.contextPath}/j_spring_security_logout">(${pageContext.request.userPrincipal.name}) 로그아웃</a> --%>
						<a href="${pageContext.request.contextPath}/j_spring_security_logout">(${loginUser}) 로그아웃</a>
						</s:authorize>
						<%-- </c:if> --%>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/joinus/join.htm">회원가입</a>
					</li>
				</ul>
				<h3 class="hidden">회원메뉴</h3>
				<ul id="membermenu" class="clear">
					<li>
						<a href=""><img src="${pageContext.request.contextPath}/images/menuMyPage.png" alt="마이페이지" /></a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/customer/notice.htm"><img src="${pageContext.request.contextPath}/images/menuCustomer.png" alt="고객센터" /></a>
					</li>
				</ul>
			</div>
		</div>