@echo off
start java -jar -Dserver.port=8086  C:\iWork\APIStore.Microservices\SpringCloud\microsrvice-api-gateway\target\microsrvice-api-gateway.jar
@echo off
start java -jar -Dserver.port=7788  C:\iWork\APIStore.Microservices\SpringCloud\microservice-config-server\target\microsrvice-api-gateway.jar
@echo off
timeout /T 10 /NOBREAK
start java -jar -Dserver.port=8100  C:\iWork\APIStore.Microservices\SpringCloud\demo\target\microservice.eureka.jar
@echo off
start java -jar -Dserver.port=9100  C:\iWork\APIStore.Microservices\SpringCloud\demo\target\microservice.eureka.jar
@echo off
timeout /T 10 /NOBREAK
start java -jar -Dserver.port=8081  C:\iWork\APIStore.Microservices\SpringCloud\microservice-item\target\microservice-item.jar
@echo off
start java -jar -Dserver.port=8091  C:\iWork\APIStore.Microservices\SpringCloud\microservice-item\target\microservice-item.jar 
@echo off
timeout /T 10 /NOBREAK
start java -jar -Dserver.port=8082  C:\iWork\APIStore.Microservices\SpringCloud\microservice-order\target\microservice-order.jar
@echo off

pause 



