package com.bishal.collegeProject.controller;

import com.bishal.collegeProject.dao.UserDao;
import com.bishal.collegeProject.dao.UserTypeDao;
import com.bishal.collegeProject.mapper.UserTypeMapper;
import com.bishal.collegeProject.model.UserModel;
import com.bishal.collegeProject.model.UserTypeModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.Map;

/**
 * Created by user on 11/22/16.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    UserDao userDao;
    @Autowired
    UserTypeDao userTypeDao;

    @RequestMapping(value = "/view",method = RequestMethod.GET)
    public String view(Model model){

        UserTypeModel userTypeModel=new UserTypeModel();
        List<UserTypeModel> userTypeModelList = new UserTypeMapper().mapList(userTypeDao.procUserType(userTypeModel,"a"));
        model.addAttribute("userType",userTypeModelList);
        return "front/login";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String add(Model model, UserModel userModel, RedirectAttributes rd){
        Map map = (Map) userDao.procUser(userModel,"i").get(0);
        System.out.println(map.get("msg"));
        rd.addFlashAttribute("msg",map);
        return "redirect:../user/view";
    }

}
