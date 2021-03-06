<%@ page pageEncoding="UTF-8" isELIgnored="false" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui-datepicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery-ui.css"/>
    <style>
        .error {
            font-size: 13px;
            color: red;
        }
    </style>
    <script type="text/javascript">
        $().ready(function () {
            $("#myform").validate({
                rules: {
                    name: {
                        required: true,
                    },
                    idcard: {
                        required: true,
                    },
                    phone: {
                        required: true,
                        number: true
                    }
                },
                messages: {
                    name: {
                        required: "姓名不能为空！",
                    },
                    idcard: {
                        required: "身份证号码不能为空！",
                    },
                    phone: {
                        required: "手机号码不能为空！",
                        number: "请输入正确的手机号码"
                    }
                }
            });
        })
    </script>
</head>
<body>

<div class="result-title">
    <h1>完善个人资料</h1>
</div>
<div class="result-content">
    <div class="sidebar-title">
        <form action="${pageContext.request.contextPath}/checkuserlist" method="post" id="myform"
              name="myform" enctype="multipart/form-data">
            <table class="insert-tab" width="100%">
                <tbody>
                <input type="hidden" name="id" value="${userlist.id}"/>
                <th><i class="require-red">*</i>姓名：</th>
                <td>
                    <input class="common-text required" value="${userlist.name}" id="name" name="name" size="50"
                           type="text">
                </td>
                </tr>
                <tr>
                    <th><i class="require-red">*</i>身份证号码：</th>
                    <td><input class="common-text" name="idcard" value="${userlist.idcard }" id="idcard" size="50"
                               type="text"></td>
                </tr>
                <tr>
                    <th><i class="require-red">*</i>手机号码：</th>
                    <td><input class="common-text" name="phone" value="${userlist.phone }" id="phone" size="50"
                               type="text"></td>
                </tr>
                <tr>
                    <th></th>
                    <td>
                        <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                        <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                    </td>
                </tr>
                <tr>
                    <font id="error" color="red">${error }</font>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>
</body>
</html>