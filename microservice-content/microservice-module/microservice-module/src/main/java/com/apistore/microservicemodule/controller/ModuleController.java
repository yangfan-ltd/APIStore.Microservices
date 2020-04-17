package com.apistore.microservicemodule.controller;



import com.alibaba.fastjson.JSONArray;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.apistore.microservicecore.publicMicroservicesHelper.DBHelper;
import com.apistore.microservicecore.publicModel.Result;
import com.apistore.microservicecore.publicModel.StatusCode;


import javax.servlet.http.HttpServletRequest;


//http://localhost:9001/module/module/getModuleList
@RestController
@CrossOrigin  //表示允许跨域访问
@RequestMapping(value = {"/api","/module"})
public class ModuleController {
    //    @RequestMapping(method = RequestMethod.GET,value = "/Module/GetModuleList")
    //    public String GetModuleList(){
    //        return "OKOK";
    //    }
    @RequestMapping(method = {RequestMethod.GET,RequestMethod.POST},value = "/module/getModuleList",  produces = "application/json;charset=UTF-8")
    public Result GetModuleList(HttpServletRequest request) throws Exception {


        DBHelper dbHelper=new DBHelper();
        String sql=" SELECT * FROM  functionmodule ";

//		Object a = (MeetingUser)Class.forName("Microservice.Model.MeetingUser").newInstance();

        JSONArray data =dbHelper.executeQuery(sql, null);
        return new Result(true, StatusCode.OK,"查询成功!",data);
    }
}
