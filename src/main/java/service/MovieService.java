package service;

import dao.MovieDao;
import entity.Movie;
import java.util.List;

public class MovieService {     // 业务逻辑层
    MovieDao movieDao = new MovieDao();
    public List<Movie> getMovie(String sql){
        return movieDao.getMovie(sql);
    }
    public Movie getMovieById(String sql,String id){
        return movieDao.getMovieById(sql,id);
    }
}
