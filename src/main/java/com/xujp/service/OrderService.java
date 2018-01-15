package com.xujp.service;

import com.xujp.domain.Order;
import com.xujp.domain.OrderExample;

import java.util.List;
import java.util.Map;

/**
 * Created by Xujp on 2018/1/13.
 */
public interface OrderService {
    int insertOrder(Order order);

    int deleteByExample(OrderExample example);

    int updateByPrimaryKeySelective(Order order);

    List<Order> getAllOrdersByExample(OrderExample example);
}
