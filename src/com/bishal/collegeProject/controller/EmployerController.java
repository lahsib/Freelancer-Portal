package com.bishal.collegeProject.controller;

import com.bishal.collegeProject.dao.UserDao;
import com.bishal.collegeProject.mapper.UserMapper;
import com.bishal.collegeProject.model.UserModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by user on 12/26/16.
 */
@Controller
@RequestMapping(value = "/employer")
public class EmployerController {
    @Autowired
    UserDao userDao;
    @RequestMapping(value = "/home",method = RequestMethod.GET)
    public String employerHome(HttpSession session, UserModel userModel, Model model){

        String id=(String)session.getAttribute("userId");
        System.out.println(id);

        userModel.setId(id);

        userModel = new UserMapper().mapRow((Map)userDao.procUser(userModel,"s").get(0));

        model.addAttribute("user",userModel);
        return "front/employerHome";
    }
}
