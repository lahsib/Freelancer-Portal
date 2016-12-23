package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.FreelancerExperienceModel;

import java.util.List;

/**
 * Created by user on 10/21/16.
 */
public interface FreelancerExperienceDao {
    List procFreelancerExperience(FreelancerExperienceModel freelancerExperienceModel, String flag);

}
