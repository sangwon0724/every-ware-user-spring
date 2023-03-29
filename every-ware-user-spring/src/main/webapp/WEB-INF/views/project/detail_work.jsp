<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
	<c:import url="../layout/head.jsp"/>
<body>
	<c:import url="../layout/header.jsp"/>
    <div id="common-wrapper">
    	<main class="container-fluid project-body">
			<nav class="menu_list">
				<div class="row">
				  <div class="col-10">
				    <div class="list-group" id="list-tab" role="tablist">
			      		<a class="list-group-item list-group-item-action${empty currentProject ? ' active' : ''}" id="list-home-list" href="/project/work" role="tab">전체</a>
				    	<c:forEach items="${project}" var="item">
				      		<a class="list-group-item list-group-item-action${currentProject eq item.idx ? ' active' : ''}" id="list-home-list" href="/project/work/${item.idx}" role="tab">${item.name}</a>
				    	</c:forEach>
				    </div>
				  </div>
				</div>
			</nav>
			
			<div class="content">
				<article class="blog-post">
			        <h2 class="blog-post-title">${detail.title}</h2>
			        
			        <p class="blog-post-meta">작성자 : </p>
			        
			        <div class="container-md p-3 mt-3 mb-3 border bg-light" style="background: white !important;">
			        	<c:out value="${detail.content}" escapeXml="false" />
			        </div>
			        
			        <p class="blog-post-meta">작성일시 : ${detail.regDate}</p>
			      </article>
			</div>
		</main>
    </div>
</body>
</html>