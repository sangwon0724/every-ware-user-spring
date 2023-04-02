<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<main class="container-fluid sample-body">
	<nav class="menu_list">
		<div class="row">
		  <div class="col-10">
		    <div class="list-group" id="list-tab" role="tablist">
		      <a class="list-group-item list-group-item-action" id="list-home-list" href="/sample/reserve" role="tab">예약</a>
		      <a class="list-group-item list-group-item-action active" id="list-home-list" href="/sample/certificate" role="tab">증명서 발급</a>
		    </div>
		  </div>
		</div>
	</nav>
	
	<div class="content">
		<table id="certificate" class="table table-hover table-bordered border-primary align-middle">
			<colgroup>
				<col width="15%">
				<col width="15%">
				<col width="15%">
				<col width="15%">
				<col width="*">
			</colgroup>
			<thead>
				<tr>
					<th>증명서 종류</th>
					<th>용도</th>
					<th>발급요청 일자</th>
					<th>상태</th>
					<th>발급</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>경력증명서</td>
					<td>은행제출</td>
					<td>2023-03-22</td>
					<td>대기</td>
					<td>-</td>
				</tr>
				<tr>
					<td>재직증명서</td>
					<td>은행제출</td>
					<td>2023-03-22</td>
					<td>승인</td>
					<td><button type="button" class="btn btn-primary" onclick="">발급</button></td>
				</tr>
				<tr>
					<td>경력증명서</td>
					<td>은행제출</td>
					<td>2022-12-18</td>
					<td>발급기간 초과</td>
					<td>-</td>
				</tr>
				<tr>
					<td>원천징수영수증</td>
					<td>은행제출</td>
					<td>2022-09-20</td>
					<td>발급기간 초과</td>
					<td>-</td>
				</tr>
				<tr>
					<td>재직증명서</td>
					<td>은행제출</td>
					<td>2022-09-03</td>
					<td>발급기간 초과</td>
					<td>-</td>
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
</main>