<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>用户的微博列表页</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link href="../bootstrap-datepicker-1.6.4-dist/css/bootstrap-datepicker.css" rel="stylesheet" media="screen">
    <script src="../bootstrap-datepicker-1.6.4-dist/js/bootstrap-datepicker.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <h1>用户的微博列表页</h1>
    <hr/>

    <a href="${pageContext.request.contextPath}/admin/blogs/show" type="button" class="btn btn-sm btn-success">微博详情页</a>
    <a href="${pageContext.request.contextPath}/admin/blogs/add" type="button" class="btn btn-sm btn-warning">添加</a>
    <a href="${pageContext.request.contextPath}/admin/blogs/update" type="button" class="btn btn-sm btn-warning">修改</a>
    <a href="${pageContext.request.contextPath}/admin/blogs/delete" type="button" class="btn btn-sm btn-danger">删除</a>
    <a href="${pageContext.request.contextPath}/admin/blogs/showRepostList" type="button" class="btn btn-sm btn-warning">转发列表页</a>
    <a href="${pageContext.request.contextPath}/admin/blogs/showCommentList" type="button" class="btn btn-sm btn-warning">评论列表页</a>
    <a href="${pageContext.request.contextPath}/admin/blogs/showFabUserList" type="button" class="btn btn-sm btn-warning">点赞用户列表页</a>
    <a href="${pageContext.request.contextPath}/admin/blogs/share" type="button" class="btn btn-sm btn-warning">分享</a>

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>