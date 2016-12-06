package com.bishal.collegeProject.dao;

import com.bishal.collegeProject.model.UserModel;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;

import java.sql.Types;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 11/22/16.
 */
public class UserDaoImpl extends JdbcTemplate implements UserDao {
    public List procUser(UserModel userModel, String flag) {
        String procName="proc_user";

        SimpleJdbcCall call = new SimpleJdbcCall(this);

        call = call.withProcedureName(procName);


        call.addDeclaredParameter(new SqlParameter("in_flag", Types.CHAR));
        call.addDeclaredParameter(new SqlParameter("in_user_id", Types.NUMERIC));
        call.addDeclaredParameter(new SqlParameter("in_user_name",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_password",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_usertype", Types.NUMERIC));

        call.addDeclaredParameter(new SqlParameter("in_name",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_title",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_email",Types.VARCHAR));
        call.addDeclaredParameter(new SqlParameter("in_address",Types.VARCHAR));




        Map<String, Object> inp = new HashMap<String, Object>();

        inp.put("in_flag", flag);

        inp.put("in_user_id",userModel.getId());
        inp.put("in_user_name",userModel.getUserName());
        inp.put("in_password",userModel.getPassword());
        inp.put("in_usertype",userModel.getUserType());
        inp.put("in_name",userModel.getName());
        inp.put("in_title",userModel.getTitle());
        inp.put("in_email",userModel.getEmail());
        inp.put("in_address",userModel.getAddress());



        Map<String,Object> resultMap = call.execute(inp);

        System.out.println(inp);

        String  keyName=resultMap.keySet().toArray()[0].toString();
        return (ArrayList<Map>) resultMap.get(keyName);
    }
}
