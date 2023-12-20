package entity;

import java.sql.Timestamp;

public class Playing {
    private int id;
    private int yingtingId;
    private  int movieId;
    private Timestamp playingTime;
    private double discount;

    public Timestamp getPlayingTime() {
        return playingTime;
    }

    public void setPlayingTime(Timestamp playingTime) {
        this.playingTime = playingTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getYingtingId() {
        return yingtingId;
    }

    public void setYingtingId(int yingtingId) {
        this.yingtingId = yingtingId;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }


}
