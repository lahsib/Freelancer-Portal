package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.FreelancerSkillModel;

import java.util.List;

/**
 * Created by user on 10/21/16.
 */
public interface FreelancerSkillDao {
    List procSkill(FreelancerSkillModel freelancerSkillModel, String flag);
}
