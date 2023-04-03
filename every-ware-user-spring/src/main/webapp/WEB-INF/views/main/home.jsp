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
					<span>4건</span>
				</div>
				<div>
					<span>결제 진행중</span>
					<span>4전</span>
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
			<button type="button" class="btn btn-primary me-3" onclick="">출근하기</button>
			<button type="button" class="btn btn-primary me-3" onclick="">퇴근하기</button>
		</footer>
	</nav>
	
	<div class="content">
		<article class="blog-post">
		</article>
	</div>
</main>