package xyz.jianzha.mall.pojo;

/**
 * @author Y_Kevin
 * @date 2019/6/9 - 12:09
 */
public class QueryVo {

    private String proName;
    private String price;

    /**
     * 商品类型
     */
    private String b_id;
    /**
     * 当前页码数
     */
    private Integer currentPage = 1;
    /**
     * 数据库从哪一条数据开始查
     */
    private Integer start;
    /**
     * 每页显示数据条数
     */
    private Integer pageSize = 8;

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getB_id() {
        return b_id;
    }

    public void setB_id(String b_id) {
        this.b_id = b_id;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
}
