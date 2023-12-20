package controller;

import entity.Movie;
import service.MovieService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/movie")
public class MovieController extends BaseServlet{
    int flagId = 0;
    MovieService movieService = new MovieService();
    public void getMovie(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String sql = "select * from movie where id=?";
        Movie movie = movieService.getMovieById(sql,id);
        request.setAttribute("movie",movie);
        request.getRequestDispatcher("view/details.jsp").forward(request,response);
    }
}
