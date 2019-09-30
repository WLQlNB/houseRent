<%@ page pageEncoding="UTF-8" isELIgnored="false" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<div class="wrapper">
    <div class="container">
        <h1>注册</h1>
        <form class="form" id="regform"
              action="${pageContext.request.contextPath}/doReg" method="post">
            <div><input type="text" name="userName" placeholder="姓名"></div>
            <div><input type="password" name="password" placeholder="密码"></div>
            <div>
                <button type="submit" id="login-button">确定</button>
            </div>
        </form>
    </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/localization/messages_zh.js"></script>
<script type="text/javascript">
    $().ready(function () {
        $("#regform").validate({
            rules: {
                username: {
                    required: true,
                },
                password: {
                    required: true,
                },
            },
            messages: {
                username: {
                    required: "请输入姓名",
                },
                password: {
                    required: "请输入密码",
                },
            }
        });
    })
</script>
</body>
</html>