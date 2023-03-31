<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header id="common_header">
	<span class="logo" onclick="command_action(main)">Every Ware</span>
	<div class="panel">
		<c:choose>
			<c:when test="${empty sessionScope.sessionInfo}">
				<button type="button" class="btn btn-primary me-3" onclick="login()">로그인</button>
			</c:when>
			<c:when test="${not empty sessionScope.sessionInfo}">
				<!-- <div class="tiles">
					<div class="desc">
						<span>[소속]</span>
					</div>
					<div class="name">
						<span>[이름]</span>
					</div>
					<div class="profile_img">
						<img src="" onerror="this.remove ? this.remove() : this.removeNode();"/>
					</div>
				</div> -->
				<button type="button" class="btn btn-primary me-3" onclick="logout()">로그아웃</button>
			</c:when>
		</c:choose>
	</div>
</header>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand dropdown-toggle" href="/">내 책상</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white !important;">
            업무연락
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
		    <li><a class="dropdown-item" href="/contact/receive">수신함</a></li>
		    <li><a class="dropdown-item" href="/contact/send">송신함</a></li>
		    <!-- <li><a class="dropdown-item" href="/contact/all">전체함</a></li>
		    <li><a class="dropdown-item" href="/contact/trash">휴지통</a></li> -->
		    <li><a class="dropdown-item" href="/contact/write">업무연락 보내기</a></li>
          </ul>
        </li>
        <!-- <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white !important;">
            전자결재
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
		    <li><a class="dropdown-item" href="/paperwork/form">양식함</a></li>
		    <li><a class="dropdown-item" href="/paperwork/write">작성함</a></li>
		    <li><a class="dropdown-item" href="/paperwork/send">상신함</a></li>
		    <li><a class="dropdown-item" href="/paperwork/referrer">참조함</a></li>
		    <li><a class="dropdown-item" href="/paperwork/all">전체함</a></li>
          </ul>
        </li> -->
        <!-- <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white !important;">
            일정관리
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
		    <li><a class="dropdown-item" href="/schedule/all">전체 일정</a></li>
		    <li><a class="dropdown-item" href="/schedule/team">팀 일정</a></li>
		    <li><a class="dropdown-item" href="/schedule/personal">개인 일정</a></li>
          </ul>
        </li> -->
        <li class="nav-item">
          <a class="nav-link dropdown-toggle active" aria-current="page" href="/board/1">게시판</a>
        </li>
        <!-- <li class="nav-item">
          <a class="nav-link dropdown-toggle active" aria-current="page" href="/warehouse/1">자료실</a>
        </li> -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white !important;">
            프로젝트 관리
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
		    <!-- <li><a class="dropdown-item" href="/project/dashboard">프로젝트 현황</a></li> -->
		    <li><a class="dropdown-item" href="/project/list">프로젝트 관리</a></li>
		    <li><a class="dropdown-item" href="/project/work">프로젝트 일감</a></li>
		    <!-- <li><a class="dropdown-item" href="/project/accounting">프로젝트 회계</a></li> -->
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white !important;">
            마이페이지
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
		    <!-- <li><a class="dropdown-item" href="/mypage/info">내 인사정보</a></li> -->
		    <li><a class="dropdown-item" href="/mypage/attendance">출근부</a></li>
		    <li><a class="dropdown-item" href="/mypage/annual">연차 관리</a></li>
		    <!-- <li><a class="dropdown-item" href="/mypage/salary">급여 조회</a></li> -->
		    <li><a class="dropdown-item" href="/mypage/certificate">증명서 발급</a></li>
		    <li><a class="dropdown-item" href="/mypage/setting">설정</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>