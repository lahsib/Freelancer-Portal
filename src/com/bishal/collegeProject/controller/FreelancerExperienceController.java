package com.bishal.collegeProject.controller;

import com.bishal.collegeProject.dao.FreelancerExperienceDao;
import com.bishal.collegeProject.mapper.FreelancerExperienceMapper;
import com.bishal.collegeProject.model.FreelancerExperienceModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * Created by user on 12/17/16.
 */
@Controller
@RequestMapping(value = "/experience")
public class FreelancerExperienceController {
    @Autowired
    FreelancerExperienceDao freelancerExperienceDao;
    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String addExperience(){
        return "front/addExperience";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String save(Model model, FreelancerExperienceModel freelancerExperienceModel){

        Map map = (Map) freelancerExperienceDao.procFreelancerExperience(freelancerExperienceModel,"i").get(0);

        System.out.println(map);
        return "redirect:/freelancer/detail";
    }

    @RequestMapping(value = "/edit/{id}",method = RequestMethod.GET)
    public String editView(Model model, @PathVariable("id") String id, FreelancerExperienceModel freelancerExperienceModel){
        freelancerExperienceModel.setId(id);

        freelancerExperienceModel = new FreelancerExperienceMapper().mapRow((Map)freelancerExperienceDao.procFreelancerExperience(freelancerExperienceModel,"a").get(0));
        model.addAttribute("experience",freelancerExperienceModel);

        return "front/editExperience";
    }

    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    public String update(FreelancerExperienceModel freelancerExperienceModel){

        Map map=(Map)freelancerExperienceDao.procFreelancerExperience(freelancerExperienceModel,"u").get(0);
        return "redirect:/freelancer/detail";
    }

    @RequestMapping(value = "/delete/{id}")
    public String delete(FreelancerExperienceModel freelancerExperienceModel,@PathVariable(value="id") String id){

        freelancerExperienceModel.setId(id);
        Map map=(Map)freelancerExperienceDao.procFreelancerExperience(freelancerExperienceModel,"d").get(0);

        return "redirect:/freelancer/detail";
    }
}
