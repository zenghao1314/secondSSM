package com.jsx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/jump")
public class JumpController {
    @RequestMapping("dologin")
    public String showLogin(){
        return "login";
    }
    @RequestMapping("/doregister")
    public String showRegister(){
        return "register";
    }
    @RequestMapping("/information")
    public String doinformation(){
        return "information";
    }
    @RequestMapping("/Main")
    public String doMain(){
        return "main";
    }
    @RequestMapping("/shopping")
    public String doshopping(){
        return "shopping";
    }
    @RequestMapping("/hostSell")
    public String doHostSell(){
        return "hotProducts";
    }
    @RequestMapping("/Manger")
    public String doManagerLogin(){
        return "Manager";
    }
    @RequestMapping("/SeachGoods")
    public String doSeachGoods(){
        return "SeachGoods";
    }
}
