package xyz.jianzha.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.jianzha.mall.mapper.ProductMapper;
import xyz.jianzha.mall.pojo.Product;
import xyz.jianzha.mall.pojo.QueryVo;
import xyz.jianzha.mall.service.ProductService;
import xyz.jianzha.mall.utils.PageBean;

import java.util.List;

/**
 * @author Y_Kevin
 * @date 2019/6/9 - 11:33
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;

    @Override
    public PageBean<Product> getProductByQueryVo(QueryVo vo) {
        //计算分页查询从哪条记录开始
        vo.setStart((vo.getCurrentPage() - 1) * vo.getPageSize());

        //查询总记录数
        Integer totalSize = productMapper.getCountByQueryVo(vo);

        //查询每页的数据列表
        List<Product> list = productMapper.getProductByQueryVo(vo);

        //三则运算   201%10==0？201*10 ：201%10+1
        //设置总页数
        Integer totalPage = totalSize % vo.getPageSize() == 0 ? totalSize / vo.getPageSize() : (totalSize / vo.getPageSize()) + 1;

        //包装分页数据
        PageBean<Product> pageBean = new PageBean<Product>(vo.getCurrentPage(), totalPage, vo.getPageSize(), totalSize, list);

        return pageBean;
    }

    @Override
    public Product getProductDetail(Integer pid) {
        Product product = productMapper.getProductDetail(pid);
        return product;
    }
}
