/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

import java.io.Serializable;
import java.sql.Date;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author phanh
 */
@Entity
@Table(name = "orders")
public class Order implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id")
    private int orderId;

    @Column(name = "customer_id")
    private int customerId;

    private float price;

    private LocalDate date;

    private String status;

    @OneToMany(mappedBy = "order")
    private Set<CartItem> items;

    public Order() {
        this.status = "placed";
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getDate() {
        String date;
        if (this.date == null) {
            date = "Not Available";
        } else {
            date = this.date.toString();
        }
        return date.toString();
    }

    public void setDate() {
        this.date = LocalDate.now();
    }

    public Set<CartItem> getItems() {
        return items;
    }

    public void setItems(Set<CartItem> items) {
        this.items = items;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPrice() {

        DecimalFormat formatter = new DecimalFormat("#,###");
        String formattedPrice = formatter.format(this.price);
        return formattedPrice;
    }

    public void setPrice(float price) {
        this.price = price;
    }

}
