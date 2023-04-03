<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<main class="container-fluid sample-body">
	<nav class="menu_list">
		<div class="row">
		  <div class="col-10">
		    <div class="list-group" id="list-tab" role="tablist">
		      <a class="list-group-item list-group-item-action" id="list-home-list" href="/sample/reserve" role="tab">예약</a>
		      <a class="list-group-item list-group-item-action" id="list-home-list" href="/sample/certificate" role="tab">증명서 발급</a>
		      <a class="list-group-item list-group-item-action active" id="list-home-list" href="/sample/contract" role="tab">전자계약</a>
		      <!-- <a class="list-group-item list-group-item-action" id="list-home-list" href="/sample/rest" role="tab">연차 관리</a>
		      <a class="list-group-item list-group-item-action" id="list-home-list" href="/sample/report" role="tab">보고</a> -->
		    </div>
		  </div>
		</div>
	</nav>
	
	<div class="content">
		<table id="certificate" class="table table-hover table-bordered border-primary align-middle">
			<colgroup>
				<col width="5%">
				<col width="15%">
				<col width="15%">
				<col width="15%">
				<col width="15%">
				<col width="*">
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>계약서 종류</th>
					<th>요청 일자</th>
					<th>작성 일자</th>
					<th>상태</th>
					<th>작성·확인</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>근로계약서</td>
					<td>2023-03-22</td>
					<td>2023-03-22</td>
					<td>진행</td>
					<td><button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">작성</button></td>
				</tr>
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
	
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">보안서약서</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <p><strong>크림하우스주식회사</strong>(이하 'A'와) <input type="text" placeholder="홍길동" style="width: auto;"/>(이하 'B')은(는) 다음과 같이 근로계약을 체결합니다.</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">저장</button>
	      </div>
	    </div>
	  </div>
	</div>
</main>