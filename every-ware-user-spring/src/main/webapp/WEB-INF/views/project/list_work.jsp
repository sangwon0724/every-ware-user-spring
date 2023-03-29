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
				<table class="table table-hover table-bordered border-primary align-middle">
					<colgroup>
						<col width="10%">
						<col width="*">
						<col width="20%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>프로젝트</th>
							<th>작성자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="item">
							<tr>
								<td>${item.idx}</td>
								<td><a href="/project/work/detail${empty currentProject ? '' : '/'}${empty currentProject ? '' : currentProject}/${item.idx}">${item.title}</a></td>
								<td>${item.userName}</td>
								<td>${item.regDate}</td>
							</tr>
						</c:forEach>
						<c:if test="${empty list or fn:length(list) eq 0}">
							<tr>
								<td colspan="4">
									데이터가 존재하지 않습니다.
								</td>
							</tr>
						</c:if>
					</tbody>
				</table>
			
				<footer aria-label="...">
				  <ul class="pagination flex_cc">
				    <!-- <li class="page-item">
				      <a class="page-link" href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li> -->
				    <li class="page-item active"><a class="page-link" href="#">1</a></li>
				    <!-- <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li> -->
				  </ul>
				  <a href="/project/write/work${not empty currentProject ? '/' : ''}${currentProject}" class="btn btn-primary">일감 등록</a>
				</footer>
			</div>
		</main>
    </div>
</body>
</html>