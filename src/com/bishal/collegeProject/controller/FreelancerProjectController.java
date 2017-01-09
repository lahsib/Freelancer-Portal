package com.bishal.collegeProject.controller;

import com.bishal.collegeProject.dao.FreelancerProjectDao;
import com.bishal.collegeProject.mapper.FreelancerProjectMapper;
import com.bishal.collegeProject.model.FreelancerProjectModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * Created by user on 10/21/16.
 */
@Controller
@RequestMapping(value = "/freelancerProject")
public class FreelancerProjectController {
    @Autowired
    FreelancerProjectDao freelancerProjectDao;

    @RequestMapping(value = "/add")
    public String view(){
        return "front/addFreelancerProject";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String save(Model model, FreelancerProjectModel freelancerProjectModel){


        Map map = (Map) freelancerProjectDao.procFreelancerProject(freelancerProjectModel,"i").get(0);

        System.out.println(map);
        return "redirect:/freelancer/detail";
    }

    @RequestMapping(value = "/edit/{id}",method = RequestMethod.GET)
    public String editView(Model model, @PathVariable("id") String id, FreelancerProjectModel freelancerProjectModel){
        freelancerProjectModel.setId(id);

        freelancerProjectModel = new FreelancerProjectMapper().mapRow((Map)freelancerProjectDao.procFreelancerProject(freelancerProjectModel,"a").get(0));
        model.addAttribute("fproject",freelancerProjectModel);
        return "front/editFreelancerProject";
    }

    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    public String update(FreelancerProjectModel freelancerProjectModel){

        Map map=(Map)freelancerProjectDao.procFreelancerProject(freelancerProjectModel,"u").get(0);
        return "redirect:/freelancer/detail";
    }

    @RequestMapping(value = "/delete/{id}")
    public String delete(FreelancerProjectModel freelancerProjectModel,@PathVariable(value="id") String id){

        freelancerProjectModel.setId(id);
        Map map=(Map)freelancerProjectDao.procFreelancerProject(freelancerProjectModel,"d").get(0);

        return "redirect:/freelancer/detail";
    }



}
