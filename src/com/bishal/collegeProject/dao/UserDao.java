package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.UserModel;

import java.util.List;

/**
 * Created by user on 11/22/16.
 */
public interface UserDao {
    List procUser(UserModel userModel, String flag);
}
