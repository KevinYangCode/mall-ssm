package xyz.jianzha.mall.service;

import xyz.jianzha.mall.pojo.Product;
import xyz.jianzha.mall.pojo.QueryVo;
import xyz.jianzha.mall.utils.PageBean;

/**
 * 商品信息业务逻辑接口
 *
 * @author Y_Kevin
 * @date 2019/6/9 - 11:32
 */
public interface ProductService {

    /**
     * 根据查询条件，分页查询用户列表
     *
     * @param vo
     * @return
     */
    PageBean<Product> getProductByQueryVo(QueryVo vo);

    /**
     * 根据商品Id查询商品详情
     *
     * @param pid
     * @return
     */
    Product getProductDetail(Integer pid);

}
