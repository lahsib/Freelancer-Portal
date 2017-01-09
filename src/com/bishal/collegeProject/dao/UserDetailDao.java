package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.UserDetailModel;

import java.util.List;

/**
 * Created by user on 10/21/16.
 */
public interface UserDetailDao {
    List procFreelanceDetail(UserDetailModel userDetailModel, String flag);
}
