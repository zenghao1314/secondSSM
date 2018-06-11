package com.jsx.controller;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsx.common.ImageCode;
import com.jsx.model.Goods;
import com.jsx.service.GoodsService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.servlet.ModelAndView;

import com.jsx.model.User;
import com.jsx.service.UserService;

@Controller
public class UserController {
	private static final Logger log = Logger.getLogger(UserController.class);  
	@Autowired
	private UserService userService;
	@Autowired
	private GoodsService goodsService;
    @RequestMapping(value = "/doLogin")
    //public String doLogin(HttpServletRequest request)
	public String doLogin(User user,@RequestParam("uname") String uname, @RequestParam("password") String pwd,HttpSession session,
                          @RequestParam("validateCode") String validateCode, HttpServletRequest request,Map<String,Object> map)
	{
        if(!ImageCode.validateCode(validateCode,session)){
           return  "login";
        }
		boolean authorized = userService.isAuthorizedUser(uname, pwd);
        if(authorized)
          {
          	User findUser =userService.getUser(user);
          	List<Goods> findGoods=goodsService.getAll();
//          	request.setAttribute("Commodity",findGoods);
          	session.setAttribute("Commodity",findGoods);
          	session.setAttribute("user",findUser);
            return "main";
        }
        else
        {
        	return "login";
        }
    }

	@RequestMapping(value = "/getall")
	public String getAll(Map<String,Object> map)
	{
		List<User> userList = userService.getAll();
		map.put("userList", userList);
		return "information";
	}
	
	@RequestMapping(value = "/query", method = RequestMethod.POST)
	public ModelAndView query(@RequestParam("uname")String uname)
	{
		User user = new User();
		user.setUname(uname);
		List<User> userList = userService.getUserListByCondition(user);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("userList", userList);
		modelAndView.setViewName("user/user_list");
		return modelAndView;
	}
	

	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(User user){
		log.info(user.getUname()+"------------"+user.getPassword());
	    userService.add(user);
        return "login";
    }
	

	
	@RequestMapping("/update")
	public String update(User user,HttpSession session,HttpServletRequest request) {
		userService.update(user);
		session.setAttribute("user",user);
		return "main";
	}

    @RequestMapping("/genValidCode")
    public void genValidCode(HttpServletRequest request,HttpServletResponse response){
        ImageCode.writeImageCode(request, response);
    }

	





}
