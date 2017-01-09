package com.bishal.collegeProject.mapper;

import com.bishal.collegeProject.model.FreelancerProjectModel;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 10/21/16.
 */
public class FreelancerProjectMapper {
    public List<FreelancerProjectModel> mapList(List<Map> list) {

        List<FreelancerProjectModel> resultList = new ArrayList<FreelancerProjectModel>();

        FreelancerProjectModel freelancerProjectModel;

        if (!list.isEmpty()) {
            for (Map m : list) {
                freelancerProjectModel = mapRow(m);
                resultList.add(freelancerProjectModel);
            }
        }

        return resultList;
    }

    public FreelancerProjectModel mapRow(Map map) {
        System.out.println(map);

        FreelancerProjectModel freelancerProjectModel = new FreelancerProjectModel();

        freelancerProjectModel.setId(map.get("id").toString());
        freelancerProjectModel.setProjectName(map.get("project_name").toString());
        freelancerProjectModel.setProjectDesc(map.get("project_desc").toString());
        freelancerProjectModel.setProjectUrl(map.get("project_url").toString());
        freelancerProjectModel.setTime(map.get("time").toString());
        freelancerProjectModel.setProfileId(map.get("profile_id").toString());

        return freelancerProjectModel;
    }
}

