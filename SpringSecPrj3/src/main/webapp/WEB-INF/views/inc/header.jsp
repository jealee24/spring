<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags" %>
<div id="header">
			<div class="top-wrapper">
				<h1 id="logo"><a href="${pageContext.request.contextPath}/index.htm"><img src="${pageContext.request.contextPath}/images/logo.png" alt="����ó" /></a></h1>
				<h2 class="hidden">���θ޴�</h2>
				<ul id="mainmenu" class="block_hlist">
					<li>
						<a href="">�н����̵�</a>
					</li>
					<li>
						<a href="" >��������</a>
					</li>
					<li>
						<a href="" >�α����</a>
					</li>
				</ul>
				<form id="searchform" action="" method="get">
					<fieldset>
						<legend class="hidden">
							�����˻���
						</legend>
						<label for="query">�����˻�</label>
						<input type="text" name="query" />
						<input type="submit" class="button" value="�˻�" />
					</fieldset>
				</form>
				<h3 class="hidden">�α��θ޴�</h3>
				<ul id="loginmenu" class="block_hlist">
					<li>
						<a href="${pageContext.request.contextPath}/index.htm">HOME</a>
					</li>
					<li>
						<%-- <c:if test="${empty pageContext.request.userPrincipal}"> --%>
						<s:authorize ifNotGranted="ROLE_USER">
						<a href="${pageContext.request.contextPath}/joinus/login.htm">�α���</a>
						</s:authorize>
						<%-- </c:if> --%>
						
						<%-- <c:if test="${not empty pageContext.request.userPrincipal}"> --%>
						
						<s:authorize ifAnyGranted="ROLE_USER,ROLE_ADMIN">
						<s:authentication property="name" var="loginUser"/>
						<%-- <a href="${pageContext.request.contextPath}/j_spring_security_logout">(${pageContext.request.userPrincipal.name}) �α׾ƿ�</a> --%>
						<a href="${pageContext.request.contextPath}/j_spring_security_logout">(${loginUser}) �α׾ƿ�</a>
						</s:authorize>
						<%-- </c:if> --%>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/joinus/join.htm">ȸ������</a>
					</li>
				</ul>
				<h3 class="hidden">ȸ���޴�</h3>
				<ul id="membermenu" class="clear">
					<li>
						<a href=""><img src="${pageContext.request.contextPath}/images/menuMyPage.png" alt="����������" /></a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/customer/notice.htm"><img src="${pageContext.request.contextPath}/images/menuCustomer.png" alt="������" /></a>
					</li>
				</ul>
			</div>
		</div>