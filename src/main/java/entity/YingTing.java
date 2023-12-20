package entity;

import java.util.List;

public class YingTing {
    private int id;
    private String playing;
    private int cinemaId;
    private List<Playing> playingList;

    public List<Playing> getPlayingList() {
        return playingList;
    }

    public void setPlayingList(List<Playing> playingList) {
        this.playingList = playingList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPlaying() {
        return playing;
    }

    public void setPlaying(String playing) {
        this.playing = playing;
    }

    public int getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(int cinemaId) {
        this.cinemaId = cinemaId;
    }
}
