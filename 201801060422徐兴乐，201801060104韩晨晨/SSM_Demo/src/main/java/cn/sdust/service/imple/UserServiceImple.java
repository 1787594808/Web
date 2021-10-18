package cn.sdust.service.imple;

import cn.sdust.dao.UserDao;
import cn.sdust.pojo.User;
import cn.sdust.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImple implements IUserService {
    @Resource
    private UserDao userDao;
    @Override
    public int AddUser(User u) {
        // TODO Auto-generated method stub
        return this.userDao.InsertUser(u);
    }

    @Override
    public List<User> ListUsersByParam(User u) {
        // TODO Auto-generated method stub
        return this.userDao.SelectUsersByParam(u);
    }

//    @Override
//    public void updateInfo(User user) {
//        this.userDao.updateUser(user);
//    }
//
//    @Override
//    public List<User> queryAll() {
//        return this.userDao.selectUser();
//    }
//
//    @Override
//    public User queryByName(String name) {
//        return this.userDao.selectUserByname(name);
//    }
}