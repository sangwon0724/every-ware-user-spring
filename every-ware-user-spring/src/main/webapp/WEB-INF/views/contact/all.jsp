<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<main class="contact-body">
	<nav>
		<header>
			<span>업무연락</span>
		</header>
		<ul>
		    <li><a href="/contact/receive">수신함</a></li>
		    <li><a href="/contact/send">송신함</a></li>
		    <li class="active"><a href="/contact/all">전체함</a></li>
		    <li><a href="/contact/trash">휴지통</a></li>
		    <li><a href="/contact/write">업무연락 보내기</a></li>
		</ul>
	</nav>
	<div class="content">
		<header>
			<span>전체함</span>
		</header>
		<main>
			<table border="1">
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
						<th><i class="fa-solid fa-floppy-disk"></i></th>
						<th>제목</th>
						<th>받는이</th>
						<th>수신확인</th>
						<th>수신일시</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="item">
						<tr>
							<td><input type="checkbox" contact-seq=""/></td>
							<td><i class="fa-solid fa-floppy-disk"></i></td>
							<td><a href="/contact/receive/${item.contactIdx}">${item.title}</a><span class="comments">[9]</span></td>
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
		</main>
		<footer>
			<!-- 페이징 -->
		</footer>
	</div>
</main>