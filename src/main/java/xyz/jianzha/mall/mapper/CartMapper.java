package xyz.jianzha.mall.mapper;

import xyz.jianzha.mall.pojo.Cart;
import xyz.jianzha.mall.pojo.Order;

import java.util.List;

/**
 * @author Y_Kevin
 * @date 2019/6/9 - 15:18
 */
public interface CartMapper {
    /**
     * 根据用户ID查询该用户的购物车所有数据
     *
     * @param uid
     */
    List<Cart> FindCartForUid(Integer uid);

    /**
     * 根据购物车ID单个删除商品
     *
     * @param cid
     */
    void deleteCartForCid(int cid);

    /**
     * 根据用户ID清空他的购物车
     *
     * @param uid
     */
    void deleteCartForUid(int uid);

    /**
     * 修改同个用户的同一个商品的数量
     *
     * @param cart
     * @return 已更改的条数
     */
    Integer updateCartNumber(Cart cart);

    /**
     * 根据用户的ID把商品添加到他的购物车
     *
     * @param cart
     */
    void addCart(Cart cart);

    /**
     * 根据用户的ID添加订单
     *
     * @param order
     */
    void addOrder(Order order);

    /**
     * 根据用户ID查询该用户的所有订单
     *
     * @param uid
     * @return
     */
    List<Order> FindOrderForUid(Integer uid);

    /**
     * 根据订单ID单个删除订单
     *
     * @param oid
     */
    void deleteOrderForOid(Integer oid);

}
