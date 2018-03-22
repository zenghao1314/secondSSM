package com.jsx.controller;

import com.jsx.model.Goods;
import com.jsx.model.User;
import com.jsx.service.GoodsService;
import com.jsx.service.UserService;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class ManagerController {
    @Autowired
    private UserService userService;
    @Autowired
   private GoodsService goodsService;
    @RequestMapping(value = "/ManagerLogin")
    public String doLogin(User user, @RequestParam("uname") String uname, @RequestParam("password") String pwd, HttpServletRequest request, Map<String,Object> map)
    {
        if ("zzh".equals(uname)&&"123".equals(pwd)){
            List<User> userList = userService.getAll();
            List<Goods> goodsList=goodsService.getAll();
            request.setAttribute("Commodity",goodsList);
           request.setAttribute("UserManager",userList);
            return "managermentCenter";
        }else {
            return "Manager";
        }
    }

    @RequestMapping(value = "/delete/{id}")
    public String delete(@PathVariable(value="id") Integer id)
    {
        userService.deleteById(id);
        return "redirect:/getall";
    }
    @RequestMapping(value = "/Goodsadd", method = RequestMethod.POST)
    public String add(Goods goods, HttpServletRequest request, HttpSession session,
                     HttpServletResponse response)throws IllegalStateException, IOException {
        String pathRoot = request.getSession().getServletContext()
                .getRealPath("");
        String path = "";

        // 将当前上下文初始化给 CommonsMutipartResolver （多部分解析器）
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
                request.getSession().getServletContext());

        // 检查form中是否有enctype="multipart/form-data"
        if (multipartResolver.isMultipart(request)) {

            // 将request变成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;

            // 获取multiRequest 中所有的文件名
            MultipartFile file = multiRequest.getFile("file");
            String fileName = file.getOriginalFilename();
            // 目录创建
            File f = new File(pathRoot + "/head");
            if (!f.exists()) {
                f.mkdirs();
            }
            if (fileName != "") {
                // 获得文件后缀名称
                fileName = fileName.substring(fileName.lastIndexOf('.'));
                // 设置日期为文件名
                SimpleDateFormat sdf = new SimpleDateFormat(
                        "yyyy-MM-dd-HH-mm-ss");
                String date = sdf.format(new Date());
                path = "/head/" + date + "." + fileName;
                FileOutputStream fos = new FileOutputStream(pathRoot + path);
                fos.write(file.getBytes());
                fos.flush();
                fos.close();
                goods.setImage(path);
            }
            }
        goodsService.add(goods);
        session.setAttribute("Goods",goods);
        return "managermentCenter";
    }
}
