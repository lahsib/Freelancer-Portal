package com.bishal.collegeProject.mapper;



import com.bishal.collegeProject.model.FreelancerEducationModel;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 10/21/16.
 */
public class FreelancerEducationMapper {

    public List<FreelancerEducationModel> mapList(List<Map> list) {

        List<FreelancerEducationModel> resultList = new ArrayList<FreelancerEducationModel>();

        FreelancerEducationModel freelancerEducationModel;

        if (!list.isEmpty()) {
            for (Map m : list) {
                freelancerEducationModel = mapRow(m);
                resultList.add(freelancerEducationModel);
            }
        }

        return resultList;
    }

    public FreelancerEducationModel mapRow(Map map) {
        System.out.println(map);

        FreelancerEducationModel freelancerEducationModel = new FreelancerEducationModel();

        freelancerEducationModel.setId(map.get("id").toString());
        freelancerEducationModel.setName(map.get("name").toString());
        freelancerEducationModel.setDegree(map.get("degree").toString());
        freelancerEducationModel.setStartDate(map.get("start_date").toString());
        freelancerEducationModel.setEndDate(map.get("end_date").toString());
        freelancerEducationModel.setProfileId(map.get("profile_id").toString());

        return freelancerEducationModel;
    }


}
