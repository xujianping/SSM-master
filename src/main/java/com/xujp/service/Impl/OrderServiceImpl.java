package com.xujp.service.Impl;

import com.xujp.dao.OrderDao;
import com.xujp.dao.UserDao;
import com.xujp.domain.Order;
import com.xujp.domain.OrderExample;
import com.xujp.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by Xujp on 2018/1/13.
 */
//表示这是一个业务层，是service类， @Controller是用于标注控制层组件，Component是当某一个类不好归类的时候用 这个注解  
@Service
@Transactional(rollbackFor = Exception.class)
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDao orderDao;

    @Override
    public int insertOrder(Order order) {
        return orderDao.insert(order);
    }

    @Override
    public int deleteByExample(OrderExample example) {
        return orderDao.deleteByExample(example);
    }

    @Override
    public int updateByPrimaryKeySelective(Order order) {
        return orderDao.updateByPrimaryKeySelective(order);
    }

    @Override
    public List<Order> getAllOrdersByExample(OrderExample example) {
        return orderDao.selectByExample(example);
    }

}
