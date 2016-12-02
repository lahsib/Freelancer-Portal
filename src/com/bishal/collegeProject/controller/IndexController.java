package com.bishal.collegeProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by user on 9/16/16.
 */
@Controller

@RequestMapping(value = "/")
public class IndexController {

    @RequestMapping(value ="/",method = RequestMethod.GET)
    public String view(Model model){

        System.out.println("index controller");
        return "front/index";
    }

}
