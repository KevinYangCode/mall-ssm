package xyz.jianzha.mall.utils;

import java.util.List;

/**
 * 分页的Bean类
 * 这是一个用于封装了分页的数据
 * 里面包含：
 * 该页的产品集合数据
 * 总的记录数
 * 总的页数
 * 当前页
 * 每页显示的记录数
 *
 * @author Y_Kevin
 * @date 2019/6/9 - 12:01
 */
public class PageBean<T> {

    /**
     * 当前页
     */
    private int currentPage;
    /**
     * 总页数
     */
    private int totalPage;
    /**
     * 每页的记录数
     */
    private int pageSize;
    /**
     * 总的记录数
     */
    private int totalSize;
    /**
     * 当前页的产品集合
     */
    private List<T> list;

    public PageBean(int currentPage, int totalPage, int pageSize, int totalSize, List<T> list) {
        super();
        this.currentPage = currentPage;
        this.totalPage = totalPage;
        this.pageSize = pageSize;
        this.totalSize = totalSize;
        this.list = list;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalSize() {
        return totalSize;
    }

    public void setTotalSize(int totalSize) {
        this.totalSize = totalSize;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }
}
