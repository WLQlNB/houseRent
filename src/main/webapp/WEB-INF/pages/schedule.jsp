<%@ page pageEncoding="UTF-8" isELIgnored="false" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery-ui.css"/>
    <style type="text/css">


    </style>

</head>
<body>
<div class="result-title">
    <h1>日程列表</h1>
</div>
<div>
    <form id="houseForm" name="houseForm"
          action="${pageContext.request.contextPath}/schedule/selectAll" method=post>
        <div class="result-title">
            <div class="result-list">
            </div>
        </div>
        <div class="result-content">
            <table id=grid
                   class="result-tab" width="100%">
                <tbody>
                <tr style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
                    <td>日期</td>
                    <td>日程</td>
                    <td>操作</td>
                </tr>
                <c:forEach items="${schedule}" var="schedule">
                    <tr style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
                        <td>${schedule.date}</td>
                        <td>${schedule.content}</td>
                        <td>
                            <a class="link-update"
                               href="${pageContext.request.contextPath}/schedule/toupdate?id=${schedule.id}">修改</a>
                            <input type="hidden" name="id" value="${houselist.id}"/>
                            <a class="link-del"
                               href="${pageContext.request.contextPath}/schedule/deleteschedule?id=${schedule.id}"
                               onclick="return window.confirm('确定删除吗？')"
                            >删除</a></td>
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
									共[<B>${p.total}</B>]条记录，共[<B>${p.pages}</B>]页,
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
    // 提交分页的查询的表单
    function to_page(page) {
        if (page) {
            $("#page").val(page);
        }
        document.houseForm.submit();
    }
</script>
</body>
</html>