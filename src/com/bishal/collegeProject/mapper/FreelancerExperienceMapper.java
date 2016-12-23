package com.bishal.collegeProject.mapper;



import com.bishal.collegeProject.model.FreelancerExperienceModel;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 10/21/16.
 */
public class FreelancerExperienceMapper {
    public List<FreelancerExperienceModel> mapList(List<Map> list) {

        List<FreelancerExperienceModel> resultList = new ArrayList<FreelancerExperienceModel>();

        FreelancerExperienceModel freelancerExperienceModel;

        if (!list.isEmpty()) {
            for (Map m : list) {
                freelancerExperienceModel = mapRow(m);
                resultList.add(freelancerExperienceModel);
            }
        }

        return resultList;
    }

    public FreelancerExperienceModel mapRow(Map map) {
        System.out.println(map);

        FreelancerExperienceModel freelancerExperienceModel = new FreelancerExperienceModel();

        freelancerExperienceModel.setId(map.get("id").toString());
        freelancerExperienceModel.setCompanyName(map.get("company_name").toString());
        freelancerExperienceModel.setCompanyLocation(map.get("company_location").toString());
        freelancerExperienceModel.setJobTittle(map.get("job_title").toString());
        freelancerExperienceModel.setStartDate(map.get("start_date").toString());
        freelancerExperienceModel.setEndDate(map.get("end_date").toString());
        freelancerExperienceModel.setDescription(map.get("description").toString());
        freelancerExperienceModel.setProfileId(map.get("profile_id").toString());

        return freelancerExperienceModel;
    }
}
