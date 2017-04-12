package musicload.service;

import com.github.pagehelper.PageInfo;

/**
 * service
 */
public interface UserService {
    PageInfo selectUserMusicByUserName(Integer pageNow,String userName);
}
