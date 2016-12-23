package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.FreelancerEducationModel;
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
public class FreelancerEducationDaoImpl extends JdbcTemplate implements FreelancerEducationDao {
    public List procFreelancerEducation(FreelancerEducationModel freelancerEducationModel, String flag) {
        String procName="proc_education";

        SimpleJdbcCall call = new SimpleJdbcCall(this);

        call = call.withProcedureName(procName);

        call.addDeclaredParameter(new SqlParameter("in_id", Types.NUMERIC));
        call.addDeclaredParameter(new SqlParameter("in_profile_id", Types.NUMERIC));
        call.addDeclaredParameter(new SqlParameter("in_flag", Types.CHAR));
        call.addDeclaredParameter(new SqlParameter("in_name", Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_degree",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_start_date",Types.DATE));
        call.addDeclaredParameter(new SqlParameter("in_end_date", Types.DATE));



        Map<String, Object> inp = new HashMap<String, Object>();

        inp.put("in_flag", flag);
        inp.put("in_profile_id", freelancerEducationModel.getProfileId());
        inp.put("in_id", freelancerEducationModel.getId());
        inp.put("in_name", freelancerEducationModel.getName());
        inp.put("in_degree", freelancerEducationModel.getDegree());
        inp.put("in_start_date", freelancerEducationModel.getStartDate());
        inp.put("in_end_date", freelancerEducationModel.getEndDate());


        Map<String,Object> resultMap = call.execute(inp);

        System.out.println(inp);

        String  keyName=resultMap.keySet().toArray()[0].toString();
        return (ArrayList<Map>) resultMap.get(keyName);
    }
}
