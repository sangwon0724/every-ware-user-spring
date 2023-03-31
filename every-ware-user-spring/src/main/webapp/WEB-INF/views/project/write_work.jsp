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
				<form action="/project/work/save" method="post" id="form">
					<div class="mb-3">
					  	<label for="projectIdx" class="form-label">프로젝트</label>
						<select class="form-select" aria-label="Default select example" id="projectIdx" name="projectIdx">
						  <option value="" selected>선택해주세요.</option>
					    	<c:forEach items="${project}" var="item">
					      		<option value="${item.idx}"${currentProject eq item.idx ? ' selected="selected"' : ''}>${item.name}</option>
					    	</c:forEach>
						</select>
					</div>
					<div class="mb-3">
					  	<label for="workflow" class="form-label">작업단계</label>
						<select class="form-select" aria-label="Default select example" id="workflow" name="workflow">
						  <option value="" selected>선택해주세요.</option>
							<c:forEach items="${workflow}" var="item">${item}
						    	<option value="${item.code}">${item.value}</option>
							</c:forEach>
						</select>
					</div>
					<div class="mb-3">
					  	<label class="form-label">작업기간</label>
						<div class="planDate">
	   						<input type="text" id="planDateSt" name="planDateSt" class="form-control" value="" autocomplete="off" readonly="readonly"/>
	   						<span> ~ </span>
	   						<input type="text" id="planDateEd" name="planDateEd" class="form-control" value="" autocomplete="off" readonly="readonly"/>
						</div>
					</div>
					<div class="mb-3">
					  	<label for="targetUserIdx" class="form-label">담당자</label>
						<select class="form-select" aria-label="Default select example" id="targetUserIdx" name="targetUserIdx">
						  <option value="" selected>선택해주세요.</option>
							<c:forEach items="${user}" var="item">
						    	<option value="${item.idx}">${item.name} ${item.roleName}</option>
							</c:forEach>
						</select>
					</div>
					<div class="mb-3">
					  <label for="title" class="form-label">제목</label>
					  <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력해주세요.">
					</div>
					<div class="mb-3">
					  <label for="content" class="form-label">내용</label>
					  <textarea class="form-control" id="summernote" name="editordata"></textarea>
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
			  
			   $('#planDateSt')
			      .datepicker({
			         format: 'yyyy-mm-dd', //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
			         startDate: '-10y', //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
			         endDate: '+10y', //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
			         autoclose: true, //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
			         calendarWeeks: false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
			         clearBtn: false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
			         disableTouchKeyboard: false, //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
			         immediateUpdates: false, //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false
			         templates: {
			            leftArrow: '&laquo;',
			            rightArrow: '&raquo;',
			         }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징
			         showWeekDays: true, // 위에 요일 보여주는 옵션 기본값 : true
			         todayHighlight: true, //오늘 날짜에 하이라이팅 기능 기본값 :false
			         toggleActive: true, //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
			         weekStart: 0, //달력 시작 요일 선택하는 것 기본값은 0인 일요일
			         language: 'ko', //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
			      });
			  
			   $('#planDateEd')
			      .datepicker({
			         format: 'yyyy-mm-dd', //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
			         startDate: '-10y', //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
			         endDate: '+10y', //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
			         autoclose: true, //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
			         calendarWeeks: false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
			         clearBtn: false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
			         disableTouchKeyboard: false, //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
			         immediateUpdates: false, //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false
			         templates: {
			            leftArrow: '&laquo;',
			            rightArrow: '&raquo;',
			         }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징
			         showWeekDays: true, // 위에 요일 보여주는 옵션 기본값 : true
			         todayHighlight: true, //오늘 날짜에 하이라이팅 기능 기본값 :false
			         toggleActive: true, //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
			         weekStart: 0, //달력 시작 요일 선택하는 것 기본값은 0인 일요일
			         language: 'ko', //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
			      });
		}); //ready 종료
	
		/* 저장 */
		function save(e){
			event.preventDefault();

			var projectIdx = $("#projectIdx").val();
			var workflow = $("#workflow").val();
			var targetUserIdx = $("#targetUserIdx").val();
			var title = $("#title").val();
			
			var content = $('#summernote').summernote('code');
			
			if(projectIdx == ""){
				alert("프로젝트를 선택해주세요.");
				$("#projectIdx").focus();
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
			
			if(title == ""){
				alert("제목을 입력해주세요.");
				$("#title").focus();
				return;
			}
			
			$("#content").val(content);
			
			$("#form")[0].submit();
		}
	</script>
</body>
</html>