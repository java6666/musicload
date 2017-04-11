import musicload.model.dao.MusicDao;
import musicload.model.entity.Music;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by Administrator on 2017/4/10.
 */
public class soarListTest {
   private ApplicationContext context= new ClassPathXmlApplicationContext("spring-mybatis.xml");
  MusicDao dao= context.getBean(MusicDao.class);
    @Test
    public void soarListTest(){
    /*    List<Music> musics = dao.selectSoarList();
        for (Music music:musics) {
            System.out.println(music.getMusicName());
            System.out.println(music.getSoarClicks());
        }*/
        List<Music> musics1 = dao.selectNewMusicList();
        for (Music music :
                musics1) {
            System.out.println(music.getNewMusicClicks());
        }
    }
}
