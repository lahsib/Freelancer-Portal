package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.FreelancerExperienceModel;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;

import java.sql.Types;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 10/21/16.
 */
public class FreelancerExperienceDaoImpl extends JdbcTemplate implements FreelancerExperienceDao{
    public List procFreelancerExperience(FreelancerExperienceModel freelancerExperienceModel, String flag) {
        String procName="proc_experience";

        SimpleJdbcCall call = new SimpleJdbcCall(this);

        call = call.withProcedureName(procName);

        call.addDeclaredParameter(new SqlParameter("in_id", Types.NUMERIC));
        call.addDeclaredParameter(new SqlParameter("in_profile_id", Types.NUMERIC));
        call.addDeclaredParameter(new SqlParameter("in_flag", Types.CHAR));
        call.addDeclaredParameter(new SqlParameter("in_company_name", Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_company_location",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_start_date",Types.DATE));
        call.addDeclaredParameter(new SqlParameter("in_end_date", Types.DATE));
        call.addDeclaredParameter(new SqlParameter("in_job_title",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_description",Types.VARCHAR));


        Map<String, Object> inp = new HashMap<String, Object>();

        inp.put("in_flag", flag);
        inp.put("in_profile_id", freelancerExperienceModel.getProfileId());
        inp.put("in_id", freelancerExperienceModel.getId());
        inp.put("in_company_name", freelancerExperienceModel.getCompanyName());
        inp.put("in_company_location", freelancerExperienceModel.getCompanyLocation());
        inp.put("in_start_date", freelancerExperienceModel.getStartDate());
        inp.put("in_end_date", freelancerExperienceModel.getEndDate());
        inp.put("in_job_title", freelancerExperienceModel.getJobTittle());
        inp.put("in_description", freelancerExperienceModel.getDescription());


        Map<String,Object> resultMap = call.execute(inp);

        System.out.println(inp);

        String  keyName=resultMap.keySet().toArray()[0].toString();
        return (ArrayList<Map>) resultMap.get(keyName);
    }
}
