package controller;

import entity.Movie;
import entity.YingTing;
import entity.YingTingMovie;
import service.CinemaHallService;
import service.MovieService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/play")
public class CinemaHallController extends BaseServlet{
    CinemaHallService cinemaHallService=new CinemaHallService();
    public void getCinemaHall(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sql="SELECT * from yingting where cinemaId=?";
        String cinemaId=request.getParameter("cinemaId");
        System.out.println(cinemaId);
        List<YingTing> yingTingList=cinemaHallService.getYingTing(sql,cinemaId);
        request.setAttribute("yingTingList",yingTingList);

        String sql2="SELECT * FROM yingting_movie WHERE yingtingId=? AND movieId=?";
        String movieId=request.getParameter("movieId");
        List<YingTingMovie> yingTingMovieList = new ArrayList<>();
        for (YingTing yingTing : yingTingList) {
            yingTingMovieList.addAll(cinemaHallService.getYingTingMovie(sql2, String.valueOf(yingTing.getId()), movieId));
        }
        request.setAttribute("yingTingMovieList",yingTingMovieList);
        request.getRequestDispatcher("view/play.jsp").forward(request,response);
    }

    MovieService movieService=new MovieService();
    //    自己写的
    public void getTwoPlaying(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String sql="SELECT * from yingting where cinemaId=?";
        String cinemaId=request.getParameter("cinemaId");
        System.out.println(cinemaId);
        List<YingTing> yingTingList=cinemaHallService.getYingTing(sql,cinemaId);
        request.setAttribute("yingTingList",yingTingList);

        String sql2="SELECT * FROM yingting_movie WHERE yingtingId=? AND movieId=?";
        String movieId=request.getParameter("movieId");
        List<YingTingMovie> yingTingMovieList = new ArrayList<>();
        for (YingTing yingTing : yingTingList) {
            yingTingMovieList.addAll(cinemaHallService.getYingTingMovie(sql2, String.valueOf(yingTing.getId()), movieId));
        }
        request.setAttribute("yingTingMovieList",yingTingMovieList);
        String sql3="select * from movie where id=?";
        Movie movie=movieService.getMovieById(sql3,movieId);
        request.setAttribute("movie",movie);
        request.getRequestDispatcher("view/twoPlaying.jsp").forward(request,response);
    }
    //    自己写的
}
