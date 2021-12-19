package com.zhoayi.controller;

import com.zhoayi.bean.Student;
import com.zhoayi.dao.TestControllerDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author aceace3
 * @version 1.0
 * @date 2021/12/19 15:26
 */
@Controller
public class TestController {

    @Autowired
    private TestControllerDao testControllerDao;

    @RequestMapping("/index")
    public String testController(){
        return "index";
    }

    @RequestMapping("/findAll")
    @ResponseBody
    public List<Student> findAll(){
        return testControllerDao.findAll();
    }

    @RequestMapping("/findById")
    @ResponseBody
    public Student findById(@RequestParam Integer id){
        return testControllerDao.findById(id);
    }
}
