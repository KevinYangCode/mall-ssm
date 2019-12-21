package xyz.jianzha.mall.pojo;

/**
 * 商品数据模型
 *
 * @author Y_Kevin
 * @date 2019/6/9 - 11:40
 */
public class Product {

    private int pid;
    private String pname;
    private String pimage;
    private double price;
    private String pic_1;
    private String pic_2;
    private String pic_3;
    private String pic_4;
    private int bid;

    public Product() {
    }

    public Product(int pid, String pname, String pimage, double price, String pic_1, String pic_2, String pic_3, String pic_4, int bid) {
        this.pid = pid;
        this.pname = pname;
        this.pimage = pimage;
        this.price = price;
        this.pic_1 = pic_1;
        this.pic_2 = pic_2;
        this.pic_3 = pic_3;
        this.pic_4 = pic_4;
        this.bid = bid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getPic_1() {
        return pic_1;
    }

    public void setPic_1(String pic_1) {
        this.pic_1 = pic_1;
    }

    public String getPic_2() {
        return pic_2;
    }

    public void setPic_2(String pic_2) {
        this.pic_2 = pic_2;
    }

    public String getPic_3() {
        return pic_3;
    }

    public void setPic_3(String pic_3) {
        this.pic_3 = pic_3;
    }

    public String getPic_4() {
        return pic_4;
    }

    public void setPic_4(String pic_4) {
        this.pic_4 = pic_4;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid=" + pid +
                ", pname='" + pname + '\'' +
                ", pimage='" + pimage + '\'' +
                ", price=" + price +
                ", pic_1='" + pic_1 + '\'' +
                ", pic_2='" + pic_2 + '\'' +
                ", pic_3='" + pic_3 + '\'' +
                ", pic_4='" + pic_4 + '\'' +
                ", bid=" + bid +
                '}';
    }
}
