package club.wlqzz.service.impl;

import java.util.List;
import club.wlqzz.mapper.UserMapper;
import club.wlqzz.pojo.User;
import club.wlqzz.pojo.UserExample;
import club.wlqzz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public void updateUser(User user) {
        userMapper.updateByPrimaryKey(user);
    }

    @Override
    public List<User> userList() throws Exception {
        UserExample example = new UserExample();
        List<User> list = userMapper.selectByExample(example);
        System.out.println("123" + list);
        return list;
    }

    @Override
    public User login(User user) throws Exception {
        User user1=userMapper.selectByUser(user);
            if(user1==null){
                userMapper.insert(user);
                user1 = userMapper.selectByUser(user);
            }
            return user1;
    }

}
