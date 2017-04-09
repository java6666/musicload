package musicload.model.entity;

/**
 * Created by Administrator on 2017/4/7.
 */
public class Music {
    private Integer musicId;
    private String  musicLinkAddress;
    private String musicName;
    private String lyrics;    //歌词

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
