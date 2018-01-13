package com.xujp.service;

import com.xujp.domain.Order;

import java.util.List;
import java.util.Map;

/**
 * Created by Xujp on 2018/1/13.
 */
public interface OrderService {
    //新增
    public String addOrder(Order order);
    //删除
    public String deleteOrder(Order order);
    //修改
    public String updateOrder(Order order);
    //查询
    public Order findOrderById(long id);
    //模糊查询
    public List<Order> listOrders(Map map);
}
