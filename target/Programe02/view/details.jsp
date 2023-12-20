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
    <link rel="stylesheet" href="<%=basePath%>/css/details.css">
    <link rel="stylesheet" href="<%=basePath%>/layui/css/layui.css">
    <script src="<%=basePath%>/js/jquery-3.7.1.js"></script>
    <title>Title</title>
</head>
<body>
    <div class="main">
        <!--此处放top组件-->
        <%@ include file="top.jsp"%>
        <div class="content">
            <div class="movieImg">
                <img src="<%=basePath%>img/${requestScope.movie.movieImg}" alt="">
            </div>
            <div class="movieInfo">
                <div style="font-weight: 700;">
                    <span style="font-size: 26px;height: 32px;line-height: 32px">${requestScope.movie.movieName}</span><br>
                    <span style="font-size: 18px">Be My Family</span>
                </div>
                <div class="Info_text">
                    <span>剧情 家庭</span>
                    <span>中国大陆 / 132分钟</span>
                    <span>2023-11-10 18:00中国大陆上映</span>
                </div>
                <div class="purchase">
                    <div style="height: 36px;display: flex;">
                        <div class="look_val">想看</div>
                        <div class="look_val" style="margin-left: 10px">评分</div>
                    </div>
                    <div class="buy_ticket" data-id="${requestScope.movie.id}">特惠购票</div>
                </div>
            </div>
            <div class="movieCore" style="color: white">
                <div style="font-size: 12px">猫眼口碑</div>
                <div class="myFlex_x" style="font-size: 30px;color: #f5deb3">
                    <div style="width: 30%;height: 100%;margin-right: 8px;padding: 1px">9.3</div>
                    <div style="width: 70%;height: 100%;letter-spacing: -2px;font-size: 10px">
                        <i class="layui-icon">&#xe67a</i>
                        <i class="layui-icon">&#xe67a</i>
                        <i class="layui-icon">&#xe67a</i>
                        <i class="layui-icon">&#xe67a</i>
                        <i class="layui-icon">&#xe6c9</i>
                        <div style="letter-spacing: 0;text-align: center">321321人评分</div>
                    </div>
                </div>
                <div style="font-size: 12px">累计票房</div>
                <div style="font-size: 33px">
                    <span>3.95</span>
                    <span style="font-size: 12px;margin-left: -5px">亿</span>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    $(".buy_ticket").click(function (){
        // $(this)  表示触发当前点击时间的标签对象
        var id = $(this).attr("data-id");
        window.location.href="<%=basePath%>/cinema?method=getCinema&id="+id;
    })
</script>
</html>