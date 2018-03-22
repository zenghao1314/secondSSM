package com.jsx.service;

import com.jsx.model.Goods;
import com.jsx.model.User;

import java.util.List;

public interface GoodsService {
    public int deleteById(int id);
    public List<Goods> getAll();
    public int update(Goods goods);
    Goods getGoods(Goods goods);
    int add(Goods goods);
}
