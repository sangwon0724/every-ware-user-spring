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
    	<main class="container-fluid project-body">
			<nav class="menu_list">
				<div class="row">
				  <div class="col-10">
				    <div class="list-group" id="list-tab" role="tablist">
			      		<a class="list-group-item list-group-item-action${empty currentProject ? ' active' : ''}" id="list-home-list" href="/project/work" role="tab">전체</a>
				    	<c:forEach items="${project}" var="item">
				      		<a class="list-group-item list-group-item-action${currentProject eq item.idx ? ' active' : ''}" id="list-home-list" href="/project/work/${item.idx}" role="tab">${item.name}</a>
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
					  	<label for="receiver" class="form-label">카테고리</label>
						<select class="form-select" aria-label="Default select example" id="categoryIdx" name="categoryIdx">
						  <option value="" selected>게시글 유형을 선택해주세요.</option>
					    	<c:forEach items="${category}" var="item">
					      		<option value="${item.categoryIdx}"${currentCategory eq item.categoryIdx ? ' selected="selected"' : ''}>${item.name}</option>
					    	</c:forEach>
						</select>
					</div>
					<div class="mb-3">
					  <label for="content" class="form-label">내용</label>
					  <textarea class="form-control" id="summernote" name="editordata"></textarea>
					</div>
					<div class="mb-3">
					  <label for="file" class="form-label">첨부파일</label>
					  <input class="form-control" type="file" id="file" name="file" multiple>
					</div>
					<div class="mb-3">
						<button type="button" class="btn btn-primary" onclick="save(event)">저장</button>
					</div>
					
					<input type="hidden" id="content" name="content" value=""/>
				</form>
			</div>
		</main>
    </div>

	<script>
		$(document).ready(function(){
			$('#summernote').summernote({
				  height: 300,
				  lang: 'ko-KR',
				  toolbar: [
					    // [groupName, [list of button]]
					    ['style', ['bold', 'italic', 'underline', 'clear']],
					    ['font', ['strikethrough', 'superscript', 'subscript']],
					    ['fontsize', ['fontsize']],
					    ['color', ['color']],
					    ['para', ['ul', 'ol', 'paragraph']],
					    ['height', ['height']]
					],
					//fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
					//fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
			  }); //summernote 종료
		}); //ready 종료
	
		/* 저장 */
		function save(e){
			event.preventDefault();
			
			var title = $("#title").val();
			var categoryIdx = $("#categoryIdx").val();
			var content = $('#summernote').summernote('code');
			
			if(title == ""){
				alert("제목을 입력해주세요.");
				$("#title").focus();
				return;
			}
			
			if(categoryIdx == ""){
				alert("카테고리를 선택해주세요.");
				$("#categoryIdx").focus();
				return;
			}
			
			if(content == "" || content == "<p><br></p>"){
				alert("내용을 입력해주세요.");
				//$("#content").focus();
				return;
			}
			
			$("#content").val(content);
			
			$("#form")[0].submit();
		}
	</script>
</body>
</html>