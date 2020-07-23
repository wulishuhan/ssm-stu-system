package com.shuhan.controller;

import com.shuhan.domain.Student;
import com.shuhan.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private StudentService studentService;
    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student student,HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        int rows=studentService.addStudent(student);
        if(rows>0){
            String str=request.getParameter("name");
            str+="同学,被添加成功";
            mv.addObject("msg",str);
            mv.setViewName("main");
        }else{
            mv.addObject("msg","添加失败");
            mv.setViewName("fail");
        }
        return mv;
    }


    @RequestMapping("/taddStudent.do")
    public ModelAndView taddStudent(Student student,HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("addStudent");
        return mv;
    }

    @RequestMapping("/tlistStudent.do")
    public ModelAndView tlistStudent(Student student,HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("listStudent");
        return mv;
    }

    @RequestMapping("/main.do")
    public ModelAndView main(Student student,HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("main");
        return mv;
    }
    @RequestMapping("/tdeleteStudent.do")
    public ModelAndView tdeleteStudent(Student student,HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("deleteStudent");
        return mv;
    }
    @RequestMapping("/tupdateStudent.do")
    public ModelAndView tupdateStudent(Student student,HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("updateStudent");
        return mv;
    }

    @ResponseBody
    @RequestMapping(value = "/queryStudent.do")
    public List<Student> queryStudent(){
        List<Student> students=studentService.queryStudent();
        return students;
    }

    @RequestMapping("/updateStudent.do")
    public ModelAndView updateStudent(Student student){
        ModelAndView mv=new ModelAndView();
        int rows=studentService.updateStudents(student);
        if(rows>0){
            mv.addObject("msg","修改成功");
            mv.setViewName("main");
        }else{
            mv.addObject("msg","修改失败");
            mv.setViewName("main");
        }
        return mv;
    }

    @RequestMapping("/deleteStudent.do")
    public ModelAndView deleteStudent(String name,HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        int rows=studentService.deleteStudent(name);
        if(rows>0){
            String str=request.getParameter("name");
            str+="删除成功";
            mv.addObject("msg",str);
            mv.setViewName("main");
        }else{
            mv.addObject("msg","删除失败");
            mv.setViewName("main");
        }
        return mv;
    }
}
