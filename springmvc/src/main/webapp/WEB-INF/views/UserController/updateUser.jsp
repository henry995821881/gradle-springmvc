<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>SpringMVC 更新用户</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/assets/css/bootstrap.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="/assets/js/html5shiv.min.js"></script>
    <script src="/assets/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <h1>SpringMVC 更新用户信息</h1>
    <hr/>

    <form:form action="/UserController/modifyUser/userP" method="post" commandName="userP" role="form">
        <div class="form-group">
            <label for="userName">userName:</label>
            <input type="text" class="form-control" id="userName" name="userName" placeholder="Enter userName:"
                   value="${user.userName}"/>
        </div>
        <div class="form-group">
            <label for="firstName">nickName:</label>
            <input type="text" class="form-control" id="firstName" name="nickName" placeholder="Enter FirstName:"
                   value="${user.nickName}"/>
        </div>
        <div class="form-group">
            <label for="lastName">emailAddress:</label>
            <input type="text" class="form-control" id="lastName" name="emailAddress" placeholder="Enter LastName:"
                   value="${user.emailAddress}"/>
        </div>
        <div class="form-group">
            <label for="address">password:</label>
            <input type="text" class="form-control" id="address" name="password" placeholder="Enter address:"
                   value="${user.password}"/>
        </div>
        <!-- 把 id 一并写入 userP 中 -->
        <input type="hidden" id="id" name="id" value="${user.id}"/>

        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-success">提交</button>
            <a type="button" class="btn btn-sm btn-success" href="/UserController/backToHome">返回</a>
        </div>
    </form:form>
</div>


<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="/assets/js/jquery-1.11.1.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="/assets/js/bootstrap.js"></script>
</body>
</html>