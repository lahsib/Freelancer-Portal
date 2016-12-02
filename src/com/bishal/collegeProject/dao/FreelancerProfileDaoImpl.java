package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.FreelancerProfileModel;
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
public class FreelancerProfileDaoImpl extends JdbcTemplate implements FreelancerProfileDao {
    public List procFreelanceProfile(FreelancerProfileModel freelancerProfileModel, String flag) {
        String procName="proc_freelanceprofile";

        SimpleJdbcCall call = new SimpleJdbcCall(this);

        call = call.withProcedureName(procName);


        call.addDeclaredParameter(new SqlParameter("in_flag", Types.CHAR));
        call.addDeclaredParameter(new SqlParameter("in_usertype_id", Types.NUMERIC));
        call.addDeclaredParameter(new SqlParameter("in_name",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_description",Types.VARCHAR));


        Map<String, Object> inp = new HashMap<String, Object>();

        inp.put("in_flag", flag);


        Map<String,Object> resultMap = call.execute(inp);

        System.out.println(inp);

        String  keyName=resultMap.keySet().toArray()[0].toString();
        return (ArrayList<Map>) resultMap.get(keyName);
    }
}
