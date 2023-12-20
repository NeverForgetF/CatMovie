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
    <link rel="stylesheet" href="<%=basePath%>/css/main.css">
<%--    引入layui框架   --%>
    <link rel="stylesheet" href="<%=basePath%>/layui/css/layui.css">
    <script src="<%=basePath%>/layui/layui.js"></script>
    <script src="<%=basePath%>/js/jquery-3.7.1.js"></script>
</head>
<body>
    <!-- 标签的属性，写在标签头-->
    <div class="main">
<%--        将top组件引入--%>
        <%@ include file="top.jsp"%>
        <div class="header-placeholder"></div>
        <div class="content">
            <div class="content_main">
                <div class="hotPlaying">
                    <div class="hotPlaying_title">
                        <span style="font-size: 26px">正在热映（49部）</span>
                        <div>
                            <span style="font-size: 14px">全部</span>
                            <span class="panel-arrow"></span>
                        </div>
                    </div>
                    <div class="hotPlaying_content">
<%--                        使用jstl技术将数据进行循环--%>
<%--                        从请求中获取数据的技术叫做EL表达式:${}  可以在内部写脚本代码  --%>
                        <c:forEach items="${requestScope.movieList}" var="movie">
<%--                            隐藏域技术：通过给标签设置自定义属性，来保存一些不铭感数据--%>
                            <div class="movie" data-id="${movie.id}">
                                <div class="movie_img">
                                    <img src="<%=basePath%>/img/${movie.movieImg}" alt="">
                                    <div class="movie_img_background"></div>
                                    <div  style="margin-right: 35px" class="movieName" title="${movie.movieName}">
                                        <div class="movieName_front"><span>${movie.movieName}</span></div>
                                        <div class="movieName_score">
                                            <i style="font-size: 18px">9.</i>
                                            <i style="font-size: 14px;margin-left: -5px">7</i>
                                        </div>
                                    </div>
                                    <div class="movie-ver">
                                        <img class="imax2d" src="<%=basePath%>/img/2d.png" alt="">
                                    </div>
                                </div>
                                <div class="movie_text">
                                    <span>购 票</span>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="todayTicket">
                    <div class="todayTicket_front">
                        <div class="todayTicket_title">
                            <span class="text_red_color" style="font-size: 26px">今日票房</span>
                        </div>
                        <div class="todayTicket_content">
                            <ul>
                                <li class="first_li">
                                    <div class="ticket_movie_img">
                                        <img src="<%=basePath%>/img/first.jpeg" alt="">
                                        <div class="icon_king">
                                            <img src="<%=basePath%>/img/top_icon.png" alt="">
                                        </div>
                                    </div>
                                    <div class="ticket_movie_text">
                                        <span>坚如磐石</span>
                                        <span class="text_red_color" style="margin-top: 10px">6912.65万</span>
                                    </div>
                                </li>
                                <li class="another_li">
                                    <div class="for_li">
                                        <div class="li_in">
                                            <i class="ranking-index">2</i>
                                            <span>前任4：英年早婚</span>
                                        </div>
                                        <div>
                                            <span class="text_red_color">5946.51万</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="another_li">
                                    <div class="for_li">
                                        <div class="li_in">
                                            <i class="ranking-index">3</i>
                                            <span>志愿军：雄兵出击</span>
                                        </div>
                                        <div>
                                            <span class="text_red_color">4363.43万</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="another_li">
                                    <div class="for_li">
                                        <div class="li_in">
                                            <i class="ranking-index" style="color: #999;">4</i>
                                            <span>莫斯科行动</span>
                                        </div>
                                        <div>
                                            <span class="text_red_color">3770.43万</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="another_li">
                                    <div class="for_li">
                                        <div class="li_in">
                                            <i class="ranking-index" style="color: #999;">5</i>
                                            <span class="ranking-movie-name">汪汪队立大功大电影2：超能大冒险</span>
                                        </div>
                                        <div>
                                            <span class="text_red_color">1062.34万</span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="todayTicket_after">
                        <h3>今日大盘</h3>
                        <div class="top_and_bottom">
                            <div class="and_top">
                                <div class="top-front">
                                    <span class="text_red_color" style="font-size: 30px;font-weight: 500;">2.38</span>
                                    <span class="text_red_color">亿</span>
                                </div>
                                <div class="top-hou">
                                    <span class="text_red_color">查看更多</span>
                                    <span class="panel-arrow" style="margin-left: -5px;"></span>
                                </div>
                            </div>
                            <div class="and_bottom text_red_color">
                                <span>北京时间 17:08:31</span>
                                <span>猫眼专业版实时票房数据</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    //  点击电影，跳转详情页面
    $(".movie").click(function (){
        // 获取当前电影的自定义属性，电影id
        // $(this)  表示触发当前点击事件的标签对象
        var id = $(this).attr("data-id")
        window.open("<%=basePath%>/movie?method=getMovie&id="+id);
    })
</script>
<%--<!-- 引入 JavaScript 文件 -->--%>
<%--<script src="<%=basePath%>/js/main.js"></script>--%>
</html>