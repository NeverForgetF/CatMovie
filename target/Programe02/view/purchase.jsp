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
        <%@ include file="top.jsp"%>
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
                <c:forEach items="${requestScope.purchaseList}" var="purchase">
                    <tr class="${purchase.divClass}">
                        <td>
                            <span class="startMovie">${purchase.startTime}</span><br>
                            <span class="endMovie">${purchase.endTime}</span>
                        </td>
                        <td>${purchase.reoVersion}</td>
                        <td>${purchase.playAddress}</td>
                        <td class="price">
                            <span>￥</span>${purchase.price}
                        </td>
                        <td><div class="select">选座购票</div></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>