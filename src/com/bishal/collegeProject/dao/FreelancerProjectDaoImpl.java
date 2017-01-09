package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.FreelancerProjectModel;
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
public class FreelancerProjectDaoImpl extends JdbcTemplate implements FreelancerProjectDao{
    public List procFreelancerProject(FreelancerProjectModel freelancerProjectModel, String flag) {
        String procName="proc_freelancerProject";

        SimpleJdbcCall call = new SimpleJdbcCall(this);

        call = call.withProcedureName(procName);

        call.addDeclaredParameter(new SqlParameter("in_id", Types.NUMERIC));
        call.addDeclaredParameter(new SqlParameter("in_profile_id", Types.NUMERIC));
        call.addDeclaredParameter(new SqlParameter("in_flag", Types.CHAR));
        call.addDeclaredParameter(new SqlParameter("in_project_name", Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_project_desc",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_project_url",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_time", Types.VARCHAR));



        Map<String, Object> inp = new HashMap<String, Object>();

        inp.put("in_flag", flag);
        inp.put("in_profile_id", freelancerProjectModel.getProfileId());
        inp.put("in_id", freelancerProjectModel.getId());
        inp.put("in_project_name", freelancerProjectModel.getProjectName());
        inp.put("in_project_desc", freelancerProjectModel.getProjectDesc());
        inp.put("in_project_url", freelancerProjectModel.getProjectUrl());
        inp.put("in_time", freelancerProjectModel.getTime());


        Map<String,Object> resultMap = call.execute(inp);

        System.out.println(inp);

        String  keyName=resultMap.keySet().toArray()[0].toString();
        return (ArrayList<Map>) resultMap.get(keyName);
    }
}
