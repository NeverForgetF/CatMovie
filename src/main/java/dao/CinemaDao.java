package dao;

import entity.Cinema;

import java.util.List;

public class CinemaDao {
    public List<Cinema> getCinema(String sql){
        return jdbc2.selectList(Cinema.class,sql);
    }
}
