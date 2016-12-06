package com.bishal.collegeProject.mapper;

import com.bishal.collegeProject.model.FreelancerDetailModel;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 10/21/16.
 */
public class FreelancerDetailMapper {
    public List<FreelancerDetailModel> mapList(List<Map> list) {

        List<FreelancerDetailModel> resultList = new ArrayList<FreelancerDetailModel>();

        FreelancerDetailModel freelancerDetailModel;

        if (!list.isEmpty()) {
            for (Map m : list) {
                freelancerDetailModel = mapRow(m);
                resultList.add(freelancerDetailModel);
            }
        }

        return resultList;
    }

    public FreelancerDetailModel mapRow(Map map) {
        System.out.println(map);

        FreelancerDetailModel freelancerDetailModel = new FreelancerDetailModel();

        freelancerDetailModel.setDetailId(map.get("id").toString());
        freelancerDetailModel.setDescription(map.get("description").toString());
        freelancerDetailModel.setPrice(map.get("price").toString());
        freelancerDetailModel.setUserId(map.get("user_id").toString());
        freelancerDetailModel.setImage(map.get("image").toString());

        return freelancerDetailModel;
    }

}
