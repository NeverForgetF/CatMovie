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
    <link rel="stylesheet" href="<%=basePath%>/css/cinema.css">
    <script src="<%=basePath%>/js/jquery-3.7.1.js"></script>
</head>
<body>
    <div class="main">
        <%@ include file="top.jsp"%>
        <div class="content myFlex_y">
            <div class="title">
                <span style="margin-left: 5px">影院列表</span>
            </div>
            <div class="cinemaList">
                <c:forEach items="${requestScope.cinemaList}" var="cinema">
                    <div class="cinema">
                        <div class="information">
                            <span>${cinema.cinema}</span>
                            <span>地址：${cinema.address}</span>
                            <span>
                                <c:forEach items="${cinema.type.split(',')}" var="item">
                                    <span class="type">${item}</span>
                                </c:forEach>
                            </span>
                        </div>
                        <div class="ticket myFlex_x">
                            <span>${requestScope.movie.getPriceByDiscount(cinema.discount)}</span>
                            <input class="buyTicket" data-hall="${cinema.id}" data-id="${requestScope.movie.id}" type="button" value="选座购票">
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</body>
<%--  自己写的  --%>
<script>
    $(".buyTicket").click(function (){
        var cinemaId = $(this).attr("data-hall");
        var movieId = $(this).attr("data-id");
        window.location.href="<%=basePath%>/playing?method=getPlayingTwo&cinemaId="+cinemaId+"&movieId="+movieId;
    })
</script>
<%--  自己写的  --%>
</html>