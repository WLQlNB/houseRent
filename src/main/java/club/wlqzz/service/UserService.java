package club.wlqzz.service;

import club.wlqzz.pojo.User;

import java.util.List;

public interface UserService {
    void updateUser(User user);

    List<User> userList() throws Exception;

    User login(User user) throws Exception;

    void addUser(User user) throws Exception;

}
