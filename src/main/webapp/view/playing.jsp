<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <c:forEach items="${requestScope.list}" var="playing">
            <tr class="${(playing.id%2==0)?"HeadColor":""}">
                <td>
                    <span class="startMovie">
                        <fmt:formatDate pattern="HH:mm" value="${playing.playingTime}"/>
                    </span><br>
                    <span class="endMovie">20:41散场</span>
                </td>
                <td>国语2D</td>
                <td>${playing.playing}</td>
                <td class="price">
                    <span>￥</span>
                        ${requestScope.movie.getPriceByDiscount(playing.discount)}
                </td>
                <td><div class="select">选座购票</div></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>