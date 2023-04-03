<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<main class="container-fluid contact-body">
	<nav class="menu_list">
		<div class="row">
		  <div class="col-10">
		    <div class="list-group" id="list-tab" role="tablist">
		      <a class="list-group-item list-group-item-action" id="list-home-list" href="/contact/receive" role="tab">수신함</a>
		      <a class="list-group-item list-group-item-action" id="list-profile-list" href="/contact/send" role="tab">송신함</a>
		      <!-- <a class="list-group-item list-group-item-action" id="list-messages-list" href="/contact/all" role="tab">전체함</a>
		      <a class="list-group-item list-group-item-action" id="list-settings-list" href="/contact/trash" role="tab">휴지통</a> -->
		      <a class="list-group-item list-group-item-action active" id="list-settings-list" href="/contact/write" role="tab">업무연락 보내기</a>
		    </div>
		  </div>
		</div>
	</nav>
	
	<div class="content write">
		<form action="/contact/save" method="post" id="form">
			<div class="mb-3">
			  <label for="title" class="form-label">제목</label>
			  <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력해주세요.">
			</div>
			<div class="mb-3">
			  	<label for="receiver" class="form-label">수신대상</label>
				<select class="form-select" aria-label="Default select example" id="receiveUserIdx" name="receiveUserIdx">
				  <option value="" selected>선택</option>
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
		var receiver = $("#receiveUserIdx").val();
		var content = $('#summernote').summernote('code');
		
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
		
		if(content == "" || content == "<p><br></p>"){
			alert("내용을 입력해주세요.");
			//$("#content").focus();
			return;
		}
		
		$("#content").val(content);
		
		$("#form")[0].submit();
	}
</script>