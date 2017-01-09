package com.bishal.collegeProject.mapper;

import com.bishal.collegeProject.model.UserDetailModel;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 10/21/16.
 */
public class FreelancerDetailMapper {
    public List<UserDetailModel> mapList(List<Map> list) {

        List<UserDetailModel> resultList = new ArrayList<UserDetailModel>();

        UserDetailModel userDetailModel;

        if (!list.isEmpty()) {
            for (Map m : list) {
                userDetailModel = mapRow(m);
                resultList.add(userDetailModel);
            }
        }

        return resultList;
    }

    public UserDetailModel mapRow(Map map) {
        System.out.println(map);

        UserDetailModel userDetailModel = new UserDetailModel();

        userDetailModel.setDetailId(map.get("id").toString());
        userDetailModel.setDescription(map.get("description").toString());
        userDetailModel.setPrice(map.get("price").toString());
        userDetailModel.setUserId(map.get("user_id").toString());
        userDetailModel.setImage(map.get("image").toString());

        return userDetailModel;
    }

}
