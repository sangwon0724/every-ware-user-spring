<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
	<c:import url="../layout/head.jsp"/>
<body>
	<c:import url="../layout/header.jsp"/>
    <div id="main-wrapper">
		<c:import url="../layout/nav.jsp"/>
        <!--**********************************
            Content body start
        ***********************************-->
		<div class="content-body">
			컨텐츠
		</div>
        <!--**********************************
            Content body end
        ***********************************-->
		<c:import url="../layout/footer.jsp"/>
    </div>
</body>
</html>