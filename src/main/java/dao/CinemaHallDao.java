package dao;

import entity.YingTing;
import entity.YingTingMovie;

import java.util.ArrayList;
import java.util.List;

public class CinemaHallDao {
    public List<YingTing> getYingTing(String sql,String cinemaId){
        List<YingTing> yingTing= new ArrayList<>();
        try {
            yingTing=jdbc2.selectList(YingTing.class,sql,cinemaId);
        } catch (Exception e){
            e.printStackTrace();
        }
        return yingTing;
    }
    public List<YingTingMovie> getYingTingMovie(String sql,String yingtingId,String movieId){
        List<YingTingMovie> yingTingMovies=new ArrayList<>();
        try{
            yingTingMovies=jdbc2.selectList(YingTingMovie.class,sql,yingtingId,movieId);
        }catch(Exception e) {
            e.printStackTrace();
        }
        return yingTingMovies;
    }
}
