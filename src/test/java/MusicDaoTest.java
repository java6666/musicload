//import musicload.model.dao.MusicDao;
//
//import musicload.model.entity.Music;
//import org.junit.Test;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//
///**
// * Created by Administrator on 2017/4/7.
// */
//public class MusicDaoTest {
//    private ApplicationContext context = new ClassPathXmlApplicationContext("spring-mybatis.xml");
//    MusicDao musicDao = context.getBean(MusicDao.class);
//
//    @Test
//    public void selectMusic() {
//        Music music = musicDao.selectMusic(2);
//        System.out.println(music.getMusicId());
//        System.out.println(music.getMusicName());
//        System.out.println(music.getMusicLinkAddress());
//        System.out.println(music.getMusicLinkAddress().equals("http://116.224.86.28/m10.music.126.net/20170407183130/35df1faccbb3592558c5fd8610214dd7/ymusic/c651/e4b2/4cff/d77f6b1097bc6156824f8abd77ce7338.mp3?wshc_tag=0&wsts_tag=58e764b5&wsid_tag=74e74c65&wsiphost=ipdbm"));
//        System.out.println(music.getLyrics());
//    }
//}
