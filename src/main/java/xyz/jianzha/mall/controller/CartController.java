package xyz.jianzha.mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import xyz.jianzha.mall.pojo.Cart;
import xyz.jianzha.mall.pojo.Order;
import xyz.jianzha.mall.pojo.User;
import xyz.jianzha.mall.service.CartService;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Y_Kevin
 * @date 2019/6/9 - 15:18
 */
@Controller
public class CartController {
    @Autowired
    private CartService cartService;

    /**
     * 根据Uid遍历购物车数据
     *
     * @param model
     * @param uid
     * @return
     */
    @RequestMapping("cartList")
    public String CartList(Model model, HttpSession session, Integer uid) {

        List<Cart> CartList = cartService.FindCartForUid(uid);
        session.setAttribute("CartList", CartList);
        model.addAttribute("CartList", CartList);
        return "cart";
    }

    /**
     * 根据购物车ID删除用户单个商品
     *
     * @param cid
     * @param uid
     * @return
     */
    @RequestMapping("deleteCartForCid")
    public String DeleteCartForCid(Model model, HttpSession session, Integer cid, Integer uid) {

        cartService.deleteCartForCid(cid);
        return CartList(model, session, uid);
    }

    /**
     * 根据用户ID清空他的购物车
     *
     * @param uid
     * @return
     */
    @RequestMapping("deleteCartForUid")
    public String DeleteCartForUid(Model model, HttpSession session, Integer uid) {

        cartService.deleteCartForUid(uid);
        return CartList(model, session, uid);
    }

    @RequestMapping("addCart")
    public String AddCart(Model model, HttpSession session, Cart cart) {
        User user = (User) session.getAttribute("UserData");
        if (user == null) {
            return "login";
        } else {
            cart.setUid(user.getUid());
            cart.setTotal(cart.getNumber() * (cart.getCprice()));
            cartService.addCart(cart);
            return CartList(model, session, user.getUid());
        }
    }

    /**
     * 获取确认订单页面
     *
     * @return
     */
    @RequestMapping("confirmation")
    public String getConfirmation() {
        return "confirmation";
    }

    /**
     * 根据Uid遍历购物车数据
     *
     * @param model
     * @param uid
     * @return
     */
    @RequestMapping("orderList")
    public String OrderList(Model model, HttpSession session, Integer uid) {

        List<Order> orderList = cartService.FindOrderForUid(uid);
        session.setAttribute("orderList", orderList);
        model.addAttribute("orderList", orderList);
        return "order";
    }

    @RequestMapping("addOrder")
    public String AddOrder(Model model, HttpSession session, Order order, String sum) {
        User user = (User) session.getAttribute("UserData");
        order.setOrdername(user.getUsername());
        order.setOrdertel(user.getTel());
        order.setOrderaddress(user.getAddress());
        order.setUid(user.getUid());
        order.setOrdertotal(Double.valueOf(sum));
        cartService.addOrder(order);
        DeleteCartForUid(model, session, user.getUid());
        session.removeAttribute("CartList");
        return OrderList(model, session, user.getUid());
    }

    /**
     * 根据购物车ID删除用户单个商品
     *
     * @param model
     * @param session
     * @param oid
     * @param uid
     * @return
     */
    @RequestMapping("deleteOrderForOid")
    public String DeleteOrderForOid(Model model, HttpSession session, Integer oid, Integer uid) {
        cartService.deleteOrderForOid(oid);
        return OrderList(model, session, uid);
    }
}