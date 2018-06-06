package com.jsx.map;

import com.jsx.model.Goods;
import com.jsx.model.Order;

import java.util.List;

/**
 * created by XX_zh
 * date 2018/5/22 0:30
 * XX_zh Produced, must be fine
 */
public interface OrderMapper {
    public List<Order> getAll();
    public int delete(int id);
    public int add(Order order);
}
