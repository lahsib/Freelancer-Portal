package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.FreelancerProjectModel;

import java.util.List;

/**
 * Created by user on 10/21/16.
 */
public interface FreelancerProjectDao {
    List procFreelancerProject(FreelancerProjectModel freelancerProjectModel, String flag);

}
