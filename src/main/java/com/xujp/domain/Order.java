package com.xujp.domain;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Created by Xujp on 2018/1/13.
 */
public class Order {
    private long id;
    private String orderNo;
    private  String customer;
    private String phoneNo;
    private  String address;
    private Date orderTime;
    private BigDecimal payable;
    private Date createTime;
    private String orderState;

    public Order(){};
    public Order(long id, String orderNo, String customer, String phoneNo, String address, Date orderTime, BigDecimal payable, Date createTime, String orderState) {
        this.id = id;
        this.orderNo = orderNo;
        this.customer = customer;
        this.phoneNo = phoneNo;
        this.address = address;
        this.orderTime = orderTime;
        this.payable = payable;
        this.createTime = createTime;
        this.orderState = orderState;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public BigDecimal getPayable() {
        return payable;
    }

    public void setPayable(BigDecimal payable) {
        this.payable = payable;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getOrderState() {
        return orderState;
    }

    public void setOrderState(String orderState) {
        this.orderState = orderState;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", orderNo='" + orderNo + '\'' +
                ", customer='" + customer + '\'' +
                ", phoneNo='" + phoneNo + '\'' +
                ", address='" + address + '\'' +
                ", orderTime=" + orderTime +
                ", payable=" + payable +
                ", createTime=" + createTime +
                ", orderState='" + orderState + '\'' +
                '}';
    }
}
