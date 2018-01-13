package com.xujp.service.Impl;

import com.xujp.dao.OrderDao;
import com.xujp.domain.Order;
import com.xujp.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by Xujp on 2018/1/13.
 */
//表示这是一个业务层，是service类， @Controller是用于标注控制层组件，Component是当某一个类不好归类的时候用 这个注解  
@Service
public class OrderServiceImpl implements OrderService {
    @Resource //自动装载，根据名称注入
    OrderDao orderDao;

    @Override
    public String addOrder(Order order) {
        int result = orderDao.insertOrder(order);

        if (result >0){
            return "true";
        }else {
            return "false";
        }
    }

    @Override
    public String deleteOrder(Order order) {
        int result = orderDao.deleteOrder(order.getId());
        if (result >0){
            return "true";
        }else {
            return "false";
        }
    }

    @Override
    public String updateOrder(Order order) {
        int result = orderDao.updateOder(order);
        if (result >0){
            return "true";
        }else {
            return "false";
        }
    }

    @Override
    public Order findOrderById(long id) {
        return orderDao.findOrderById(id);
    }

    @Override
    public List<Order> listOrders(Map map) {
        return orderDao.listOrders(map);
    }
}
