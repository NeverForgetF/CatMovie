package service;

import dao.CinemaHallDao;
import entity.YingTing;
import entity.YingTingMovie;

import java.util.List;

public class CinemaHallService {
    CinemaHallDao cinemaHallDao=new CinemaHallDao();
    public List<YingTing> getYingTing(String sql, String  cinemaId){
        return cinemaHallDao.getYingTing(sql,cinemaId);
    }
    public List<YingTingMovie> getYingTingMovie(String sql,String yingtingId,String movieId){
        return cinemaHallDao.getYingTingMovie(sql,yingtingId,movieId);
    }

//    public static void main(String[] args) {
//        CinemaHallService cinemaHallService=new CinemaHallService();
//        String sql="SELECT * from yingting where cinemald=?";
//        List<YingTing> yingTingList=cinemaHallService.getYingTing(sql,"1");
//        System.out.println(yingTingList.get(0).getPlaying());
//    }
}
