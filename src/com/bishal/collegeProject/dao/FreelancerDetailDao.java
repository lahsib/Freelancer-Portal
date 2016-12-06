package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.FreelancerDetailModel;

import java.util.List;

/**
 * Created by user on 10/21/16.
 */
public interface FreelancerDetailDao {
    List procFreelanceDetail(FreelancerDetailModel freelancerDetailModel, String flag);
}
