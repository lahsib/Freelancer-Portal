package com.bishal.collegeProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by user on 11/30/16.
 */
@Controller
@RequestMapping(value = "/freelancer")
public class FreelancerController {
    @RequestMapping(value = "/detail" , method = RequestMethod.GET)
    public String detail(){
        return "front/freelancerDetail";
    }

    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public String dashboard(){
        return "front/freelancerDashboard";
    }
}
