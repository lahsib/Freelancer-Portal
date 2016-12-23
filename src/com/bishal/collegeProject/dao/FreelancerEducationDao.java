package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.FreelancerEducationModel;

import java.util.List;

/**
 * Created by user on 10/21/16.
 */
public interface FreelancerEducationDao {
    List procFreelancerEducation(FreelancerEducationModel freelancerEducationModel, String flag);
}
