package com.xujp.dao;

import com.xujp.domain.Order;
import com.xujp.domain.OrderExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Xujp on 2018/1/13.
 */
public interface OrderDao {
    int countByExample(OrderExample example);

    int deleteByExample(OrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    List<Order> selectByExample(OrderExample example);

    Order selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Order record, @Param("example") OrderExample example);

    int updateByExample(@Param("record") Order record, @Param("example") OrderExample example);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
}
