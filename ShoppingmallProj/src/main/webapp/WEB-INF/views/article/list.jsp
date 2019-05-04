<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body class="hold-transition skin-blue sidebar-mini layout-boxed">

<div class="wrapper">

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                자유게시판
            </h1>
        </section>

        <!-- Main content -->
        <section class="content container-fluid">

            <div class="col-lg-12">
                <div class="box box-primary">
                    <div class="box-body">
                        <table class="table table-bordered">
                            <tbody>
                            <tr>
                                <th style="width: 30px">#</th>
                                <th>제목</th>
                                <th style="width: 100px">작성자</th>
                                <th style="width: 150px">작성시간</th>
                                <th style="width: 60px">조회</th>
                            </tr>
                            <c:forEach items="${articles}" var ="article">
                            <tr>
                                <td>${article.articleNo}</td>
                                <td><a href="${path}/article/read?articleNo=${article.articleNo}">${article.title}</a></td>
                                <td>${article.writer}</td>
                                <td><fmt:formatDate value="${article.regDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                <td>${article.viewCnt}</td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="box-footer">
                        <div class="pull-right">
                            <button type="button" class="btn btn-success btn-flat" id="writeBtn">
                                <i class="fa fa-pencil"></i> 글쓰기
                            </button>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <!-- /.content -->
    </div>
</div>
<script>
    var result = "${msg}";
    if (result == "regSuccess") {
        alert("게시글 등록이 완료되었습니다.");
    } else if (result == "modSuccess") {
        alert("게시글 수정이 완료되었습니다.");
    } else if (result == "delSuccess") {
        alert("게시글 삭제가 완료되었습니다.");
    }
</script>
</body>
</html>