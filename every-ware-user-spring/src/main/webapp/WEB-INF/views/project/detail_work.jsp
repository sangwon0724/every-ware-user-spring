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
			
			<div class="content">
				<article class="blog-post">
			        <h2 class="blog-post-title">${detail.title}</h2>
			        
			        <p class="blog-post-meta">작성자 : ${detail.userName}</p>
			        <p class="blog-post-meta">작업단계 : ${detail.workflowName}</p>
			        <p class="blog-post-meta">시작일자 : ${detail.workDateSt}</p>
			        <p class="blog-post-meta">완료일자 : ${detail.workDateEd}</p>
			        <p class="blog-post-meta">담당자 : ${detail.targetUserName}</p>
			        
			        <div class="container-md p-3 mt-3 mb-3 border bg-light" style="background: white !important;">
			        	<c:out value="${detail.content}" escapeXml="false" />
			        </div>
			        
			        <p class="blog-post-meta">작성일시 : ${detail.regDate}</p>
			        
					<input type="hidden" id="beforeWorkflow" value="${detail.workflow}"/>
					<input type="hidden" id="beforeTargetUserIdx" value="${detail.targetUserIdx}"/>
			      </article>
			      <a href="/project/work${empty currentProject ? '' : '/'}${currentProject}" class="btn btn-primary me-3" onclick="login()">목록</a>
			      <button type="button" id="loadReplyForm" class="btn btn-primary me-3" onclick="loadReplyForm()">댓글 추가</button>
			      
			      <c:forEach items="${reply}" var="item">
			      		
						<article class="blog-post">
							<div class="container-md p-3 mt-3 mb-3 border bg-light" style="background: white !important;">
					        	<p class="blog-post-meta">작성자 : ${item.userName}</p>
					        	<p class="blog-post-meta">작성일시 : ${item.regDate}</p>
					        	
						        <div class="container-md p-3 mt-3 mb-3 border bg-light" style="background: white !important;">
						        	<c:out value="${item.content}" escapeXml="false" />
						        </div>
					        </div>
					        
				      </article>
			      </c:forEach>
			      
			      <article id="workForm" class="mt-3 mb-3">
						<form action="/project/work/reply/save" method="post">
							<div class="mb-3">
							  	<label for="workflow" class="form-label">작업단계</label>
								<select class="form-select" aria-label="Default select example" id="workflow" name="workflow">
								  <option value="" selected>선택해주세요.</option>
									<c:forEach items="${workflow}" var="item">${item}
								    	<option value="${item.code}"${item.code eq detail.workflow ? ' selected="selected"' : '' }>${item.value}</option>
									</c:forEach>
								</select>
							</div>
							<div class="mb-3">
							  	<label for="targetUserIdx" class="form-label">담당자</label>
								<select class="form-select" aria-label="Default select example" id="targetUserIdx" name="targetUserIdx">
								  <option value="" selected>선택해주세요.</option>
									<c:forEach items="${user}" var="item">
								    	<option value="${item.idx}"${item.idx eq detail.targetUserIdx ? ' selected="selected"' : '' }>${item.name} ${item.roleName}</option>
									</c:forEach>
								</select>
							</div>
							<div class="mb-3">
						  		<label for="summernote" class="form-label">내용</label>
						  		<textarea class="form-control" id="summernote" name="editordata"></textarea>
							</div>
							<input type="hidden" id="projectIdx" name="projectIdx" value="${detail.projectIdx}"/>
							<input type="hidden" id="workIdx" name="workIdx" value="${detail.idx}"/>
							<input type="hidden" id="content" name="content" value=""/>
							<input type="hidden" id="tempId" name="tempId" value=""/>
				      		<button type="button" class="btn btn-primary me-3" onclick="saveReplyForm()">저장</button>
				      		<button type="button" class="btn btn-primary me-3" onclick="cancleReplyForm()">취소</button>
						</form>
			      </article>
			</div>
		</main>
    </div>
    
    <script type="text/javascript">
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
					    ['table', ['table']],
					    ['para', ['ul', 'ol', 'paragraph']],
					    ['height', ['height']],
					    ['insert',['picture','link']],
					    ['view', ['codeview','fullscreen', 'help']]
					],
		            //콜백 함수
		            callbacks : { 
		            	onImageUpload : function(files, editor, welEditable) {
					            // 파일 업로드(다중업로드를 위해 반복문 사용)
					            for (var i = files.length - 1; i >= 0; i--) {
					            uploadSummernoteImageFile(files[i], this);
		            		}
		            	}
		            }
					//fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
					//fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
			  }); //summernote 종료
    	});
        
    	//이미지 등록
        function uploadSummernoteImageFile(file, el) {
			data = new FormData();
			data.append("file", file);
			data.append("projectIdx", $("#projectIdx").val());
			data.append("workIdx", $("#workIdx").val());
			data.append("tempId", $("#tempId").val());
			
			$.ajax({
				data : data,
				type : "POST",
				url : "/project/work/reply/file/save",
				contentType : false,
				enctype : 'multipart/form-data',
				processData : false,
				success : function(data) {
					$(el).summernote('editor.insertImage', data.url);
				}
			});
		}
    	
    	//댓글 추가 폼 보여주기
    	function loadReplyForm(){
			$("#workForm").addClass("active");
			$("#loadReplyForm").addClass("hide");
			$("#tempId").val(self.crypto.randomUUID());
    	}
    	
    	//댓글 저장
    	function saveReplyForm(){
			var workflow = $("#workflow").val();
			var targetUserIdx = $("#targetUserIdx").val();
			
			var content_value = $('#summernote').summernote('code');
			var content = "";
			
			if(workflow == ""){
				alert("작업단계를 선택해주세요.");
				$("#workflow").focus();
				return;
			}
			
			if(targetUserIdx == ""){
				alert("담당자를 선택해주세요.");
				$("#targetUserIdx").focus();
				return;
			}
			
			if(content_value == "" || content_value == "<p><br></p>"){
				alert("내용을 입력해주세요.");
				//$("#content").focus();
				return;
			}
			
			if(workflow == ""){
				alert("작업단계를 선택해주세요.");
				$("#workflow").focus();
				return;
			}
			
			if(workflow == ""){
				alert("작업단계를 선택해주세요.");
				$("#workflow").focus();
				return;
			}
			
			if(targetUserIdx == ""){
				alert("담당자를 선택해주세요.");
				$("#targetUserIdx").focus();
				return;
			}
			
			if(workflow != $("#beforeWorkflow").val()){
				var beforeWorkflowName = $("#workflow option[value="+$("#beforeWorkflow").val()+"]").text();
				var currentWorkflowName = $("#workflow option[value="+workflow+"]").text();
				content += "<p><strong>· 상태을(를) "+beforeWorkflowName+"에서 "+currentWorkflowName+"(으)로 변경하였습니다.</strong></p>";
			}
			
			if(targetUserIdx != $("#beforeTargetUserIdx").val()){
				var beforeTargetUserName = $("#targetUserIdx option[value="+$("#beforeTargetUserIdx").val()+"]").text();
				var currentTargetUserName = $("#targetUserIdx option[value="+targetUserIdx+"]").text();
				content += "<p><strong>· 담당자을(를) "+beforeTargetUserName+"에서 "+currentTargetUserName+"(으)로 변경하였습니다.</strong></p>";
			}
			
			content += content_value;
			$("#content").val(content);
			
			//ajax
			var option = {
			    dataType : 'json',
				type : "POST",
			    url: "/project/work/reply/save",
			    success: function(res){
			        //alert("등록이 완료되었습니다.""); //res Object안에 msg에는 결과 메시지가 담겨있습니다.
			        window.location.reload();
			    },
			    error: function(res){
			        console.log(res);
			        alert("에러가 발생했습니다.");
			    }
			};
			
			$("#workForm > form").ajaxSubmit(option);
    	}
    	
    	//댓글 추가 폼 숨기기
    	function cancleReplyForm(){
			$("#workForm").removeClass("active");
			$("#loadReplyForm").removeClass("hide");
    	}
    </script>
</body>
</html>