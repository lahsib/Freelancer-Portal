package com.bishal.collegeProject.controller;

import com.bishal.collegeProject.dao.UserDao;
import com.bishal.collegeProject.mapper.UserMapper;
import com.bishal.collegeProject.model.UserModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by user on 11/22/16.
 */
@Controller
@RequestMapping(value = "/login")
public class LoginController {
    @Autowired
    UserDao userDao;

    @RequestMapping(value = "/check",method = RequestMethod.POST)
    public String verify(Model model, UserModel userModel, RedirectAttributes rd, HttpServletRequest request){
        System.out.println(userModel);
        Map map = (Map) userDao.procUser(userModel,"v").get(0);
        System.out.println(map);
        String status="success";
        if(map.get("status").equals(status)){
            UserModel userModel1=new UserModel();
            userModel1.setId(String.valueOf(map.get("id")));
            System.out.println(userModel1);
            System.out.println("sadasasas");
            String user1="Freelancer";
            String user2="Employer";
            String user3="Admin";
            userModel1 = new UserMapper().mapRow((Map)userDao.procUser(userModel1,"s").get(0));
            System.out.println(userModel1.getUserTypeName());
            HttpSession session=request.getSession();
            session.setAttribute("user",userModel1.getUserName());
            session.setAttribute("userId",userModel1.getId());
            session.setAttribute("userTypeId",userModel1.getUserType());

            if (userModel1.getUserTypeName().equals(user1)){
                rd.addFlashAttribute("user",userModel1);
                return "redirect:../freelancer/detail";
            }
            else if(userModel1.getUserTypeName().equals(user2)){
                return "employer";
            }
            else if(userModel1.getUserTypeName().equals(user3)){
                return "admin";
            }else{
                return "login";
            }

        }
        else{
            System.out.println(map.get("msg"));
            System.out.println(map.get("status"));
            rd.addFlashAttribute("logstatus",map.get("status"));
            rd.addFlashAttribute("logmsg",map.get("msg"));
            return "redirect:../user/view";
        }

    }


    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        session.invalidate();
        return "redirect:../user/view";
    }
}
