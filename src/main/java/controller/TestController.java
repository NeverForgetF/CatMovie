package controller;

import com.alipay.api.AlipayApiException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/test")
public class TestController extends BaseServlet{
    public void test(HttpServletRequest request, HttpServletResponse response) throws AlipayApiException, ServletException, IOException {
        String from=alipayApplication.pay(1,55,"测试订单","");
        request.setAttribute("form",from);
        request.getRequestDispatcher("view/test.jsp").forward(request,response);
    }
}
