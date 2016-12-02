package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.UserTypeModel;

import java.util.List;

/**
 * Created by user on 10/3/16.
 */
public interface UserTypeDao {
    List procUserType(UserTypeModel userTypeModel, String flag);
}
