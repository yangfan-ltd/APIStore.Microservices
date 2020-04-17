package com.apistore.microservicedbcacher.controller;


//import com.alibaba.fastjson.JSONArray;
import com.apistore.microservicecore.publicMicroservicesHelper.RedisHelper;
import com.apistore.microservicecore.publicModel.Result;
import com.apistore.microservicecore.publicModel.StatusCode;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import redis.clients.jedis.JedisShardInfo;
import redis.clients.jedis.ShardedJedis;

import javax.servlet.http.HttpServletRequest;
//import redis.clients.jedis.HostAndPort;
//import redis.clients.jedis.Jedis;
//import redis.clients.jedis.JedisCluster;
//
//import java.sql.ResultSet;
//import java.sql.ResultSetMetaData;
//import java.util.HashSet;
//import java.util.Set;

//http://localhost:9003/dbcache_r/dbcache/getDBCache
@RestController
@CrossOrigin  //表示允许跨域访问
@RequestMapping(value = {"/api","/dbcache_r"})
public class DBCacheController {

    @RequestMapping(method = {RequestMethod.GET,RequestMethod.POST},value = "/dbcache/getDBCache",  produces = "application/json;charset=UTF-8")
    public Result GetDBCache(HttpServletRequest request) throws Exception {


//        DBHelper dbHelper=new DBHelper();
//        String sql=" SELECT * FROM  functionmodule ";
//        JSONArray data =dbHelper.executeQuery(sql, null);

//        Set<HostAndPort> jedisClusterNodes = new HashSet<HostAndPort>();
//        //Jedis Cluster will attempt to discover cluster nodes automatically
//        jedisClusterNodes.add(new HostAndPort("127.0.0.1", 7379));
//        JedisCluster jc = new JedisCluster(jedisClusterNodes);
//
//        jc.set("foo", "bar");
//        String value = jc.get("foo");

        String key=request.getParameter("key");
        ShardedJedis jedis = RedisHelper.pool.getResource();
        String value=jedis.get(key);


        return new Result(true, StatusCode.OK,"查询成功!",value);
    }

    @RequestMapping(method = {RequestMethod.GET,RequestMethod.POST},value = "/dbcache/setDBCache",  produces = "application/json;charset=UTF-8")
    public Result SetDBCache(HttpServletRequest request) throws Exception {

        String key=request.getParameter("key");
        String value=request.getParameter("value");
        ShardedJedis jedis = RedisHelper.pool.getResource();

        String res=jedis.set(key,value);


        return new Result(true, StatusCode.OK,"操作成功!",res);
    }
}
