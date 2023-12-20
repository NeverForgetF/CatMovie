<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2023/11/18
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=basePath%>/css/top.css">
    <%--    引入layui框架   --%>
    <link rel="stylesheet" href="<%=basePath%>/layui/css/layui.css">
    <script src="<%=basePath%>/layui/layui.js"></script>
    <script src="<%=basePath%>/js/jquery-3.7.1.js"></script>
</head>
<body>
    <div class="top">
        <div class="top_left">
            <div class="logo myFlex_x">
                <img src="<%=basePath%>/img/log.png" alt="">
            </div>
            <div class="city myFlex_x">
                <span>武汉</span>
                <span class="caret city_caret" style="margin-left: 8px;margin-top: 5px;"></span>
                <div class="city-list">
                    <div></div>
                </div>
            </div>
            <div style="width: 8px;"></div>
            <div class="nav">
                <div class="everyNav myFlex_x" style="background-color: #ef4238;color: white">
                    <a href="">首页</a>
                </div>
                <div class="everyNav myFlex_x">
                    <a href="">电影</a>
                </div>
                <div class="everyNav myFlex_x">
                    <a href="">影院</a>
                </div>
                <div class="everyNav myFlex_x">
                    <a href="">演出</a>
                </div>
            </div>
        </div>
        <div class="top_right">
            <div class="app-download">
                <a class="myFlex_x" href="">
                    <span class="iphone-icon"></span>
                    <span class="app-text">APP下载</span>
                    <span class="caret app_caret"></span>
                    <div class="download-icon">
                        <p class="down-title">扫码下载APP</p>
                        <p class="down-content">选座更优惠</p>
                    </div>
                </a>
            </div>
            <div class="square"></div>
            <%--                    div 是由a改的 --%>
            <c:if test="${sessionScope.user==null}">
                <div class="user-login">
                    <a class="myFlex_x">
                        <img src="<%=basePath%>/img/login.png" alt="">
                        <span class="caret login_caret"></span>
                        <div class="login_icon">
                            <p class="login">登录</p>
                        </div>
                    </a>
                </div>
                <div style="position: fixed;top:30px;right: 80px;cursor: pointer">
                    <a><div class="register">注册</div></a>
                </div>
            </c:if>
            <c:if test="${sessionScope.user!=null && sessionScope.user.userName!=null}">
                <a class="myFlex_x">
                    <p>欢迎:${sessionScope.user.userName}</p><p class="user-login"></p>
                </a>
                <div style="position: fixed;top:30px;right: 80px;cursor: pointer;">
                    <a><div class="LoginOut">注销</div></a>
                </div>
            </c:if>
        </div>
    </div>
</body>
<script>
    // 在页面中使用layui框架
    layui.use(['layer','jquery'],function (){
        // 初始化组件
        var layer = layui.layer;
        var $ = layui.jquery;

        // 点击登录按钮，跳出登录按钮
        $(".login").click(function (){
            // 当点击登录时
            layer.open({
                type: 2,
                title: '欢迎登录',
                shadeClose: true,
                shade: false,
                // maxmin: true, //开启最大化最小化按钮
                area: ['400px', '300px'],
                content: 'view/Login.jsp'
            });
        })
        $(".register").click(function (){
            // 当点击登录时
            layer.open({
                type: 2,
                title: '欢迎注册',
                shadeClose: true,
                shade: false,
                // maxmin: true, //开启最大化最小化按钮
                area: ['400px', '300px'],
                content: 'view/registry.jsp'
            });
        })
        $(".LoginOut").click(function (){
            layer.confirm("你确定注销吗？",function (){
                // 使用ajax访问后端
                $.ajax({
                    url:"<%=basePath%>user?method=loginOut",
                    success:function (result){
                        // 将result字符串转为对象
                        var res = JSON.parse(result);
                        if (res){
                            layer.msg("注销成功！");
                            location.reload();
                        }else{
                            layer.msg("注销失败");
                        }
                    }
                })
            })
        })
    })
</script>
<!-- 引入 JavaScript 文件 -->
<script src="<%=basePath%>/js/main.js"></script>
</html>
