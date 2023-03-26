<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
	<tiles:insertAttribute name="head" />
<body>
   	<tiles:insertAttribute name="header" />
    <div id="common-wrapper">
		<tiles:insertAttribute name="content" />
        <tiles:insertAttribute name="footer" />
    </div>
</body>
</html>