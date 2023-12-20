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
    <link rel="stylesheet" href="<%=basePath%>/css/chooseSeat.css">
    <link rel="stylesheet" href="<%=basePath%>/css/public.css">
    <script src="<%=basePath%>/js/jquery-3.7.1.js"></script>
</head>
<body>
    <div class="main">
<!--        这里放top-->
        <%@ include file="top.jsp"%>
        <div class="content">
            <div class="chooseSeat">
                <div class="screenCenter">银幕中央</div>
                <div class="seatSetting">
                    <div class="leftSetting">
                        <span>1排</span>
                        <span>2排</span>
                        <span>3排</span>
                        <span>4排</span>
                        <span class="colTop">5排</span>
                        <span>6排</span>
                        <span>7排</span>
                        <span>8排</span>
                        <span>9排</span>
                    </div>
                    <div class="rightSetting">
                        <div class="myFlex_x row">
                            <div>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                            <div class="rowRight">
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                        </div>
                        <div class="myFlex_x row">
                            <div>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                            <div class="rowRight">
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                        </div>
                        <div class="myFlex_x row">
                            <div>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                            <div class="rowRight">
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                        </div>
                        <div class="myFlex_x row">
                            <div>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                            <div class="rowRight">
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                        </div>
                        <div class="myFlex_x row colTop">
                            <div>
                                <span class="seat sold"></span>
                                <span class="seat sold"></span>
                                <span class="seat selected"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                            <div class="rowRight">
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                        </div>
                        <div class="myFlex_x row">
                            <div>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                            <div class="rowRight">
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                        </div>
                        <div class="myFlex_x row">
                            <div>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                            <div class="rowRight">
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                        </div>
                        <div class="myFlex_x row">
                            <div>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                            <div class="rowRight">
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                        </div>
                        <div class="myFlex_x row">
                            <div>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                            <div class="rowRight">
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                                <span class="seat"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="menu">
                    <div class="menuOne">
                        <span class="seat"></span>
                        <span>可选座位</span>
                    </div>
                    <div class="menuOne">
                        <span class="seat selected"></span>
                        <span>已选座位</span>
                    </div>
                    <div class="menuOne">
                        <span class="seat sold"></span>
                        <span>已售座位</span>
                    </div>
                </div>
            </div>
            <div class="confirmSeat">
                <div class="movieTicket">
                    <span>电影票</span>
                </div>
                <div class="movieDetails confirmSeat_X">
                    <img src="https://p0.pipi.cn/mmdb/fb738692c7e51b9235be2ada93a69ec9bdfea.jpg?imageView2/1/w/115/h/158" alt="">
                    <div class="details">
                        <div class="detailTop">
                            <span>涉过愤怒的海</span>
                            <span class="mark">9.8</span>
                        </div>
                        <div class="detailBottom">
                            <span>导演: 威书均</span>
                            <span>主演: 朱一龙/曾美慧子/候天来</span>
                            <span>类型: 剧情/犯罪/悬疑</span>
                            <span>时长: 144分钟</span>
                        </div>
                    </div>
                </div>
                <div class="saleDetails confirmSeat_X">
                    <div>
                        <span class="cinemaDetail">影院: </span>
                        <span>1929电影公园（武汉光谷店）</span>
                    </div>
                    <div>
                        <span class="cinemaDetail">影厅: </span>
                        <span>四号厅</span>
                    </div>
                    <div>
                        <span class="cinemaDetail">版本: </span>
                        <span>国语2D</span>
                    </div>
                    <div>
                        <span class="cinemaDetail">场次: </span>
                        <span>今天 12月2 16:40</span>
                    </div>
                    <div>
                        <span class="cinemaDetail">票价: </span>
                        <span>￥38/张</span>
                    </div>
                </div>
                <div class="buyDetails confirmSeat_X">
                    <span class="seatTing">座位:</span>
                    <div class="sumPrice">
                        <span>总价:</span>
                        <div class="price">
                            <span style="font-size: 13px;">￥</span>
                            <span style="font-weight: 700;margin-left: -5px">0</span>
                        </div>
                    </div>
                </div>
                <div class="confirmSeat_X">
                    <form action="" class="personal">
                        <input type="text" placeholder="请输入手机号">
                        <input type="text" placeholder="请填写验证码">
                        <span class="getCode">获取验证码</span>
                        <input type="button" class="btn" value="确认选座">
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    $(".seat").click(function (){
        var priceClass=$(".price").children().eq(1);
        var priceCurrent=priceClass.text();
        var priceModify=0;
        if ($(this).hasClass("sold")) {
            return;
        }
        // 判断是否有 "selected" 类
        if ($(this).hasClass("selected")) {
            // 如果有 "selected" 类，移除它
            $(this).removeClass("selected");
            priceModify=parseFloat(priceCurrent)+parseFloat(-30);
        } else {
            // 如果没有 "selected" 类，添加它
            $(this).addClass("selected");
            priceModify=parseFloat(priceCurrent)+parseFloat(30);
        }
        priceClass.text(priceModify)
    });
    $(".getCode").click(function (){
        var Code=$(this);
        var txt=$(this).text();
        var regin="重新获取 ";
        if (txt!=="获取验证码"){
            return;
        }
        $(this).text(regin+"60");
        var time=59;
        var reduce = setInterval(function (){
            Code.text(regin+time);
            if (time<0){
                clearInterval(reduce);
                Code.text(txt);
            }
            time--;
        },1000);
    });
    $(".btn").click(function (){
        var price=$(".price").children().eq(1).text();
        var username=$(".username").val();
        var password=$(".password").val();
        console.log(username)
        if ((price<=0)||(username==='')||(password==='')){
            alert("未选择座位 未填写手机号或密码");
        }else {
            window.location.href="https://www.baidu.com";
        }
    })
</script>
</html>