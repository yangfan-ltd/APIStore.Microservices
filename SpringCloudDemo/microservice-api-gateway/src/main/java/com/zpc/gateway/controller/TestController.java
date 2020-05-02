package com.zpc.gateway.controller;


import com.zpc.gateway.config.JdbcConfigBean;
import com.zpc.gateway.config.ZuulConfigBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@RestController
public class TestController {
    @Autowired
    private JdbcConfigBean jdbcConfigBean;

    @Autowired
    private ZuulConfigBean zuulConfigBean;

    @GetMapping(value = "config")
    public String config(){
        return this.jdbcConfigBean.toString()+"     "+this.zuulConfigBean.toString();
    }

}