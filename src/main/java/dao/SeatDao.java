package dao;

import entity.Seat;

import java.util.Map;

public class SeatDao {
    // 根据观影时间的id获取当前观影时间的座位列表
    public Seat getSeat(String sql,String playingId){
        Seat seat=null;
        try {
            seat = jdbc2.selectOne(Seat.class,sql,playingId);
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        return seat;
    }
    public int updateSeat(String sql,String seats,String id){
        return jdbc2.doUpdate(jdbc2.connection,sql,seats,id);
    }
    public Map<String, Object> getData(String sql, String id){
        return jdbc2.selectOne(sql,id);
    }
}
