package controller;

import entity.Purchase;
import service.PurchaseService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/purchase")
public class PurchaseController extends BaseServlet{
    PurchaseService purchaseService=new PurchaseService();
    public void getPurchase(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sql="select * from purchase";
        List<Purchase> purchaseList=purchaseService.getPurchase(sql);
        request.setAttribute("purchaseList",purchaseList);
        request.getRequestDispatcher("view/purchase.jsp").forward(request,response);
    }
}
