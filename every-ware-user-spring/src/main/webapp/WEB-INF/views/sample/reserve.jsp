<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<main class="container-fluid sample-body">
	<nav class="menu_list">
		<div class="row">
		  <div class="col-10">
		    <div class="list-group" id="list-tab" role="tablist">
		      <a class="list-group-item list-group-item-action active" id="list-home-list" href="/sample/reserve" role="tab">예약</a>
		      <a class="list-group-item list-group-item-action" id="list-home-list" href="/sample/certificate" role="tab">증명서 발급</a>
		      <a class="list-group-item list-group-item-action" id="list-home-list" href="/sample/contract" role="tab">전자계약</a>
		      <!-- <a class="list-group-item list-group-item-action" id="list-home-list" href="/sample/rest" role="tab">연차 관리</a>
		      <a class="list-group-item list-group-item-action" id="list-home-list" href="/sample/report" role="tab">보고</a> -->
		    </div>
		  </div>
		</div>
	</nav>
	
	<div class="content">
		<table id="reserve" class="table table-hover table-bordered border-primary align-middle">
			<%--
			<colgroup>
				<col width="3%">
				<col width="5%">
				<col width="*">
				<col width="10%">
				<col width="10%">
				<col width="15%">
			</colgroup>
			--%>
			<thead>
				<tr>
					<th colspan="2"><span></span></th>
					<th colspan="2"><span>08:00</span></th>
					<th colspan="2"><span>09:00</span></th>
					<th colspan="2"><span>10:00</span></th>
					<th colspan="2"><span>11:00</span></th>
					<th colspan="2"><span>12:00</span></th>
					<th colspan="2"><span>13:00</span></th>
					<th colspan="2"><span>14:00</span></th>
					<th colspan="2"><span>15:00</span></th>
					<th colspan="2"><span>16:00</span></th>
					<th colspan="2"><span>17:00</span></th>
					<th colspan="2"><span>18:00</span></th>
				</tr>
			</thead>
			<tbody>
				<%--
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
						<td colspan="13">
							데이터가 존재하지 않습니다.
						</td>
					</tr>
				</c:if>
				--%>
				<tr>
				    <td colspan="2" class="header"><span>1번 회의실</span></td>
				    <td></td>
				    <td colspan="4">개발 1팀</td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				</tr>
				<tr>
				    <td colspan="2" class="header"><span>2번 회의실</span></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td colspan="2">디자인팀</td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
			    </tr>
				<tr>
				    <td colspan="2" class="header"><span>3번 회의실</span></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				</tr>
				<tr>
				    <td colspan="2" class="header"><span>4번 회의실</span></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				</tr>
				<tr>
				    <td colspan="2" class="header"><span>5번 회의실</span></td>
				    <td></td>
				    <td></td>
				    <td colspan="4">경영회의</td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				    <td></td>
				</tr>
			</tbody>
		</table>
	
		<!-- <footer aria-label="...">
		  <ul class="pagination flex_cc">
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li class="page-item active"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</footer> -->
	</div>
</main>