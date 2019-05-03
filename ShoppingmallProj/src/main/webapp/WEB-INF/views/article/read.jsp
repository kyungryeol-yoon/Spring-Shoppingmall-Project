<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<body>
<div class="col-lg-12">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">글제목 : ${article.title}</h3>
        </div>
        <div class="box-body" style="height: 700px">
            ${article.content}
        </div>
        <div class="box-footer">
            <div class="user-block">
                <img class="img-circle img-bordered-sm" src="/dist/img/user1-128x128.jpg" alt="user image">
                <span class="username">
                    <a href="#">${article.writer}</a>
                </span>
                <span class="description"><fmt:formatDate pattern="yyyy-MM-dd a HH:mm" value="${article.regDate}"/></span>
            </div>
        </div>
        <div class="box-footer">
            <form role="form" method="post">
                <input type="hidden" name="articleNo" value="${article.articleNo}">
            </form>
            <button type="submit" class="btn btn-primary listBtn"><i class="fa fa-list"></i> 목록</button>
            <div class="pull-right">
                <button type="submit" class="btn btn-warning modBtn"><i class="fa fa-edit"></i> 수정</button>
                <button type="submit" class="btn btn-danger delBtn"><i class="fa fa-trash"></i> 삭제</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
