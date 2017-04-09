package musicload.model.dao;

import musicload.model.entity.Music;

import java.util.List;

/**
 * Created by Administrator on 2017/4/7.
 */
public interface MusicDao {
    /*
    * 查询所有
    * @return all music
    * */
    List<Music> selectAllMusic();
    /*
    * 查询歌曲信息
    * @return music
    * */
    Music selectMusic(Integer musicId);
}
