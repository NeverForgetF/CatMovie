package controller;

import entity.Movie;
import entity.YingTing;
import entity.YingTingMovie;
import service.CinemaHallService;
import service.MovieService;
import service.PlayingService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/playing")
public class PlayingController extends BaseServlet{
    PlayingService playingService=new PlayingService();
    MovieService movieService=new MovieService();
    // 方法一
    public void getPlaying(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sql= "SELECT y_m.*,y.playing from yingting_movie y_m,yingting y where y.id=y_m.yingtingId and movieId=? and y.cinemaId=?";
        String cinemaId=request.getParameter("cinemaId");
        String movieId=request.getParameter("movieId");
        List list=playingService.getPlaying(sql,cinemaId,movieId);
        request.setAttribute("list",list);
        String sql2="select * from movie where id=?";
        Movie movie=movieService.getMovieById(sql2,movieId);
        request.setAttribute("movie",movie);
        request.getRequestDispatcher("view/playing.jsp").forward(request,response);
    }
    //  方法二
    public void getPlayingTwo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sql= "SELECT * FROM yingting WHERE cinemaId=?";
        String cinemaId=request.getParameter("cinemaId");
        String movieId=request.getParameter("movieId");
        List list=playingService.getYingting(sql,cinemaId,movieId);
        request.setAttribute("list",list);
        String sql2="select * from movie where id=?";
        Movie movie=movieService.getMovieById(sql2,movieId);
        request.setAttribute("movie",movie);
        request.getRequestDispatcher("view/playingTwo.jsp").forward(request,response);
    }
}
