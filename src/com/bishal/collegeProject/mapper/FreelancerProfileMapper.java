package com.bishal.collegeProject.mapper;

import com.bishal.collegeProject.model.FreelancerProfileModel;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 10/21/16.
 */
public class FreelancerProfileMapper {
    public List<FreelancerProfileModel> mapList(List<Map> list) {

        List<FreelancerProfileModel> resultList = new ArrayList<FreelancerProfileModel>();

        FreelancerProfileModel freelancerProfileModel;

        if (!list.isEmpty()) {
            for (Map m : list) {
                freelancerProfileModel = mapRow(m);
                resultList.add(freelancerProfileModel);
            }
        }

        return resultList;
    }

    public FreelancerProfileModel mapRow(Map map) {
        System.out.println(map);

        FreelancerProfileModel freelancerProfileModel = new FreelancerProfileModel();


        return freelancerProfileModel;
    }

}
