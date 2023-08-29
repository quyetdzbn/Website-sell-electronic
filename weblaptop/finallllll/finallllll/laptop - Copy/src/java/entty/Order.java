/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entty;

/**
 *
 * @author QuangHai144
 */
public class Order {
    private int id;
    private String date;
    private int customerId;
    private int totalmoney;
    private int status;

    public Order() {
    }

    public Order(int id, String date, int customerId, int totalmoney, int status) {
        this.id = id;
        this.date = date;
        this.customerId = customerId;
        this.totalmoney = totalmoney;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(int totalmoney) {
        this.totalmoney = totalmoney;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", date=" + date + ", customerId=" + customerId + ", totalmoney=" + totalmoney + ", status=" + status + '}';
    }

    
}
