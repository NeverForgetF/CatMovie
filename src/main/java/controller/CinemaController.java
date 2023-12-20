package controller;

import entity.Cinema;
import entity.Movie;
import service.CinemaService;
import service.MovieService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/cinema")
public class CinemaController extends BaseServlet{
    CinemaService cinemaService = new CinemaService();
    MovieService movieService = new MovieService();
    public void getCinema(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //  接受电影id
        String id = request.getParameter("id");
        String sql2 = "select * from movie where id=?";
        Movie movie = movieService.getMovieById(sql2,id);
        request.setAttribute("movie",movie);
        //  获取所有选项传给jsp页面
        String sql = "select * from cinema";
        List<Cinema> cinemaList = cinemaService.getCinema(sql);
        request.setAttribute("cinemaList",cinemaList);
        request.getRequestDispatcher("view/cinema.jsp").forward(request,response);
    }
}
