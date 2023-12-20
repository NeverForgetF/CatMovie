package controller;

import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayApiException;
import entity.Seat;
import service.SeatService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

@WebServlet(urlPatterns = "/seat")
public class SeatController extends BaseServlet{
    SeatService seatService=new SeatService();
    public void getSeats(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String playingId = request.getParameter("playingId");
        String sql = "SELECT * FROM SEAT WHERE playingId=?";
        Seat seat=seatService.getSeat(sql,playingId);
        request.setAttribute("seat",seat);
        String sql2="select y.id yId,y.playing,c.id cId,c.cinema,c.address,c.type,p.id pId,p.playingTime,m.id mId,m.movieName,m.movieImg from yingting y,cinema c,yingting_movie p,movie m where c.id=y.cinemaId and y.id=p.yingtingId and m.id=p.movieId and y.id=?";
        Map<String,Object> dataMap = seatService.getData(sql2,playingId);
        request.setAttribute("dataMap",dataMap);
        String price = request.getParameter("price");
        request.setAttribute("price",price);
        request.getRequestDispatcher("view/seats.jsp").forward(request,response);
    }
    // 自己写的
//    public void updateSeats(HttpServletRequest request,HttpServletResponse response) throws IOException {
//        String position = request.getParameter("positionList");
//        String seatId = request.getParameter("seatId");
//        String sql = "update seat set seat=? where id=?";
//        int flag=seatService.updateSeat(sql,seatId,JSON.parseArray(position));
//        // 将更新后的传给前端
//        PrintWriter printWriter = response.getWriter();
//        printWriter.write(flag+"");
//    }
    public void updateSeats(HttpServletRequest request,HttpServletResponse response) throws IOException {
        List<String> position = JSON.parseArray(request.getParameter("positionList"),String.class);
        String seatId = request.getParameter("seatId");
        String sql = "update seat set seat=? where id=?";
        int flag=seatService.updateSeat(sql,seatId,position);
        // 将更新后的传给前端
        PrintWriter printWriter = response.getWriter();
        printWriter.write(flag+"");
    }
    public void doPay(HttpServletRequest request,HttpServletResponse response) throws AlipayApiException, ServletException, IOException {
        double price= Double.parseDouble(request.getParameter("price"));
        String from=alipayApplication.pay(1,price,"测试订单","http://localhost:8090/Programe02_war_exploded//seat?method=getSeats&playingId=3&movieId=1&price=42.00");
        request.setAttribute("form",from);
        request.getRequestDispatcher("view/test.jsp").forward(request,response);
    }
}
