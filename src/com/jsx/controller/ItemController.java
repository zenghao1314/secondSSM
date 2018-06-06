package com.jsx.controller;

import com.jsx.model.Goods;
import com.jsx.model.Order;
import com.jsx.model.User;
import com.jsx.service.GoodsService;
import com.jsx.service.OrderSerice;
import com.jsx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * created by XX_zh
 * date 2018/5/22 0:13
 * XX_zh Produced, must be fine
 */
@Controller
@RequestMapping("/order")
public class ItemController {
    @Autowired
    private UserService userService;
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private OrderSerice orderSerice;

    @RequestMapping(value = "/addOrder", method = RequestMethod.POST)
    public String add(Order order, HttpServletRequest request){
        //我要获取当前的日期
        Date date = new Date();
        //设置要获取到什么样的时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //获取String类型的时间
        String createdate = sdf.format(date);
        order.setTime(createdate);
        orderSerice.add(order);
        List<User> userList = userService.getAll();
        List<Goods> goodsList=goodsService.getAll();
        List<Order> ordersList= orderSerice.getAll();
        request.setAttribute("Order",ordersList);
        request.setAttribute("Commodity",goodsList);
        request.setAttribute("UserManager",userList)  ;      return "Main";
    }

    @RequestMapping(value = "/delOrder", method = RequestMethod.POST)
    public String delOrder(int oid, HttpServletRequest request){
        orderSerice.deleteById(oid);
        List<User> userList = userService.getAll();
        List<Goods> goodsList=goodsService.getAll();
        List<Order> ordersList= orderSerice.getAll();
        request.setAttribute("Order",ordersList);
        request.setAttribute("Commodity",goodsList);
        request.setAttribute("UserManager",userList);
        return "managermentCenter";
    }


}
