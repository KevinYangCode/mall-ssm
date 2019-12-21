package xyz.jianzha.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.jianzha.mall.mapper.UserMapper;
import xyz.jianzha.mall.pojo.User;
import xyz.jianzha.mall.service.UserService;

/**
 * @author Y_Kevin
 * @date 2019/6/9 - 09:38
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public String checkEmail(String email) {
        Integer result = userMapper.checkEmail(email);
        if (result > 0) {
            return "false";
        } else {
            return "true";
        }
    }

    @Override
    public void register(User user) {
        userMapper.register(user);
    }

    @Override
    public User loginUser(User user) {
        User user1 = userMapper.loginUser(user);
        return user1;
    }

    @Override
    public void updateUserData(User user) {
        userMapper.updateUserData(user);
    }


}
