package com.bishal.collegeProject.controller;

import com.bishal.collegeProject.dao.FreelancerEducationDao;
import com.bishal.collegeProject.mapper.FreelancerEducationMapper;
import com.bishal.collegeProject.model.FreelancerEducationModel;
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
@RequestMapping(value = "/education")
public class FreelancerEducationController {

    @Autowired
    FreelancerEducationDao freelancerEducationDao;
    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String addEducation(){
        return "front/addEducation";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String save(Model model, FreelancerEducationModel freelancerEducationModel){

        System.out.println(freelancerEducationModel);
        Map map = (Map) freelancerEducationDao.procFreelancerEducation(freelancerEducationModel,"i").get(0);

        System.out.println(map);
        return "redirect:/freelancer/detail";
    }

    @RequestMapping(value = "/edit/{id}",method = RequestMethod.GET)
    public String editView(Model model, @PathVariable("id") String id,FreelancerEducationModel freelancerEducationModel){
        freelancerEducationModel.setId(id);

        freelancerEducationModel = new FreelancerEducationMapper().mapRow((Map)freelancerEducationDao.procFreelancerEducation(freelancerEducationModel,"a").get(0));
        model.addAttribute("education",freelancerEducationModel);
        System.out.println(freelancerEducationModel);
        return "front/editEducation";
    }

    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    public String update(FreelancerEducationModel freelancerEducationModel){

        Map map=(Map)freelancerEducationDao.procFreelancerEducation(freelancerEducationModel,"u").get(0);
        return "redirect:/freelancer/detail";
    }

    @RequestMapping(value = "/delete/{id}")
    public String delete(FreelancerEducationModel freelancerEducationModel,@PathVariable(value="id") String id){

        freelancerEducationModel.setId(id);
        Map map=(Map)freelancerEducationDao.procFreelancerEducation(freelancerEducationModel,"d").get(0);

        return "redirect:/freelancer/detail";
    }



}
