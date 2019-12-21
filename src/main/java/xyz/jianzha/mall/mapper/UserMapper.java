package xyz.jianzha.mall.mapper;

import xyz.jianzha.mall.pojo.User;

/**
 * 用户信息持久层接口
 *
 * @author Y_Kevin
 * @date 2019/6/9 - 09:35
 */
public interface UserMapper {

    /**
     * 检测注册时用户邮箱是否已存在
     *
     * @param email
     * @return
     */
    Integer checkEmail(String email);

    /**
     * 用户注册
     *
     * @param user
     */
    void register(User user);

    /**
     * 用户登录
     *
     * @param user
     * @return
     */
    User loginUser(User user);

    /**
     * 修改用户
     *
     * @param user
     */
    void updateUserData(User user);

}
