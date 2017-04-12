package musicload.model.dao;

import musicload.model.entity.Music;
import musicload.model.entity.RankingList;

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
    /*
    * 查询音乐排行榜
    * @return rankingList
    * */
    List<RankingList> selectAllRankingList();
    /*
    * 飙升榜
    * */
    List<Music> selectSoarList();
    /*
    * 新歌榜
    * */
    List<Music> selectNewMusicList();


}
