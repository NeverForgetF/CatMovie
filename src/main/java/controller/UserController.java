package controller;

import com.alibaba.fastjson.JSON;
import entity.User;
import service.UserService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/user")
public class UserController extends BaseServlet{
    UserService UserService = new UserService();
    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 从前端请求中获取用户输入的账号和密码
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String sql = "select * from user where userName=?";
        User user = UserService.getUserByUserName(sql,userName,password);
        // session , 后端缓存技术
        // session是放在tomcat内，使用每次tomcat重启，session会被重置
        HttpSession session = request.getSession();
        if (user != null){
            session.setAttribute("user",user);
        }
        // 后端接受请求后，不做页面处理，而是相应数据
        PrintWriter printWriter = response.getWriter();
        printWriter.write(JSON.toJSONString(user));
    }
    public void loginOut(HttpServletRequest request,HttpServletResponse response) throws IOException {
        boolean result = false;
        try{
            HttpSession session = request.getSession();
            // 将user从session中删除
            session.removeAttribute("user");
            result = true;
        }catch (Exception e){
            result = false;
        }
        PrintWriter printWriter = response.getWriter();
        printWriter.write(JSON.toJSONString(result));
    }
    public void registry(HttpServletRequest request,HttpServletResponse response) throws IOException {
        // 从请求中获取用户输入的账号密码
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String sql = "INSERT into user VALUES (null,?,?)";
        int result = UserService.registry(sql,userName,password);
        PrintWriter printWriter = response.getWriter();
        printWriter.write(JSON.toJSONString(result));
    }
}
