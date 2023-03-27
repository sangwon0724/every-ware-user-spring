<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header id="common_header">
	<span class="logo" onclick="command_action(main)">Every Ware</span>
	<div class="panel">
		<c:choose>
			<c:when test="${empty sessionScope.user}">
				<div>
					<i class="fa-solid fa-right-to-bracket" onclick="login()"></i>
				</div>
			</c:when>
			<c:when test="${not empty sessionScope.user}">
				<div class="tiles">
					<div class="desc">
						<span>[소속]</span>
					</div>
					<div class="name">
						<span>[이름]</span>
					</div>
					<div class="profile_img">
						<img src="" onerror="this.remove ? this.remove() : this.removeNode();"/>
					</div>
				</div>
				<div>
					<i class="fa-solid fa-right-from-bracket" onclick="logout()"></i>
				</div>
			</c:when>
		</c:choose>
	</div>
</header>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Expand at lg</a>
  <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="navbar-collapse collapse" id="navbarsExample05" style="">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown05" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
        <div class="dropdown-menu" aria-labelledby="dropdown05">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-md-0">
      <input class="form-control" type="text" placeholder="Search">
    </form>
  </div>
</nav>
<nav id="common_nav">
	<button class="dropbtn mydesk" onclick="command_action(main)">내 책상<i class="fa-solid fa-caret-down"></i></button>

	<div class="dropdown" >
		 <button class="dropbtn">업무연락<i class="fa-solid fa-caret-down"></i></button>
		 <div class="dropdown-content">
		    <a href="/contact/receive">수신함</a>
		    <a href="/contact/send">송신함</a>
		    <a href="/contact/all">전체함</a>
		    <a href="/contact/trash">휴지통</a>
		    <a href="/contact/write">업무연락 보내기</a>
		  </div>
	</div>
	<div class="dropdown">
		 <button class="dropbtn">전자결재<i class="fa-solid fa-caret-down"></i></button>
		 <div class="dropdown-content">
		    <a href="/paperwork/form">양식함</a>
		    <a href="/paperwork/write">작성함</a>
		    <a href="/paperwork/send">상신함</a>
		    <a href="/paperwork/referrer">참조함</a>
		    <a href="/paperwork/all">전체함</a>
		  </div>
	</div>
	<div class="dropdown">
		 <button class="dropbtn">일정관리<i class="fa-solid fa-caret-down"></i></button>
		 <div class="dropdown-content">
		    <a href="/schedule/all">전체 일정</a>
		    <a href="/schedule/team">팀 일정</a>
		    <a href="/schedule/personal">개인 일정</a>
		  </div>
	</div>
	<div class="dropdown">
		 <button class="dropbtn">게시판<i class="fa-solid fa-caret-down"></i></button>
		 <div class="dropdown-content">
		    <a href="/board/1">공지사항</a>
		  </div>
	</div>
	<div class="dropdown">
		 <button class="dropbtn">자료실<i class="fa-solid fa-caret-down"></i></button>
		 <div class="dropdown-content">
		    <a href="/warehouse/1">공유 자료실</a>
		  </div>
	</div>
	<div class="dropdown">
		 <button class="dropbtn">프로젝트 관리<i class="fa-solid fa-caret-down"></i></button>
		 <div class="dropdown-content">
		    <a href="/project/dashboard">프로젝트 현황</a>
		    <a href="/project/work">프로젝트 투입</a>
		    <a href="/project/accounting">프로젝트 회계</a>
		  </div>
	</div>
	<div class="dropdown">
		 <button class="dropbtn">마이페이지<i class="fa-solid fa-caret-down"></i></button>
		 <div class="dropdown-content">
		    <a href="/mypage/info">내 인사정보</a>
		    <a href="/mypage/attendance">출근부</a>
		    <a href="/mypage/annual">연차 관리</a>
		    <a href="/mypage/salary">급여 조회</a>
		    <a href="/mypage/certificate">증명서 발급</a>
		    <a href="/mypage/setting">설정</a>
		  </div>
	</div>
	<!-- <div class="dropdown">
		 <button class="dropbtn">부가 기능</button>
		 <div class="dropdown-content">
		    <a href="#">Link 1</a>
		    <a href="#">Link 2</a>
		    <a href="#">Link 3</a>
		  </div>
	</div> -->
</nav>