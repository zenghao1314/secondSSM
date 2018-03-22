package com.jsx.service.impl;

import com.jsx.map.GoodsMapper;
import com.jsx.model.Goods;
import com.jsx.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private  GoodsMapper goodsMapper;
    @Override
    public int deleteById(int id) {
        return goodsMapper.delete(id);
    }

    @Override
    public List<Goods> getAll() {
        return goodsMapper.getAll();
    }

    @Override
    public int update(Goods goods) {
        return goodsMapper.update(goods);
    }

    @Override
    public Goods getGoods(Goods goods) {
        return  goodsMapper.getGoods(goods);
    }

    @Override
    public int add(Goods goods) {
        return  goodsMapper.add(goods);
    }
}
