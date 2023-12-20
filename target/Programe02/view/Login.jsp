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
  <%--    引入layui框架   --%>
  <link rel="stylesheet" href="<%=basePath%>/layui/css/layui.css">
  <script src="<%=basePath%>/layui/layui.js"></script>
</head>
<body>
  <!-- onsubmit 取消自动提交 ， action 失效 -->
  <form class="loginForm" action="#" onsubmit="return false">
    <div>
      <label>账号：</label>
      <input type="text" class="userName" id="userName" name="userName" placeholder="请输入账号">
    </div>
    <div>
      <label>密码：</label>
      <input type="password" class="password" id="password" name="password" placeholder="请输入密码">
    </div>
    <div>
      <input type="submit" value="提交" class="doLogin">
      <input type="reset" value="重置">
    </div>
  </form>
<script>
  layui.use(['layer','jquery'],function (){
    var userReg = false;
    var passwordReg = false;
    var layer = layui.layer;
    var $ = layui.jquery;
    // 点击登录按钮，提交数据到后端
    $(".doLogin").click(function (){
      // 常见的前端发送请求到后端的方式
      // 1:window.location.href = "url";
      // 2:使用ajax
      if (userReg && passwordReg){
        $.ajax({
            type: "POST",
            url: "<%=basePath%>/user?method=login",
            data: $(".loginForm").serialize(),  // 获取form表单中所有数据
            success: function (result){   // ajax的回调，接受后端响应
              var res = JSON.parse(result);
              if (res===null) {
                // 账号或者密码不正确
                layer.msg("账号密码不正确");
              }else {
                layer.msg('登陆成功', {
                    icon: 1,
                    time: 2000 //2秒关闭（如果不配置，默认是3秒）
                }, function(){
                    //do something
                    //当你在iframe页面关闭自身时
                    var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                    parent.layer.close(index); //再执行关闭
                    parent.location.reload();
                });
                }
            }
        })
      } else{
          layer.msg("您的账号或密码不正确！");
      }
    })
    $(".userName").change(function (){
        var userName = $(this).val();
        var regExp = /^[0-9a-zA-Z]{5,12}$/;
        if (regExp.test(userName)){
            $(this).css("border","1px solid black");
            userReg = true;
        }else{
            layer.tips('你的账号格式不正确！', '#userName',
                {tips:[4,'#f56969'],time:2000,area: 'auto',maxWidth:500,tipsMore:true})
            $(this).css("border","1px solid red");
            userReg = false;
        }
    })
    $(".password").change(function (){

      var password = $(this).val();
      var regExp = /^[0-9a-zA-Z]{5,12}$/;
      if (regExp.test(password)){
          $(this).css("border","1px solid black");
          passwordReg = true;
      }else{
          layer.tips('你的密码格式不正确！', '#password',
              {tips:[4,'#f56969'],time:2000,area: 'auto',maxWidth:500,tipsMore:true})
          $(this).css("border","1px solid red");
          passwordReg = false;
      }
    })
  })
</script>
</body>
</html>