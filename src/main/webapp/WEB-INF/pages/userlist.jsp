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
    <style type="text/css">
    </style>
    <script type="text/javascript">
        var error = "${param.error}";
        if (error == "deletesuccess") {
            alert("删除成功！");
        }

    </script>
</head>
<body>
<div>
    <div class="result-title">
        <h1>用户列表</h1>
    </div>
    <form id="houseForm" name="houseForm"
          action="${pageContext.request.contextPath}/findalluserlist" method=post>
        <div class="result-title">
            <div class="result-list">
            </div>
        </div>

        <div class="result-content">
            <table id=grid class="result-tab" width="100%">
                <tbody>
                <tr style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
                    <td>租客用户名</td>
                    <td>租客姓名</td>
                    <td>租客身份证号码</td>
                    <td>租客联系电话</td>
                    <td>操作</td>
                </tr>
                <c:forEach items="${userlist}" var="userlist">
                    <tr style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
                        <td>${userlist.user_id}</td>
                        <td>${userlist.name}</td>
                        <td>${userlist.idcard}</td>
                        <td>${userlist.phone}</td>
                        <td>
                            <a class="link-update"
                               href="${pageContext.request.contextPath}/deleteuserlist?id=${userlist.user.id}"
                               onclick="return window.confirm('确定删除吗？')">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <tr>
        <tr>
							<span id=pagelink>
								<div style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right; margin-top:10px">
									共[<B>${p.total}</B>]条记录，共[<B>${p.pages}</B>]页
									,
									<c:if test="${ p.pageNum > 1 }">
                                        [<A href="javascript:to_page(${p.prePage})">前一页</A>]
                                    </c:if>
										<input type="hidden" name="page" id="page" value=""/>
									第<B>${p.pageNum}</B>页

									<c:if test="${ p.pageNum < p.pages }">
                                        [<A href="javascript:to_page(${p.nextPage})">后一页</A>]
                                    </c:if>
								</div>
							</span>
        </tr>
        </tbody>
        </tbody>
    </form>
</div>
<script language=javascript>
    function to_page(page) {
        if (page) {
            $("#page").val(page);
        }
        document.houseForm.submit();
    }
</script>
</body>
</html>