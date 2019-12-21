package xyz.jianzha.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.jianzha.mall.mapper.CartMapper;
import xyz.jianzha.mall.pojo.Cart;
import xyz.jianzha.mall.pojo.Order;
import xyz.jianzha.mall.service.CartService;

import java.util.List;

/**
 * @author Y_Kevin
 * @date 2019/6/9 - 15:21
 */
@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartMapper cartMapper;

    @Override
    public List<Cart> FindCartForUid(Integer uid) {
        List<Cart> list = cartMapper.FindCartForUid(uid);
        return list;
    }

    @Override
    public void deleteCartForCid(Integer cid) {
        cartMapper.deleteCartForCid(cid);
    }

    @Override
    public void deleteCartForUid(Integer uid) {
        cartMapper.deleteCartForUid(uid);
    }

    @Override
    public void addCart(Cart cart) {
        //先修改同个用户的同一个商品的数量，
        //如果该用户没有该商品，就修改失败，返回0，
        //再添加该商品并绑定用户
        Integer a = cartMapper.updateCartNumber(cart);
        if (a == 0) {
            cartMapper.addCart(cart);
        }
    }

    @Override
    public void addOrder(Order order) {
        cartMapper.addOrder(order);
    }

    @Override
    public List<Order> FindOrderForUid(Integer uid) {
        List<Order> list = cartMapper.FindOrderForUid(uid);
        return list;
    }

    @Override
    public void deleteOrderForOid(Integer oid) {
        cartMapper.deleteOrderForOid(oid);
    }


}
