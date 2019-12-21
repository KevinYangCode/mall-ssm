package xyz.jianzha.mall.mapper;

import xyz.jianzha.mall.pojo.Cart;
import xyz.jianzha.mall.pojo.Product;
import xyz.jianzha.mall.pojo.QueryVo;
import xyz.jianzha.mall.pojo.User;

import java.sql.SQLException;
import java.util.List;

/**
 * 商品信息持久层接口
 *
 * @author Y_Kevin
 * @date 2019/6/9 - 11:28
 */
public interface ProductMapper {

    /**
     * 查询全部商品数据或者其中一个分类数据
     * 并分页
     *
     * @param vo
     * @return
     * @throws SQLException
     */
    List<Product> getProductByQueryVo(QueryVo vo);

    /**
     * 根据查询条件查询总记录数
     *
     * @param vo
     * @return
     */
    Integer getCountByQueryVo(QueryVo vo);

    /**
     * 根据商品Id查询商品详情
     *
     * @param pid
     * @return
     */
    Product getProductDetail(Integer pid);

    /**
     * 根据用户ID查询该用户的购物车所有数据
     *
     * @param uid
     */
    List<Cart> FindCartForUid(Integer uid);

    /**
     * 添加购物车
     *
     * @param user
     * @param product
     */
    void addCart(User user, Product product);

}
