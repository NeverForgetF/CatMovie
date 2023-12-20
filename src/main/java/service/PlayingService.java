package service;

import dao.PlayingDao;
import entity.Playing;
import entity.YingTing;

import java.util.List;

public class PlayingService {
    PlayingDao playingDao=new PlayingDao();
    public List getPlaying(String sql,String cinemaId,String movieId){
        return playingDao.getPlaying(sql, cinemaId, movieId);
    }
    public List<YingTing> getYingting(String sql,String cinemaId,String movieId){

//        根据影院id获取该影院下所有影厅
        List<YingTing> yingTingList=playingDao.getYingTing(sql,cinemaId);
        String sql2 = "SELECT * from yingting_movie where yingtingId=? and movieId=?";
        // 循环这个影厅的集合，分别查询每个影厅下的观影时间列表
        for (YingTing yingTing:yingTingList){
            if (yingTing!=null&&yingTing.getPlaying()!=null){
                int id=yingTing.getId();
                List<Playing> playingList=playingDao.getPlayingByYingting(sql2,String.valueOf(id),movieId);
                yingTing.setPlayingList(playingList);
            }
        }
        return yingTingList;
    }
}
