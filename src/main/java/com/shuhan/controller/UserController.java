package com.shuhan.controller;

import com.shuhan.domain.User;
import com.shuhan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/addUser.do")
    public ModelAndView addUser(User user){
        ModelAndView mv=new ModelAndView();
        int rows=userService.addUser(user);
        if(rows>0){
            mv.addObject("msg","注册成功");
            mv.setViewName("main");
        }else{
            mv.addObject("msg","注册失败");
            mv.setViewName("fail");
        }
        return mv;
    }

    @RequestMapping("/loginUser.do")
    public ModelAndView loginUser(User user, HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        List<User> uu=userService.findUsers(user);
        int rows=uu.size();
        if(rows==1){
            String msg="登录成功,欢迎";
            msg+=request.getParameter("username");
            mv.addObject("msg",msg);
            mv.setViewName("main");
        }else{
            mv.addObject("msg","登录失败");
            mv.setViewName("login");
        }
        return mv;
    }

    @RequestMapping("/register.do")
    public ModelAndView register(User user, HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("register");
        return mv;
    }
}
