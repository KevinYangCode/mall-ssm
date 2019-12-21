package xyz.jianzha.mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import xyz.jianzha.mall.pojo.Product;
import xyz.jianzha.mall.pojo.QueryVo;
import xyz.jianzha.mall.service.ProductService;
import xyz.jianzha.mall.utils.PageBean;

import javax.servlet.http.HttpSession;


/**
 * 商品信息请求处理
 *
 * @author Y_Kevin
 * @date 2019/6/9 - 11:21
 */
@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    /**
     * 根据查询条件分页查询商品列表
     *
     * @param model
     * @param vo
     * @return
     */
    @RequestMapping("productList")
    public String productList(Model model, QueryVo vo) {
        PageBean<Product> pageBean = productService.getProductByQueryVo(vo);
        //设置分页数据返回
        model.addAttribute("pageBean", pageBean);
        // 返回查询条件
        model.addAttribute("vo", vo);
        return "productList";
    }

    /**
     * 根据商品Id查询商品详情
     *
     * @param model
     * @param pid
     * @return
     */
    @RequestMapping("productDetail")
    public String productDetail(Model model, Integer pid, HttpSession session) {
        Product product = productService.getProductDetail(pid);
        model.addAttribute("product", product);
        return "details";
    }

}
