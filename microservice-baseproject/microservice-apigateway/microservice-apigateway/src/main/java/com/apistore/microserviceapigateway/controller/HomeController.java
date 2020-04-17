package com.apistore.microserviceapigateway.controller;


import org.springframework.web.bind.annotation.*;
import com.apistore.microservicecore.publicMicroservicesHelper.HttpHelper;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

@RestController
@CrossOrigin  //表示允许跨域访问
//@RequestMapping("/API")
public class HomeController {

    @RequestMapping(method = {RequestMethod.GET,RequestMethod.POST},value = {"{group}","/{group}","/{group}/*","/{group}/*/*","/{group}/*/*/*"}, produces = "application/json;charset=UTF-8")
    public @ResponseBody String index(HttpServletRequest request,@PathVariable("group") String group){

 

//        , HttpServletResponse response
//        response.setCharacterEncoding("UTF-8");

        //System.out.println("     1"+request.getMethod()+"    2"+request.getQueryString()+"       3"+request.getPathInfo()+"       4"+request.getRequestURI()+"     5"+request.getPathInfo()+"     6"+group+"     7"+request.getParameterNames() +"    8"+request.getParameterMap());
        //1GET    2id=1&tt=2&TTTTT=3&&vvv=23       3null       4/module/home/index     5null     6module     7java.util.Collections$3@427ad3fa


        String apiDomain = "apistore.vip:86";
        String url="http://"+group.toLowerCase()+".api."+apiDomain+request.getRequestURI().toLowerCase();


        
        System.out.println(url);

        String res="";

        try {
            if (request.getMethod().equals("GET"))
            {
                url=url+"?"+request.getQueryString();
                //url="http://user_account.api.apistore.vip:86/user_account/login/login?password=18888880006huiyi&checkcode_img=46856&phone=18888880006";
                res= HttpHelper.get(url);
                String _="";
            }else {

                Map<String,Object> params=new HashMap();

                Enumeration paramNames = request.getParameterNames();
                while (paramNames.hasMoreElements()) {
                    String paramName = (String) paramNames.nextElement();

                    String[] paramValues = request.getParameterValues(paramName);
                    if (paramValues.length == 1) {
                        String paramValue = paramValues[0];
                        //if (paramValue.length() != 0) {
                            //System.out.println("参数：" + paramName + "=" + paramValue);
                        params.put(paramName,paramValue);
                        //}
                    }
                }


//
            res= HttpHelper.post(url,params);
                String _="";
            }
        }catch (Exception ex)
        {
            res="";
        }

        return res;
    }
}