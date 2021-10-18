package cn.sdust.dao;
import cn.sdust.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface UserDao {
    int InsertUser(User u);
    List<User> SelectUsersByParam(User d);

//    User selectUserByid(@Param(value="id") Integer id);
//    User selectUserByname(String username);
//    int saveUser(User user);
//    int updateUser(User user);
//    int deleteUser(@Param(value="id") Integer id);
}