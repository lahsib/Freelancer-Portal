package com.bishal.collegeProject.controller;

import com.bishal.collegeProject.dao.FreelancerDetailDao;
import com.bishal.collegeProject.dao.UserDao;
import com.bishal.collegeProject.mapper.UserMapper;
import com.bishal.collegeProject.model.FreelancerDetailModel;
import com.bishal.collegeProject.model.UserModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/**
 * Created by user on 11/30/16.
 */
@Controller
@RequestMapping(value = "/freelancer")
public class FreelancerController {
    @Autowired
    FreelancerDetailDao freelancerDetailDao;

    @Autowired
    UserDao userDao;

    static final String ImageUrl = System.getProperty("catalina.home") + "/webapps/freelancer-img/";


    @RequestMapping(value = "/detail" , method = RequestMethod.GET)
    public String detail(){
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
    @RequestMapping(value = "/addDetail" , method = RequestMethod.GET)
    public String addDetail(){
        return "front/addDetail";
    }

    @RequestMapping(value = "/save",method = RequestMethod.POST)
    public String save(@RequestParam(value = "file", required = false) MultipartFile file, Model model, FreelancerDetailModel freelancerDetailModel, HttpSession session) throws IOException {

        String a= (String) session.getAttribute("user");

        if (!file.isEmpty()) {
            BufferedImage src = ImageIO.read(new ByteArrayInputStream(file.getBytes()));
            File destination = new File(ImageUrl+a+".jpg"); // something like C:/Users/tom/Documents/nameBasedOnSomeId.png
            ImageIO.write(src, "jpg", destination);
            //Save the id you have used to create the file name in the DB. You can retrieve the image in future with the ID.
        }
        freelancerDetailModel.setImage(a);

        Map map = (Map) freelancerDetailDao.procFreelanceDetail(freelancerDetailModel,"i").get(0);

        System.out.println(map);
        return null;
    }
}
