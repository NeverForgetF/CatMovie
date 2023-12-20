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
        <c:forEach items="${requestScope.list}" var="yingting" varStatus="loopStatus">
            <tr class="${(yingting.id%2==0)?"HeadColor":""}">
                <td>${yingting.playing}</td>
                <td>国语2D</td>
                <td>
                    <select class="startMovie" data-price="${requestScope.movie.price}" data-index="${loopStatus.index}">
                        <option value="">请选择观影时间--Time</option>
                        <c:forEach items="${yingting.playingList}" var="playing">
                            <c:if test="${playing.yingtingId==yingting.id}">
                                <option class="opt" data-id="${playing.id}" value="${playing.discount}">${playing.playingTime}</option>
                            </c:if>
                        </c:forEach>
                    </select>
                </td>
                <td class="price">
                    <span>￥</span>
                    <span style="font-size: 18px">${requestScope.movie.price}</span>
                </td>
                <td><div class="select" data-movieId="${requestScope.movie.id}">选座购票</div></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
<script>
    $(".startMovie").change(function (){
        var price=Number($(this).attr("data-price"));
        // 将其他select初始化
        var allSelect=$(".startMovie"); // 选择对应div
        allSelect.not(this).val("");    // 将不是本div的select的val赋值为空
        // console.log(allSelect.not(this).parent().next())
        //  将其他的div的夫
        allSelect.not(this).parent().next().each(function (){
            $(this).children().eq(1).text(price.toFixed(2));
        })
        // 获取当前select值
        var discount=$(this).val();
        if (discount!=null&&discount!=""){
            discount=Number(discount);
            var priceDiscount=(discount*price).toFixed(2);
            $(this).parent().next().children().eq(1).text(priceDiscount);
        }
    })
    $(".select").click(function (){
        // 获取当前被选择的观影时间的id
        var id = $(this).parent().parent().find("option:selected").attr("data-id");
        var price=$(this).parent().prev().children().eq(1).text();
        // 获取movie的id
        var movidId=$(this).attr("data-movieId");
        if (id===undefined){
            alert("请先选择观影时间");
            return;
        }
        window.location.href="<%=basePath%>/seat?method=getSeats&playingId="+id+"&movieId="+movidId+"&price="+price;
    })
</script>
</html>