package microservice.microservice_cache_m.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import publicMicroservicesHelper.MemcachedHelper;
import publicModel.Result;
import publicModel.StatusCode;

import javax.servlet.http.HttpServletRequest;
import java.security.Key;

@RestController
@CrossOrigin  //表示允许跨域访问
@RequestMapping(value = {"/api","/cache_m"})
public class CacheController {

    @RequestMapping(method = {RequestMethod.GET,RequestMethod.POST},value = "/cache/getCache",  produces = "application/json;charset=UTF-8")
    public Result GetCache(HttpServletRequest request) throws Exception {

        String key=request.getParameter("key");
        Object value=MemcachedHelper.get(key);

        return new Result(true, StatusCode.OK,"查询成功!",value);
    }

    @RequestMapping(method = {RequestMethod.GET,RequestMethod.POST},value = "/cache/setCache",  produces = "application/json;charset=UTF-8")
    public Result SetCache(HttpServletRequest request) throws Exception {

        String key=request.getParameter("key");
        String value=request.getParameter("value");
//        ShardedJedis jedis = RedisHelper.pool.getResource();
//        String res=jedis.set(key,value);

        boolean res=MemcachedHelper.set(key,value);
        if (res){
            return new Result(true, StatusCode.OK,"操作成功!",res);
        }else{
            return new Result(true, StatusCode.ERROR,"操作失败!",res);
        }


    }
}
