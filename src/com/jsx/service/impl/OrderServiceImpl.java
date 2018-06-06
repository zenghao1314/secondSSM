package com.jsx.service.impl;

import com.jsx.map.OrderMapper;
import com.jsx.map.UserMapper;
import com.jsx.model.Order;
import com.jsx.service.OrderSerice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * created by XX_zh
 * date 2018/5/22 0:32
 * XX_zh Produced, must be fine
 */
@Service
public class OrderServiceImpl implements OrderSerice {

    @Autowired
    private OrderMapper orderMapper;
    @Override
    public int add(Order order) {
        return orderMapper.add(order);
    }

    @Override
    public int deleteById(int id) {
        return orderMapper.delete(id);
    }

    @Override
    public List<Order> getAll() {
        return orderMapper.getAll();
    }
}
