package musicload.model.entity;

/**
 * Created by Administrator on 2017/4/7.
 */
public class Music {
    private Integer musicId;
    private String  musicLinkAddress;
    private String musicName;
    private String lyrics;    //歌词
    private Integer soarClicks;
    private  String time;
    private Integer singer_id;
    private Integer newMusicClicks;
   /* private  Singer singerName;*/
    private Singer singer;

    public Integer getNewMusicClicks() {
        return newMusicClicks;
    }

    public void setNewMusicClicks(Integer newMusicClicks) {
        this.newMusicClicks = newMusicClicks;
    }

    public Singer getSinger() {
        return singer;
    }

    public void setSinger(Singer singer) {
        this.singer = singer;
    }

    public Integer getSinger_id() {
        return singer_id;
    }

    public void setSinger_id(Integer singer_id) {
        this.singer_id = singer_id;
    }

    public Integer getSoarClicks() {
        return soarClicks;
    }

    public void setSoarClicks(Integer soarClicks) {
        this.soarClicks = soarClicks;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Integer getMusicId() {
        return musicId;
    }

    public void setMusicId(Integer musicId) {
        this.musicId = musicId;
    }

    public String getMusicLinkAddress() {
        return musicLinkAddress;
    }

    public void setMusicLinkAddress(String musicLinkAddress) {
        this.musicLinkAddress = musicLinkAddress;
    }

    public String getMusicName() {
        return musicName;
    }

    public void setMusicName(String musicName) {
        this.musicName = musicName;
    }

    public String getLyrics() {
        return lyrics;
    }

    public void setLyrics(String lyrics) {
        this.lyrics = lyrics;
    }
}
