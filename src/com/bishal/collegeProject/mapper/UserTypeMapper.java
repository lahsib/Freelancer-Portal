package com.bishal.collegeProject.mapper;

import com.bishal.collegeProject.model.UserTypeModel;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


/**
 * Created by user on 10/3/16.
 */
public class UserTypeMapper {

    public List<UserTypeModel> mapList(List<Map> list) {

        List<UserTypeModel> resultList = new ArrayList<UserTypeModel>();

        UserTypeModel userTypeModel;

        if (!list.isEmpty()) {
            for (Map m : list) {
                userTypeModel = mapRow(m);
                resultList.add(userTypeModel);
            }
        }

        return resultList;
    }

    public UserTypeModel mapRow(Map map) {
        System.out.println(map);

        UserTypeModel userTypeModel = new UserTypeModel();

        userTypeModel.setUserTypeId(map.get("id").toString());
        userTypeModel.setName(map.get("name").toString());
        userTypeModel.setDescription(map.get("description").toString());
        return userTypeModel;
    }



}
