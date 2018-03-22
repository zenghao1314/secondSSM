package com.jsx.map;

import com.jsx.model.Goods;
import com.jsx.model.User;

import java.util.List;

public interface GoodsMapper {

    public List<Goods> getAll();
    public int delete(int id);
    public int add(Goods goods);
    Goods getGoods(Goods goods);
   int update(Goods goods);
}
