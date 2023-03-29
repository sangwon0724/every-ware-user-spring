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
    	<main class="container-fluid project-body" style="justify-content: center;">
			<div class="content">
				<article class="blog-post">
			        <h2 class="blog-post-title">${detail.name}</h2>
			        
			        <p class="blog-post-meta mt-1">주관 팀 : </p>
			        <div class="container-md p-3 mt-1 mb-3 ms-0 me-0 border bg-light" style="background: white !important; width: 30vw;">
			        	<span></span>
			        </div>
			        
			        <p class="blog-post-meta mt-1">PM : </p>
			        <div class="container-md p-3 mt-1 mb-3 ms-0 me-0 border bg-light" style="background: white !important; width: 30vw;">
			        	<span></span>
			        </div>
			        
			        <p class="blog-post-meta mt-1">PL : </p>
			        <div class="container-md p-3 mt-1 mb-3 ms-0 me-0 border bg-light" style="background: white !important; width: 30vw;">
			        	<span></span>
			        </div>
			        
			        <p class="blog-post-meta mt-1">발주처 : </p>
			        <div class="container-md p-3 mt-1 mb-3 ms-0 me-0 border bg-light" style="background: white !important; width: 30vw;">
			        	<span></span>
			        </div>
			        
			        <p class="blog-post-meta mt-1">작업단계 : </p>
			        <div class="container-md p-3 mt-1 mb-3 ms-0 me-0 border bg-light" style="background: white !important; width: 30vw;">
			        	<span>${detail.workflowName}</span>
			        </div>
			        
			        <p class="blog-post-meta mt-1">계획기간 : </p>
			        <div class="container-md p-3 mt-1 mb-3 ms-0 me-0 border bg-light" style="background: white !important; width: 30vw;">
			        	<span>${detail.planDateSt}</span><c:if test="${not empty detail.planDateSt or not empty detail.planDateEd}"><span> ~ </span></c:if><span>${detail.planDateEd}</span>
			        </div>
			        
			        <p class="blog-post-meta mt-1">계약금액 : </p>
			        <div class="container-md p-3 mt-1 mb-3 ms-0 me-0 border bg-light" style="background: white !important; width: 30vw;">
			        	<span>${detail.contractAmount}</span>
			        </div>
			        
			        <p class="blog-post-meta mt-1">실행예산 : </p>
			        <div class="container-md p-3 mt-1 mb-3 ms-0 me-0 border bg-light" style="background: white !important; width: 30vw;">
			        	<span>${detail.workAmount}</span>
			        </div>
			        
			        <p class="blog-post-meta mt-1">투입인원 수 : </p>
			        <div class="container-md p-3 mt-1 mb-3 ms-0 me-0 border bg-light" style="background: white !important; width: 30vw;">
			        	<span>${detail.workUserCount}</span>
			        </div>
			        
			        <p class="blog-post-meta mt-1">개요 : </p>
			        <div class="container-md p-3 mt-1 mb-3 ms-0 me-0 border bg-light" style="background: white !important; width: 30vw;">
			        	<span>${detail.outline}</span>
			        </div>
			        
			        <p class="blog-post-meta mt-1">특이사항 : </p>
			        <div class="container-md p-3 mt-1 mb-3 ms-0 me-0 border bg-light" style="background: white !important; width: 30vw;">
			        	<span>${detail.significant}</span>
			        </div>
			        
			    </article>
			      
				<a href="/project/list" class="btn btn-primary me-3">목록</a>
			</div>
		</main>
    </div>
</body>
</html>