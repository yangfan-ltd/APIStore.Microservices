package com.zpc.order.entity;

import java.util.Date;
import java.util.List;

public class Order {
    private String orderId;
    private Long userId;
    private Date updateDate;
    private Date createDate;
    private List<OrderDetail> orderDetails;

    public Order() {
    }

    public Order(String orderId, Long userId, Date updateDate, Date createDate) {
        this.orderId = orderId;
        this.userId = userId;
        this.updateDate = updateDate;
        this.createDate = createDate;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public List<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId='" + orderId + '\'' +
                ", userId=" + userId +
                ", updateDate=" + updateDate +
                ", createDate=" + createDate +
                ", orderDetails=" + orderDetails +
                '}';
    }
}
