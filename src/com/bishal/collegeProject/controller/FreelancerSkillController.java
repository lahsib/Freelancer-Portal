package com.bishal.collegeProject.controller;

import com.bishal.collegeProject.dao.FreelancerSkillDao;

import com.bishal.collegeProject.mapper.FreelancerSkillMapper;
import com.bishal.collegeProject.model.FreelancerSkillModel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * Created by user on 12/23/16.
 */
@Controller
@RequestMapping(value = "/skill")
public class FreelancerSkillController {

    @Autowired
    FreelancerSkillDao freelancerSkillDao;

    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String addView(){
        return "front/addSkill";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String saveSkill(FreelancerSkillModel freelancerSkillModel,Model model){
        System.out.println(freelancerSkillModel);
        Map map = (Map) freelancerSkillDao.procSkill(freelancerSkillModel,"i").get(0);
        model.addAttribute("msg",map.get("msg"));
        return "front/addSkill";
    }

    @RequestMapping (value="/edit/{id}",method = RequestMethod.GET)
    public String edit(@PathVariable(value="id") String id , Model model)
    {
        FreelancerSkillModel freelancerSkillModel = new FreelancerSkillModel();
        freelancerSkillModel.setId(id);

        freelancerSkillModel= new FreelancerSkillMapper().mapRow((Map)freelancerSkillDao.procSkill(freelancerSkillModel,"a").get(0));

        model.addAttribute("dataMap", freelancerSkillModel);

        return "front/editSkill";

    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String update(Model model, FreelancerSkillModel freelancerSkillModel){
        Map map=(Map)freelancerSkillDao.procSkill(freelancerSkillModel,"u").get(0);

        return "redirect:/freelancer/detail";
    }

    @RequestMapping(value = "/delete/{id}")

    public String delete(FreelancerSkillModel freelancerSkillModel, Model model,@PathVariable(value="id") String id){


        freelancerSkillModel.setId(id);
        Map map= (Map) freelancerSkillDao.procSkill(freelancerSkillModel,"d").get(0);

        return "redirect:/freelancer/detail";

    }
}
