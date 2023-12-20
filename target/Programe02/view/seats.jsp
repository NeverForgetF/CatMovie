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
                    <c:forEach items="${requestScope.seat.seatList}" var="list" varStatus="loopStatus">
                        <div class="myFlex_x row ${(loopStatus.index==4)?'colTop':''}">
                            <c:forEach items="${list}" var="item" varStatus="sloopStatus">
                                <div class="${(sloopStatus.index==5)?'rowRight':''}">
                                    <span class="seat ${(item==0)?'':'sold'}" data-position="${[loopStatus.index,sloopStatus.index]}"></span>
                                </div>
                            </c:forEach>
                        </div>
                    </c:forEach>
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
                <img src="<%=basePath%>/img/${requestScope.dataMap.movieImg}" alt="">
                <div class="details">
                    <div class="detailTop">
                        <span>${requestScope.dataMap.movieName}</span>
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
                    <span>${requestScope.dataMap.cinema}</span>
                </div>
                <div>
                    <span class="cinemaDetail">影厅: </span>
                    <span>${requestScope.dataMap.playing}</span>
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
                    <span>￥<span class="onePrice"></span>/张</span>
                </div>
            </div>
            <div class="buyDetails confirmSeat_X">
                <div class="Seated">
                    <span class="seatTing">座位:</span>
                    <div class="ticketList">

                    </div>
<%--                    <span class="ticket">2排12座</span>--%>
<%--                    <span class="ticket">2排12座</span>--%>
                </div>
                <div class="sumPrice">
                    <span>总价:</span>
                    <div class="price" data-price="${requestScope.price}">
                        <span style="font-size: 13px;">￥</span>
                        <span style="font-weight: 700;margin-left: -5px">0</span>
                    </div>
                </div>
            </div>
            <div class="confirmSeat_X">
                <form action="" class="personal">
                    <input class="username" type="text" placeholder="请输入手机号">
                    <input class="password" type="text" placeholder="请填写验证码">
                    <span class="getCode">获取验证码</span>
                    <input type="button" class="btn" data-seatId="${requestScope.seat.id}" value="确认选座">
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    var count=0;    // 选择座位数
    var positionList=[];    // 座位数组
    $(".onePrice").text(${requestScope.price});
    // 点击座位，变色，获取信息，修改消息
    $(".seat").click(function (){
        var Seated=$(".ticketList");
        var price=$(".price");
        var priceClass=price.children().eq(1);    // 获取价格类
        var priceCurrent=priceClass.text();     // 获取当前价格
        var priceModify=0;  // 修改后价格
        var priceOne=price.attr("data-price");
        var position=$(this).attr("data-position");
        // 如果座位已被选，则直接返回
        if ($(this).hasClass("sold")) {
            return;
        }
        // 如果选座超过5个，且当前座位没被选，则直接返回
        if (count>=5&&(!$(this).hasClass("selected"))){
            alert("座位已选满！");
            return;
        }
        // 判断是否有 "selected" 类
        if ($(this).hasClass("selected")) {
            // 如果有 "selected" 类，移除它
            $(this).removeClass("selected");
            priceModify=(parseFloat(priceCurrent)-parseFloat(priceOne)).toFixed(2);
            count--;
            //  下段代码过于复杂 可能需要重写
            var index = positionList.indexOf(position);
            if (index !== -1) {
                // 使用 splice 方法移除指定值
                positionList.splice(index, 1);
                Seated.children()[index].remove();
            }
        } else {
            // 如果没有 "selected" 类，添加它
            $(this).addClass("selected");
            priceModify=(parseFloat(priceCurrent)+parseFloat(priceOne)).toFixed(2);
            positionList.push(position);
            count++;
            $("<span></span>")      // 创建一个<span>元素
                .addClass("ticket") // 添加自定义的类名
                .text((parseInt(position[1])+1)+"排"+(parseInt(position[4])+1)+"座") // 设置文本内容
                .appendTo(Seated);   // 将<span>插入到<body>元素中
        }
        priceClass.text(priceModify);   // 更新价格
        console.log(positionList)
    });
    $(".getCode").click(function (){
        var Code=$(this);   // 获取class
        var txt=$(this).text(); // 获取原本的文本
        var username=$(".username").val(); // 获取username的文本
        if(username === ""){
            alert("请先填写手机号！");
            return;
        }
        var regin="重新获取";
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
        var seatId=$(this).attr("data-seatId");
        //  获取session
        var ses=window.sessionStorage;
        //  获取session
        console.log(username)
        if ((price<=0)||(username==='')||(password==='')){
            alert("未选择座位 未填写手机号或密码");
        }else {
            $.ajax({
                url: "<%=basePath%>/seat?method=updateSeats",
                data: {"seatId":seatId,"positionList":JSON.stringify(positionList)},
                type:"get",
                success: function (response){
                    console.log(response);
                    if (response<0){
                        alert("选座失败")
                    }else {
                        // 数据库更新成功后调用支付宝进行支付
                        window.location.href="<%=basePath%>/seat?method=doPay&price="+price;
                        // alert("座位选座成功");
                        // window.location.reload();
                    }
                }
            })
        }
    })
</script>
</html>