package com.bishal.collegeProject.mapper;


import com.bishal.collegeProject.model.FreelancerSkillModel;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 10/21/16.
 */
public class FreelancerSkillMapper {
    public List<FreelancerSkillModel> mapList(List<Map> list) {

        List<FreelancerSkillModel> resultList = new ArrayList<FreelancerSkillModel>();

        FreelancerSkillModel freelancerSkillModel;

        if (!list.isEmpty()) {
            for (Map m : list) {
                freelancerSkillModel = mapRow(m);
                resultList.add(freelancerSkillModel);
            }
        }

        return resultList;
    }

    public FreelancerSkillModel mapRow(Map map) {
        System.out.println(map);

        FreelancerSkillModel freelancerSkillModel = new FreelancerSkillModel();

        freelancerSkillModel.setId(map.get("id").toString());
        freelancerSkillModel.setName(map.get("name").toString());
        freelancerSkillModel.setprofileId(map.get("profile_id").toString());
        return freelancerSkillModel;
    }

}
