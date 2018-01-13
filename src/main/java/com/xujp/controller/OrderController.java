package com.xujp.controller;

import com.xujp.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Xujp on 2018/1/13.
 */
@Controller
@RequestMapping("/orders")
public class OrderController {
    @Autowired
    OrderService orderService;

    @RequestMapping("/list")//为方法设置访问路径  
    public String list(){
        return "orders/list";
    }
}
