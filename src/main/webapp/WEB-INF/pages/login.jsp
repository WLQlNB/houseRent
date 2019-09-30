<%@ page pageEncoding="UTF-8" isELIgnored="false" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>房屋租赁系统</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<div class="wrapper">
    <div class="container">
        <h1>房屋租赁系统</h1>
        <form class="form" id="loginform"
              action="${pageContext.request.contextPath}/logincheck" method="post">
            <div><input type="text" name="username" placeholder="用户名"></div>
            <div><input type="password" name="password" placeholder="密码"></div>
            <div>
                <label class="radio inline">
                    <input id="admin" type="radio" name="type" value="admin" checked/> 管理员
                </label>
                <label class="radio inline">
                    <input id="zuke" type="radio" name="type" value="zuke" }/> 租客
                </label>
            </div>
            <div>
                <button type="submit" id="login-button">登录</button>
            </div>
            <br/>
            <div>
                <button type="button" class="form-success"
                        onclick="javascrtpt:window.location.href='${pageContext.request.contextPath}/reg'">注册
                </button>
            </div>
        </form>
    </div>

</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/localization/messages_zh.js"></script>
<script type="text/javascript">
    $().ready(function () {
        $("#loginform").validate({
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
                    required: "请输入用户名",
                },
                password: {
                    required: "请输入密码",
                },
            }
        });
    })
    var error = "${error}";
    if (error == "error") {
        alert("帐户名或密码错误");
    }
</script>
</body>
</html>