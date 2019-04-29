<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<head>
    <script type="text/javascript" src="<c:url value="/resources/libs/jquery-1.12.4.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/libs/bootstrap.min.js"/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/libs/bootstrap.min.css"/>">
    <title>Home</title>
</head>
<body>
<div class="container">
    <div class="header">

        <h3 class="text-muted">Project name</h3>
    </div>

   <tiles:insertAttribute name="content" />

    <footer class="footer">
        <p>© 2016 Company, Inc.</p>
    </footer>
</div>
</body>
</html>
