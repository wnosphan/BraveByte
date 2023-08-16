/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author user
 */
public class Bill {
    private int id;
    private int accID;
    private String billDate;
    private int paymentMethod;
    private double total;

    public Bill() {
    }

    public Bill(int id, int accID, String billDate, int paymentMethod, double total) {
        this.id = id;
        this.accID = accID;
        this.billDate = billDate;
        this.paymentMethod = paymentMethod;
        this.total = total;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAccID() {
        return accID;
    }

    public void setAccID(int accID) {
        this.accID = accID;
    }

    public String getBillDate() {
        return billDate;
    }

    public void setBillDate(String billDate) {
        this.billDate = billDate;
    }

    public int getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(int paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Bill{" + "id=" + id + ", accID=" + accID + ", billDate=" + billDate + ", paymentMethod=" + paymentMethod + ", total=" + total + '}';
    }
    
}
