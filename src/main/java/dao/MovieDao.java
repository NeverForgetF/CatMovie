package dao;

import entity.Movie;
import java.util.List;

// Java通过dao访问数据库，这个类叫做movieDao，那么就是专门用来访问movie表的dao层
public class MovieDao {
    public List<Movie> getMovie(String sql) {
        return jdbc2.selectList(Movie.class,sql);
    }
    public Movie getMovieById(String sql,String id){
        Movie movie = null;
        try {
            movie = jdbc2.selectOne(Movie.class,sql,id);
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        return movie;
    }
}
