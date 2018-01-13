package com.xujp.dao;

import com.xujp.domain.Order;

import java.util.List;
import java.util.Map;

/**
 * Created by Xujp on 2018/1/13.
 */
public interface OrderDao {
    //新增订单
    public int insertOrder(Order order);
    //删除订单
    public int deleteOrder(long id);
    //修改订单
    public int updateOder(Order order);
    //查询订单跟
    public Order findOrderById(long id);
    //查询全部订单
    public List<Order> listOrders(Map map);
}
