<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<main class="container-fluid dashboard-body">
	<nav class="info_menu">
		<header class="member_info bg-primary mb-3">
			<div>
				<span>크림하우스(주)</span>
				<span>이상원 주임</span>
			</div>
			<div>
				<div>
					<span>오늘 일정</span>
					<span>2개</span>
				</div>
				<div>
					<span>업무 건수</span>
					<span>1건</span>
				</div>
				<div>
					<span>결제 진행중</span>
					<span>0전</span>
				</div>
			</div>
		</header>
		<header class=" mt-3 mb-3">
			<span>주간누적 <span style="color: #0d6efd;font-weight: bold;">36h 12m 53s</span></span>
		</header>
		<main>
			<div class="container-md p-3 mt-3 mb-3 border bg-light worktime" style="background: white !important;">
	        	<div>
					<span><strong>출근시간</strong></span>
					<span>08:52:55</span>
	        	</div>
	        	<div><span><strong>→</strong></span></div>
	        	<div>
					<span><strong>퇴근시간</strong></span>
					<span>-</span>
	        	</div>
	        </div>
		</main>
		<footer>
			<button type="button" class="btn btn-outline-secondary me-3" onclick="" disabled>출근하기</button>
			<button type="button" class="btn btn-primary me-3" onclick="">퇴근하기</button>
		</footer>
	</nav>
	
	<div class="content">
		<div class="border bg-light mb-5" style="background: white !important;">
        	<header class="mt-3 mb-3">
        		<span><strong>공지사항</strong></span>
        	</header>
        	<table class="table table-hover align-left">
				<colgroup>
					<col width="22%">
					<col width="*">
					<col width="25%">
				</colgroup>
				<thead>
					<tr>
						<th>구분</th>
						<th>제목</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>시스템안내</td>
						<td>정식 업데이트 안내</td>
						<td>2022. 12. 22</td>
					</tr>
					<tr>
						<td>시스템안내</td>
						<td>[외부기관연동] 점검 예고 안내 드립니다.</td>
						<td>2022. 12. 20</td>
					</tr>
					<tr>
						<td>시스템안내</td>
						<td>정식 업데이트 안내</td>
						<td>2022. 11. 19</td>
					</tr>
					<tr>
						<td>시스템정보</td>
						<td>12월 온라인 교육 안내</td>
						<td>2021. 12. 17</td>
					</tr>
					<tr>
						<td>시스템안내</td>
						<td>정식 업데이트 안내</td>
						<td>2021. 10. 23</td>
					</tr>
				</tbody>
			</table>
        </div>
		<div class="border bg-light mb-5" style="background: white !important;">
        	<header class="mt-3 mb-3">
        		<span><strong>업무연락</strong></span>
        	</header>
        	<table class="table table-hover align-left">
				<colgroup>
					<col width="22%">
					<col width="*">
					<col width="25%">
				</colgroup>
				<thead>
					<tr>
						<th>작성자</th>
						<th>제목</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${receive_contact_list}" var="item" end="4">
						<tr>
							<td>${item.writerUserName}</td>
							<td>${item.title}</td>
							<td>${item.regDate}</td>
						</tr>
					</c:forEach>
					<c:if test="${empty receive_contact_list or fn:length(receive_contact_list) eq 0}">
						<tr>
							<td colspan="3">
								<span>데이터가 존재하지 않습니다.</span>
							</td>
						</tr>
					</c:if>
				</tbody>
			</table>
        </div>
		<div class="border bg-light mb-5" style="background: white !important;">
        	<header class="mt-3 mb-3">
        		<span><strong>전자결재 진행상황</strong></span>
        	</header>
        	<table class="table table-hover align-left">
				<colgroup>
					<col width="22%">
					<col width="*">
					<col width="25%">
				</colgroup>
				<thead>
					<tr>
						<th>구분</th>
						<th>제목</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="3" style="text-align: center;">
							<span>데이터가 존재하지 않습니다.</span>
						</td>
					</tr>
				</tbody>
			</table>
        </div>
		<div class="border bg-light mb-5" style="background: white !important;">
        	<header class="mt-3 mb-3">
        		<span><strong>일감 목록</strong></span>
        	</header>
        	<table class="table table-hover align-left">
				<colgroup>
					<col width="22%">
					<col width="*">
					<col width="25%">
				</colgroup>
				<thead>
					<tr>
						<th>프로젝트</th>
						<th>제목</th>
						<th>상태</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>LG 트윈스</td>
						<td>[개막준비] 시즌권 등록 프로세스</td>
						<td>해결</td>
					</tr>
				</tbody>
			</table>
        </div>
	</div>
</main>