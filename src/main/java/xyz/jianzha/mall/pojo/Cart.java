package xyz.jianzha.mall.pojo;

/**
 * @author Y_Kevin
 * @date 2019/6/9 - 14:57
 */
public class Cart {


    private int cid;
    private int pid;
    private String cimage;
    private String cname;
    private double cprice;
    private int number;
    private double total;
    private int uid;

    public Cart() {
    }

    public Cart(int cid, int pid, String cimage, String cname, double cprice, int number, double total, int uid) {
        this.cid = cid;
        this.pid = pid;
        this.cimage = cimage;
        this.cname = cname;
        this.cprice = cprice;
        this.number = number;
        this.total = total;
        this.uid = uid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getCimage() {
        return cimage;
    }

    public void setCimage(String cimage) {
        this.cimage = cimage;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public double getCprice() {
        return cprice;
    }

    public void setCprice(double cprice) {
        this.cprice = cprice;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cid=" + cid +
                ", pid=" + pid +
                ", cimage='" + cimage + '\'' +
                ", cname='" + cname + '\'' +
                ", cprice=" + cprice +
                ", number=" + number +
                ", total=" + total +
                ", uid='" + uid + '\'' +
                '}';
    }
}
