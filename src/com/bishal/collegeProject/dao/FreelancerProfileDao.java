package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.FreelancerProfileModel;

import java.util.List;

/**
 * Created by user on 10/21/16.
 */
public interface FreelancerProfileDao {
    List procFreelanceProfile(FreelancerProfileModel freelancerProfileModel, String flag);
}
