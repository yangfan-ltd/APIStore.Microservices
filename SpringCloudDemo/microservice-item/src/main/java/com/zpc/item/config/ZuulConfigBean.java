package com.zpc.item.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.stereotype.Component;

/**
 * @author ：author
 * @date ：Created in 2020-05-02 12:52
 * @description：
 * @modified By：
 * @version:
 */

@Component
@RefreshScope
public class ZuulConfigBean {
    @Value("${zuul.routes.item-service.path}")
    private String path;
    @Value("${zuul.routes.item-service.serviceid}")
    private String serviceid;

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getServiceid() {
        return serviceid;
    }

    public void setServiceid(String serviceid) {
        this.serviceid = serviceid;
    }

    @Override
    public String toString() {
        return "ZuulConfigBean{" +
                "path='" + path + '\'' +
                ", serviceid='" + serviceid + '\'' +
                '}';
    }
}
