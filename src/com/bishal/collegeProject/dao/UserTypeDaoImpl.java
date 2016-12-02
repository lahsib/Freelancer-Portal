package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.UserTypeModel;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;

import java.sql.Types;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 10/3/16.
 */
public class UserTypeDaoImpl extends JdbcTemplate implements UserTypeDao{

    public List procUserType(UserTypeModel userTypeModel, String flag) {

        String procName="proc_usertype";

        SimpleJdbcCall call = new SimpleJdbcCall(this);

        call = call.withProcedureName(procName);


        call.addDeclaredParameter(new SqlParameter("in_flag", Types.CHAR));
        call.addDeclaredParameter(new SqlParameter("in_usertype_id", Types.NUMERIC));
        call.addDeclaredParameter(new SqlParameter("in_name",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_description",Types.VARCHAR));


        Map<String, Object> inp = new HashMap<String, Object>();

            inp.put("in_flag", flag);

            inp.put("in_usertype_id",userTypeModel.getUserTypeId());
            inp.put("in_name",userTypeModel.getName());
            inp.put("in_description",userTypeModel.getDescription());

        Map<String,Object> resultMap = call.execute(inp);

        System.out.println(inp);

        String  keyName=resultMap.keySet().toArray()[0].toString();
        return (ArrayList<Map>) resultMap.get(keyName);
    }
}
