<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
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
            <c:forEach items="${requestScope.yingTingList}" var="play" varStatus="loopStatus">
                <tr class="${(movie.id%2==0)?"HeadColor":""}">
                    <td>${play.playing}</td>
                    <td>国语2D</td>
                    <td>
                        <select class="startMovie" name="times" id="time-select" data-index="${loopStatus.index}">
                            <option id="flag" value="false">请选择观影时间--Time</option>
                            <c:forEach items="${requestScope.yingTingMovieList}" var="movie">
                                <c:if test="${movie.yingtingId==play.id}">
                                    <option class="opt" data-des="${movie.discount}">${movie.playingTime}</option>
                                </c:if>
                            </c:forEach>
                        </select>
                        <td class="price">
                            <span>￥</span>
                            <span class="discountPrice" style="font-size: 18px">${requestScope.movie.price}</span>
                        </td>
                    </td>
                    <td><div class="select">选座购票</div></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
<script>
    $(".startMovie").change(function (){
        var discount = $(this).find(".opt:selected").data("des");
        var price=${requestScope.movie.price};
        var index=$(this).attr("data-index");
        // console.log(index);
        if (discount !== undefined) {
            document.querySelectorAll(".discountPrice")[index].textContent=parseFloat(discount*price).toFixed(2);
        } else {
            // 如果没有选中项，可以进行相应的处理，例如清空输出
            document.querySelectorAll(".discountPrice")[index].textContent=price.toFixed(2);
        }
    })
</script>
</html>