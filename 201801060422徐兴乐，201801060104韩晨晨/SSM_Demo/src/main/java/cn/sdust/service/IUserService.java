package cn.sdust.service;
import cn.sdust.pojo.User;
import java.util.List;

public interface IUserService {
    public int AddUser(User u);
    public List<User> ListUsersByParam(User u);

//    void updateInfo(User user);
//    List<User> queryAll();
//    User queryByName(String name);
}
