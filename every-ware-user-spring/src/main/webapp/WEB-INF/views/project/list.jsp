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
			<div class="content100">
				<table class="table table-hover table-bordered border-primary align-middle">
					<colgroup>
						<col width="10%">
						<col width="*">
						<col width="10%">
						<col width="15%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일자</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="item">
							<tr>
								<td>${item.idx}</td>
								<td><a href="/board/${currentCategory}/${item.idx}">${item.title}</a></td>
								<td>${item.writerUserName}</td>
								<td>${item.regDate}</td>
								<td>${item.views}</td>
							</tr>
						</c:forEach>
						<c:if test="${empty list or fn:length(list) eq 0}">
							<tr>
								<td colspan="5">
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
				  <a href="/project/write/project" class="btn btn-primary">프로젝트 등록</a>
				</footer>
			</div>
		</main>
    </div>
</body>
</html>