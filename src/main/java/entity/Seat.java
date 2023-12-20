package entity;

import java.util.List;

public class Seat {
    private int id;
    private int playingId;
    private String seat;
    private List<List> seatList;

    public List<List> getSeatList() {
        return seatList;
    }

    public void setSeatList(List<List> seatList) {
        this.seatList = seatList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPlayingId() {
        return playingId;
    }

    public void setPlayingId(int playingId) {
        this.playingId = playingId;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }
}
