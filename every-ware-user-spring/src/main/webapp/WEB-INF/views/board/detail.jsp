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
    	<main class="container-fluid board-body">
			<nav class="menu_list">
				<div class="row">
				  <div class="col-10">
				    <div class="list-group" id="list-tab" role="tablist">
				    	<c:forEach items="${category}" var="item">
				      		<a class="list-group-item list-group-item-action${currentCategory eq item.categoryIdx ? ' active' : ''}" id="list-home-list" href="/board/${item.categoryIdx}" role="tab">${item.name}</a>
				    	</c:forEach>
				    </div>
				  </div>
				</div>
			</nav>
			
			<div class="content">
				<table class="table table-hover table-bordered border-primary align-middle">
					<colgroup>
						<col width="3%">
						<col width="5%">
						<col width="*">
						<col width="10%">
						<col width="10%">
						<col width="15%">
					</colgroup>
					<thead>
						<tr>
							<th><input type="checkbox" id="all_check"/></th>
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
								<td><input type="checkbox" board-seq="${item.boardIdx}"/></td>
								<td>234</td>
								<td><a href="/contact/receive/detail?idx=${item.boardIdx}">${item.title}</a></td>
								<td>${item.writerUserName}</td>
								<td>${item.readCount} / ${item.sendCount}</td>
								<td>${item.regDate}</td>
							</tr>
						</c:forEach>
						<c:if test="${empty list or fn:length(list) eq 0}">
							<tr>
								<td colspan="6">
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
				  <a href="/board/write/${currentCategory}" class="btn btn-primary">로그아웃</a>
				</footer>
			</div>
		</main>
    </div>
</body>
</html>