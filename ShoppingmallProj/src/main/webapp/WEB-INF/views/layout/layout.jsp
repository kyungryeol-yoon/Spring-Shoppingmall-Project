<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<head>
    <script type="text/javascript" src="<c:url value="/resources/libs/jquery-1.12.4.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/libs/bootstrap.min.js"/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/libs/bootstrap.min.css"/>">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/common.css"/>">

    <title>Home</title>
</head>
<body>
<div class="container">
    <div id="header" class="header">
        <div class="gnb">
            <ul>
                <li><a href="" target="_blank">+ BOOKMARK</a></li>
                <li><a href="">LOGIN</a></li>
                <li><a href="">ORDER</a></li>
                <li><a href="">MY-PAGE</a></li>
                <li><a href=""><i class="xi-market"></i></a></li>
            </ul>
        </div>
    </div>
    <ul id="nav" class="nav flex-column">
        <li class="nav-item logo">
            <a class="nav-link active" href="<c:url value='/'/>">로고</a>
        </li>
        <c:forEach var="categoryVo" items="${categorys}">
            <li class="nav-item" >
                <a class="nav-link active" href="<c:url value='/product/list/${categoryVo.category_idx}'/>">${categoryVo.name}</a>
            </li>
        </c:forEach>
    </ul>

    <div id="content">
        <tiles:insertAttribute name="content" />
    </div>


    <footer id="footer" class="footer">
        <p>© 2016 Company, Inc.</p>
    </footer>
</div>
</body>
</html>
