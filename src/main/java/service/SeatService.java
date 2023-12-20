package service;

import com.alibaba.fastjson.JSON;
import dao.SeatDao;
import entity.Seat;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class SeatService {
    SeatDao seatDao=new SeatDao();
    public Seat getSeat(String sql,String playingId){
        Seat seat = seatDao.getSeat(sql,playingId);
        // 将查询到的seat对象中的seat ，进行类型转换
        // 将字符串转为二维数组
        if (seat!=null && !seat.getSeat().isEmpty()){
            List<List> lists = JSON.parseArray(seat.getSeat(),List.class);
            // 将转化后的数组对象放入seat对象中
            seat.setSeatList(lists);
        }
        return seat;
    }
    // 自己写的
//    public int updateSeat(String sql,String id,List seatList){
//        // seatList=['[0, 6]', '[0, 7]', '[0, 0]']
//        String sql1="select * from seat where id=?";
//        Seat seat=seatDao.getSeat(sql1,id);
//        seat.setSeatList(JSON.parseArray(seat.getSeat(),List.class));
//        List<List> oldSeatList=seat.getSeatList();
//        for (int i=0;i<seatList.size();i++){
//            if (seatList.get(i)!=null){
//                String s=(String) seatList.get(i);
//                List ss=JSON.parseArray(s);
//                int row= (int) ss.get(0);
//                int col= (int) ss.get(1);
//                oldSeatList.get(row).set(col,1);
//            }
//        }
//        int flag=seatDao.updateSeat(sql,JSON.toJSONString(oldSeatList),id);
//        return flag;
//    }

    public int updateSeat(String sql,String id,List<String> chooseList){
        // seatList=['[0, 6]', '[0, 7]', '[0, 0]']
        String sql1="select * from seat where id=?";
        Seat seat=getSeat(sql1,id);
        List<List> seatList=seat.getSeatList();
        for (String str:chooseList){
            if (str!=null){
                List list=JSON.parseArray(str);
                int row=(int)list.get(0);
                int col=(int)list.get(1);
                seatList.get(row).set(col,1);
            }
        }
        int flag=seatDao.updateSeat(sql,JSON.toJSONString(seatList),id);
        return flag;
    }


    public Map<String, Object> getData(String sql, String id){
        return seatDao.getData(sql,id);
    }
}
