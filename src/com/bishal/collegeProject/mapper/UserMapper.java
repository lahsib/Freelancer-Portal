package com.bishal.collegeProject.mapper;

import com.bishal.collegeProject.model.UserModel;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 11/22/16.
 */
public class UserMapper {
    public List<UserModel> mapList(List<Map> list) {

        List<UserModel> resultList = new ArrayList<UserModel>();

        UserModel userModel;

        if (!list.isEmpty()) {
            for (Map m : list) {
                userModel = mapRow(m);
                resultList.add(userModel);
            }
        }

        return resultList;
    }

    public UserModel mapRow(Map map) {
        System.out.println(map);

        UserModel userModel = new UserModel();

        userModel.setId(map.get("id").toString());
        userModel.setUserName(map.get("username").toString());
        userModel.setPassword(map.get("password").toString());
        userModel.setUserType(map.get("user_type").toString());
        userModel.setUserTypeName(map.get("userTypeName").toString());
        userModel.setName(map.get("name").toString());
        userModel.setTitle(map.get("title").toString());
        userModel.setEmail(map.get("email").toString());
        userModel.setAddress(map.get("address").toString());

        return userModel;
    }

}
