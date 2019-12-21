package xyz.jianzha.mall.pojo;

/**
 * @author Y_Kevin
 * @date 2019/6/9 - 17:27
 */
public class Order {

    private int oid;
    private String ordername;
    private String ordertel;
    private String orderaddress;
    private Double ordertotal;
    private int uid;

    public Order() {
    }

    public Order(int oid, String ordername, String ordertel, String orderaddress, Double ordertotal, int uid) {
        this.oid = oid;
        this.ordername = ordername;
        this.ordertel = ordertel;
        this.orderaddress = orderaddress;
        this.ordertotal = ordertotal;
        this.uid = uid;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getOrdername() {
        return ordername;
    }

    public void setOrdername(String ordername) {
        this.ordername = ordername;
    }

    public String getOrdertel() {
        return ordertel;
    }

    public void setOrdertel(String ordertel) {
        this.ordertel = ordertel;
    }

    public String getOrderaddress() {
        return orderaddress;
    }

    public void setOrderaddress(String orderaddress) {
        this.orderaddress = orderaddress;
    }

    public Double getOrdertotal() {
        return ordertotal;
    }

    public void setOrdertotal(Double ordertotal) {
        this.ordertotal = ordertotal;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    @Override
    public String toString() {
        return "Order{" +
                "oid=" + oid +
                ", ordername='" + ordername + '\'' +
                ", ordertel='" + ordertel + '\'' +
                ", orderaddress='" + orderaddress + '\'' +
                ", ordertotal=" + ordertotal +
                ", uid=" + uid +
                '}';
    }
}
