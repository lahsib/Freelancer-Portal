package com.bishal.collegeProject.controller;

import com.bishal.collegeProject.dao.UserTypeDao;
import com.bishal.collegeProject.mapper.UserTypeMapper;
import com.bishal.collegeProject.model.UserTypeModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 10/3/16.
 */
@Controller
@RequestMapping(value ="/userType")
public class UserTypeController {

    @Autowired
    UserTypeDao userTypeDao;

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public String view(Model model){
        UserTypeModel userTypeModel=new UserTypeModel();

        List<UserTypeModel> userTypeModelList = new UserTypeMapper().mapList(userTypeDao.procUserType(userTypeModel,"a"));
        System.out.println(userTypeModel);
        System.out.println("********************************");
        System.out.println(userTypeModelList);

        System.out.println("*********************************");
        model.addAttribute("userTypeList",userTypeModelList);

        return "userType";
    }

    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String viewAll(Model model){
        model.addAttribute("userTypeAction","add");
        return view(model);
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String add(Model model,UserTypeModel userTypeModel){
        System.out.println(userTypeModel);
        Map map = (Map) userTypeDao.procUserType(userTypeModel,"i").get(0);
        System.out.println(map);
        return "redirect:../userType/view";

    }

    @RequestMapping (value="/edit/{id}",method = RequestMethod.GET)
    public String edit(@PathVariable(value="id") String id , Model model)
    {
        UserTypeModel userTypeModel = new UserTypeModel();
        userTypeModel.setUserTypeId(id);
        userTypeModel= new UserTypeMapper().mapRow((Map)userTypeDao.procUserType(userTypeModel,"s").get(0));

        model.addAttribute("dataMap", userTypeModel);
        model.addAttribute("userTypeAction", "edit");


        return view(model);

    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String update(Model model, UserTypeModel userTypeModel){
        Map map=(Map)userTypeDao.procUserType(userTypeModel,"u").get(0);

        return "redirect:../userType/view";
    }

    @RequestMapping(value = "/delete/{id}")

    public String delete(UserTypeModel userTypeModel, Model model,@PathVariable(value="id") String id){


        userTypeModel.setUserTypeId(id);
        Map map= (Map) userTypeDao.procUserType(userTypeModel,"d").get(0);

        return view(model);
    }



}
