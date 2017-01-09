package com.bishal.collegeProject.controller;

import com.bishal.collegeProject.dao.*;
import com.bishal.collegeProject.mapper.*;
import com.bishal.collegeProject.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 11/30/16.
 */
@Controller
@RequestMapping(value = "/freelancer")
public class FreelancerController {
    @Autowired
    UserDetailDao userDetailDao;

    @Autowired
    UserDao userDao;

    @Autowired
    FreelancerEducationDao freelancerEducationDao;

    @Autowired
    FreelancerExperienceDao freelancerExperienceDao;

    @Autowired
    FreelancerSkillDao freelancerSkillDao;

    @Autowired
    FreelancerProjectDao freelancerProjectDao;

    static final String ImageUrl = System.getProperty("catalina.home") + "/webapps/freelancer-img/";


    @RequestMapping(value = "/detail" , method = RequestMethod.GET)
    public String detail(HttpSession session, UserModel userModel, Model model, UserDetailModel userDetailModel
            , FreelancerEducationModel freelancerEducationModel
            , FreelancerExperienceModel freelancerExperienceModel
            , FreelancerSkillModel freelancerSkillModel
            , FreelancerProjectModel freelancerProjectModel){


        String id=(String)session.getAttribute("userId");
        System.out.println(id);


        userModel.setId(id);
        userDetailModel.setUserId(id);
        freelancerEducationModel.setProfileId(id);
        freelancerExperienceModel.setProfileId(id);
        freelancerSkillModel.setprofileId(id);
        freelancerProjectModel.setProfileId(id);

        userModel = new UserMapper().mapRow((Map)userDao.procUser(userModel,"s").get(0));

        userDetailModel = new FreelancerDetailMapper().mapRow((Map) userDetailDao.procFreelanceDetail(userDetailModel,"s").get(0));

        List<FreelancerEducationModel> freelancerEducationModelList = new FreelancerEducationMapper().mapList(freelancerEducationDao.procFreelancerEducation(freelancerEducationModel,"s"));

        List<FreelancerExperienceModel> freelancerExperienceModelList = new FreelancerExperienceMapper().mapList(freelancerExperienceDao.procFreelancerExperience(freelancerExperienceModel,"s"));

        List<FreelancerSkillModel> freelancerSkillModelList = new FreelancerSkillMapper().mapList(freelancerSkillDao.procSkill(freelancerSkillModel,"s"));

        List<FreelancerProjectModel> freelancerProjectModelList = new FreelancerProjectMapper().mapList(freelancerProjectDao.procFreelancerProject(freelancerProjectModel,"s"));



        model.addAttribute("user",userModel);

        model.addAttribute("detail", userDetailModel);

        model.addAttribute("education",freelancerEducationModelList);

        model.addAttribute("experience",freelancerExperienceModelList);

        model.addAttribute("skill",freelancerSkillModelList);

        model.addAttribute("fproject",freelancerProjectModelList);


        return "front/freelancerDetail";
    }

    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public String dashboard(HttpSession session, UserModel userModel,Model model){
        String id=(String)session.getAttribute("userId");
        userModel.setId(id);

        userModel = new UserMapper().mapRow((Map)userDao.procUser(userModel,"s").get(0));
        model.addAttribute("user",userModel);


        return "front/freelancerDashboard";
    }
    @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    public String updateUser(Model model,UserModel userModel,RedirectAttributes rd){
        Map map = (Map) userDao.procUser(userModel,"u").get(0);
        rd.addFlashAttribute("msg",map.get("msg"));
        System.out.println(map);
        return "redirect:/freelancer/dashboard";
    }
    @RequestMapping(value = "/addDetail" , method = RequestMethod.GET)
    public String addDetail(HttpSession session, UserDetailModel userDetailModel, Model model){
        String id=(String)session.getAttribute("userId");
        userDetailModel.setUserId(id);

        userDetailModel = new FreelancerDetailMapper().mapRow((Map) userDetailDao.procFreelanceDetail(userDetailModel,"a").get(0));
        System.out.println(userDetailModel);

        model.addAttribute("detail", userDetailModel);
        return "front/addDetail";
    }

    @RequestMapping(value = "/save",method = RequestMethod.POST)
    public String save(@RequestParam(value = "file", required = false) MultipartFile file, Model model, UserDetailModel userDetailModel, HttpSession session, RedirectAttributes rd) throws IOException {

        String a= (String) session.getAttribute("user");

        if (!file.isEmpty()) {
            BufferedImage src = ImageIO.read(new ByteArrayInputStream(file.getBytes()));
            File destination = new File(ImageUrl+a+".jpg"); // something like C:/Users/tom/Documents/nameBasedOnSomeId.png
            ImageIO.write(src, "jpg", destination);
            //Save the id you have used to create the file name in the DB. You can retrieve the image in future with the ID.
        }
        userDetailModel.setImage(a);

        Map map = (Map) userDetailDao.procFreelanceDetail(userDetailModel,"u").get(0);
        rd.addFlashAttribute("msg",map.get("msg"));
        System.out.println(map);
        return "redirect:/freelancer/addDetail";
    }



}
