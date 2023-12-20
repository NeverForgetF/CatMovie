package dao;

import entity.Playing;
import entity.YingTing;

import java.util.List;

public class PlayingDao {
    public List getPlaying(String sql,String cinemaId,String movieId){
        return jdbc2.selectList(sql,cinemaId,movieId);
    }
    //  根据影院id获取该影院下的影厅列表
    public List<YingTing> getYingTing(String sql,String cinemaId){
        return jdbc2.selectList(YingTing.class,sql,cinemaId);
    }
//    根据影厅id和电影id获取该影厅下电影的观影时间列表
    public List<Playing> getPlayingByYingting(String sql,String yingtingId,String movieId){
        return jdbc2.selectList(Playing.class,sql,yingtingId,movieId);
    }
}
