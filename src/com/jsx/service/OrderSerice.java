package com.jsx.service;


import com.jsx.model.Order;

import java.util.List;

/**
 * created by XX_zh
 * date 2018/5/22 0:31
 * XX_zh Produced, must be fine
 */
public interface OrderSerice {
    int add(Order order);
    public int deleteById(int id);
    public List<Order> getAll();
}
