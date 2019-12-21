package xyz.jianzha.mall.service;

import xyz.jianzha.mall.pojo.User;

/**
 * 用户信息业务逻辑接口
 *
 * @author Y_Kevin
 * @date 2019/6/9 - 09:37
 */
public interface UserService {

    /**
     * 检测注册时用户邮箱是否已存在
     *
     * @param email
     * @return
     */

    String checkEmail(String email);

    /**
     * 用户注册
     * @param user
     */
    void register(User user);

    /**
     * 登录
     * @param user
     * @return 用户的信息
     */
    User loginUser(User user);

    /**
     * 修改用户信息
     *
     * @param user
     */
    void updateUserData(User user);

}
