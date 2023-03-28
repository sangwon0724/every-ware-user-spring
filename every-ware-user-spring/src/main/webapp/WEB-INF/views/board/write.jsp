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
			
			<div class="content write">
				<form action="/board/save" method="post" id="form">
					<div class="mb-3">
					  <label for="title" class="form-label">제목</label>
					  <input type="email" class="form-control" id="title" name="title" placeholder="제목을 입력해주세요.">
					</div>
					<div class="mb-3">
					  	<label for="receiver" class="form-label">수신대상</label>
						<select class="form-select" aria-label="Default select example" id="receiveUserIdx" name="receiveUserIdx">
						  <option value="" selected>수신대상을 선택해주세요.</option>
						  <option value="1">손경배 팀장</option>
						  <option value="2">김채원 대리</option>
						  <option value="3">인진교 실장</option>
						  <option value="4">이희규 상무</option>
						  <option value="5">송민수 팀장</option>
						  <option value="6">전진우 대리</option>
						</select>
					</div>
					<div class="mb-3">
					  <label for="content" class="form-label">내용</label>
					  <textarea class="form-control" id="content" name="content" rows="3"></textarea>
					</div>
					<div class="mb-3">
					  <label for="file" class="form-label">첨부파일</label>
					  <input class="form-control" type="file" id="file" name="file" multiple>
					</div>
					<div class="mb-3">
						<button type="button" class="btn btn-primary" onclick="save(event)">저장</button>
					</div>
				</form>
			</div>
		</main>
    </div>

	<script>
		/* 저장 */
		function save(e){
			event.preventDefault();
			
			var title = $("#title").val();
			var receiver = $("#receiveUserIdx").val();
			var content = $("#content").val();
			
			if(title == ""){
				alert("제목을 입력해주세요.");
				$("#title").focus();
				return;
			}
			
			if(receiver == ""){
				alert("수신 대상을 선택해주세요.");
				$("#receiver").focus();
				return;
			}
			
			if(content == ""){
				alert("내용을 입력해주세요.");
				$("#content").focus();
				return;
			}
			
			$("#form")[0].submit();
		}
	</script>
</body>
</html>