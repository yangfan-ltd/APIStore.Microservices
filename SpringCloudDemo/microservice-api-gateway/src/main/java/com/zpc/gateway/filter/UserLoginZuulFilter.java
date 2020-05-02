package com.zpc.gateway.filter;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
//import com.zpc.gateway.config.ZuulConfigBean;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

@Component
//@ComponentScan(basePackages = "com.zpc.gateway.config")
public class UserLoginZuulFilter extends ZuulFilter {
    public boolean shouldFilter(){
        return true;//过滤器需要执行
    }




    @Override
    public Object run() {




//        com.zpc.gateway.ApiGatewayApplication apiGatewayApplication=new com.zpc.gateway.ApiGatewayApplication();
//        apiGatewayApplication.zuulProperties();


        RequestContext requestContext = RequestContext.getCurrentContext();
        HttpServletRequest request = requestContext.getRequest();
        String token = request.getParameter("token");
        if(StringUtils.isEmpty(token)){
            requestContext.setSendZuulResponse(false); // 过滤该请求，不对其进行路由
            requestContext.setResponseStatusCode(401); // 设置响应状态码
            requestContext.setResponseBody(" token is empty!!"); // 设置响应状态码
            return null;
        }
        return null;
    }

    @Override
    public String filterType() {
        return "pre"; // 设置过滤器类型为：pre
    }

    @Override
    public int filterOrder() {
        return 0;// 设置执行顺序为0
    }
}
