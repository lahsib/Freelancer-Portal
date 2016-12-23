package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.FreelancerDetailModel;
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
public class FreelancerDetailDaoImpl extends JdbcTemplate implements FreelancerDetailDao {
    public List procFreelanceDetail(FreelancerDetailModel freelancerDetailModel, String flag) {
        String procName="proc_freelancedetail";

        SimpleJdbcCall call = new SimpleJdbcCall(this);

        call = call.withProcedureName(procName);

        call.addDeclaredParameter(new SqlParameter("in_profile_id", Types.NUMERIC));
        call.addDeclaredParameter(new SqlParameter("in_flag", Types.CHAR));
        call.addDeclaredParameter(new SqlParameter("in_description", Types.CLOB));
        call.addDeclaredParameter(new SqlParameter("in_price",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_image",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_user_id", Types.NUMERIC));



        Map<String, Object> inp = new HashMap<String, Object>();

        inp.put("in_flag", flag);
        inp.put("in_profile_id", freelancerDetailModel.getDetailId());
        inp.put("in_description", freelancerDetailModel.getDescription());
        inp.put("in_price", freelancerDetailModel.getPrice());
        inp.put("in_image", freelancerDetailModel.getImage());
        inp.put("in_user_id", freelancerDetailModel.getUserId());


        Map<String,Object> resultMap = call.execute(inp);

        System.out.println(inp);

        String  keyName=resultMap.keySet().toArray()[0].toString();
        return (ArrayList<Map>) resultMap.get(keyName);
    }
}
