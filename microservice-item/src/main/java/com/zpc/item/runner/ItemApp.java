package com.zpc.item.runner;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages={"com.zpc.item.controller","com.zpc.item.service"})//手动指定bean扫描范围
public class ItemApp {
    public static void main(String[] args) {
        SpringApplication.run(ItemApp.class,args);
    }
}
