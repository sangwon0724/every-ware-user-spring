<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<main class="container-fluid contact-body">
	<nav class="menu_list">
		<div class="row">
		  <div class="col-10">
		    <div class="list-group" id="list-tab" role="tablist">
		      <a class="list-group-item list-group-item-action${category eq 'receive' ? ' active' : ''}" id="list-home-list" href="/contact/receive" role="tab">수신함</a>
		      <a class="list-group-item list-group-item-action${category eq 'send' ? ' active' : ''}" id="list-profile-list" href="/contact/send" role="tab">송신함</a>
		      <!-- <a class="list-group-item list-group-item-action${category eq 'all' ? ' active' : ''}" id="list-messages-list" href="/contact/all" role="tab">전체함</a>
		      <a class="list-group-item list-group-item-action"${category eq 'trash' ? ' active' : ''} id="list-settings-list" href="/contact/trash" role="tab">휴지통</a> -->
		      <a class="list-group-item list-group-item-action" id="list-settings-list" href="/contact/write" role="tab">업무연락 보내기</a>
		    </div>
		  </div>
		</div>
	</nav>
	
	<div class="content">
		<article class="blog-post">
	        <h2 class="blog-post-title">${detail.title}</h2>
	        
	        <p class="blog-post-meta">작성자 : ${detail.writerUserName}</p>
	        
	        <div class="container-md p-3 mt-3 mb-3 border bg-light" style="background: white !important;">
	        	<c:out value="${detail.content}" escapeXml="false" />
	        </div>
	        
	        <p class="blog-post-meta">작성일시 : ${detail.regDate}</p>
	      </article>
	</div>
</main>