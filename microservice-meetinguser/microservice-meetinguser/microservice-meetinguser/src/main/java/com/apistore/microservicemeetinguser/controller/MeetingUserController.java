package com.apistore.microservicemeetinguser.controller;

import com.apistore.microservicecore.publicModel.Result;
import com.apistore.microservicecore.publicModel.StatusCode;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin  //表示允许跨域访问
@RequestMapping({"/api","meetinguser"})
public class MeetingUserController {
    @RequestMapping(method = RequestMethod.GET,value = "/meetinguser/getMeetingUserList", produces = "application/json;charset=UTF-8")
    public Result GetMeetingUserList(){
        //return "OKOK";
        return new Result(true, StatusCode.OK,"查询成功");
    }

}
