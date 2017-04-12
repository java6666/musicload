package musicload.model.entity;

/**
 * Created by hasee on 2017/4/11.
 */
public class UserMusic {
    private Integer id;
    private Integer musicId;
    private String  userName;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMusicId() {
        return musicId;
    }

    public void setMusicId(Integer musicId) {
        this.musicId = musicId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
