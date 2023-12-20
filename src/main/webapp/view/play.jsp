<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    /*获取项目的根路径*/
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://" + request.getServerName()+":"+request.getServerPort()+path+"/";
    /*basePath就是得到的跟路径类似于：http://localhost:8081/pinduoduo/*/
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="<%=basePath%>/css/purchase.css">
    <script src="<%=basePath%>/js/jquery-3.7.1.js"></script>
</head>
<body>
    <div class="main">
        <table class="plist">
            <thead>
                <tr>
                    <th>放映时间</th>
                    <th>语言版本</th>
                    <th>放映厅</th>
                    <th>售价（元）</th>
                    <th>选座购票</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.yingTingList}" var="play">
                    <c:forEach items="${requestScope.yingTingMovieList}" var="movie">
                        <c:if test="${movie.yingtingId==play.id}">
                            <tr class="${(movie.id%2==0)?"HeadColor":""}">
                                <td>
                                    <span class="startMovie">${movie.playingTime}</span><br>
                                    <span class="endMovie">20:41散场</span>
                                </td>
                                <td>国语2D</td>
                                <td>${play.playing}</td>
                                <td class="price">
                                    <span>￥</span>38
                                </td>
                                <td><div class="select">选座购票</div></td>
                            </tr>
                        </c:if>
                    </c:forEach>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
<script>
    // 在页面加载时执行的函数
    window.onload = function() {
        // 获取所有具有 "dd" 类的元素
        var dateTimeElements = document.querySelectorAll('.startMovie');

        // 遍历所有选中的元素
        dateTimeElements.forEach(function(dateTimeElement) {
            // 获取元素的文本内容
            var dateTimeString = dateTimeElement.innerText;

            // 将 "T" 替换为空格
            var formattedDateTime = dateTimeString.replace('T', ' ');

            // 将替换后的内容设置回元素
            dateTimeElement.innerText = formattedDateTime;
        });
    };
</script>
</html>