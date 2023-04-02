<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<main class="container-fluid sample-body">
	<nav class="menu_list">
		<div class="row">
		  <div class="col-10">
		    <div class="list-group" id="list-tab" role="tablist">
		      <a class="list-group-item list-group-item-action active" id="list-home-list" href="/sample/reserve" role="tab">예약</a>
		    </div>
		  </div>
		</div>
	</nav>
	
	<div class="content">
		<table class="table table-hover table-bordered border-primary align-middle">
			<colgroup>
				<col width="*">
				<col width="10%">
				<col width="10%">
				<col width="15%">
			</colgroup>
			<thead>
				<tr>
					<th>제목</th>
					<th>보낸이</th>
					<th>수신확인</th>
					<th>수신일시</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="item">
					<tr>
						<td><a href="/contact/receive/detail/${item.idx}">${item.title}</a></td>
						<td>${item.writerUserName}</td>
						<td>${item.readCount} / ${item.sendCount}</td>
						<td>${item.regDate}</td>
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
		</footer>
	</div>
</main>