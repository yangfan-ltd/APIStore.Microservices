@echo off
docker run -d --restart=always  -p 8100:8100 -v /www/wwwroot/APIStore.Microservices/SpringCloudDemo:/www/wwwroot/APIStore.Microservices/SpringCloudDemo   --name microservice-eureka-1 java  java -XX:+UseSerialGC -XX:NativeMemoryTracking=summary -Xms64M -Xmx64M -Xss256k  -Dloader.path="/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-eureka/microservice-eureka-lib/" -jar -Dserver.port=8100  /www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-eureka/microservice-eureka-1/microservice-eureka.jar   --spring.config.location=/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-eureka/microservice-eureka-1/application.yml
@echo off 
docker run -d --restart=always  -p 9100:9100 -v /www/wwwroot/APIStore.Microservices/SpringCloudDemo:/www/wwwroot/APIStore.Microservices/SpringCloudDemo   --name microservice-eureka-2 java  java -XX:+UseSerialGC -XX:NativeMemoryTracking=summary -Xms64M -Xmx64M -Xss256k  -Dloader.path="/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-eureka/microservice-eureka-lib/" -jar -Dserver.port=9100  /www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-eureka/microservice-eureka-2/microservice-eureka.jar   --spring.config.location=/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-eureka/microservice-eureka-2/application.yml

@echo off
timeout /T 20 /NOBREAK 
docker run -d --restart=always  -p 7788:7788 -v /www/wwwroot/APIStore.Microservices/SpringCloudDemo:/www/wwwroot/APIStore.Microservices/SpringCloudDemo   --name microservice-config-server-1 java  java -XX:+UseSerialGC -XX:NativeMemoryTracking=summary -Xms64M -Xmx64M -Xss256k  -Dloader.path="/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-config-server/microservice-config-server-lib/" -jar -Dserver.port=7788  /www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-config-server/microservice-config-server-1/microservice-config-server.jar   --spring.config.location=/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-config-server/microservice-config-server-1/application.yml

@echo off
timeout /T 20 /NOBREAK 
docker run -d --restart=always  -p 8081:8081 -v /www/wwwroot/APIStore.Microservices/SpringCloudDemo:/www/wwwroot/APIStore.Microservices/SpringCloudDemo   --name microservice-item-1 java  java -XX:+UseSerialGC -XX:NativeMemoryTracking=summary -Xms64M -Xmx64M -Xss256k  -Dloader.path="/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-lib/" -jar -Dserver.port=8081  /www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-1/microservice-item.jar   --spring.config.location=/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-1/bootstrap.yml
@echo off 
docker run -d --restart=always  -p 8091:8091 -v /www/wwwroot/APIStore.Microservices/SpringCloudDemo:/www/wwwroot/APIStore.Microservices/SpringCloudDemo   --name microservice-item-2 java  java -XX:+UseSerialGC -XX:NativeMemoryTracking=summary -Xms64M -Xmx64M -Xss256k  -Dloader.path="/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-lib/" -jar -Dserver.port=8091  /www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-2/microservice-item.jar   --spring.config.location=/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-2/bootstrap.yml
:: @echo off 
:: timeout /T 20 /NOBREAK
:: start java -Dloader.path="/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-lib/" -jar -XX:+UseSerialGC -XX:NativeMemoryTracking=summary -Xms64M -Xmx64M -Xss256k  -Dserver.port=8011  /www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-3/microservice-item.jar     --spring.config.location=/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-3/application.yml
@echo off 
:: start java -Dloader.path="/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-lib/" -jar -XX:+UseSerialGC -XX:NativeMemoryTracking=summary -Xms64M -Xmx64M -Xss256k  -Dserver.port=8021  /www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-4/microservice-item.jar     --spring.config.location=/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-4/application.yml


@echo off
timeout /T 20 /NOBREAK 
docker run -d --restart=always  -p 8082:8082 -v /www/wwwroot/APIStore.Microservices/SpringCloudDemo:/www/wwwroot/APIStore.Microservices/SpringCloudDemo   --name microservice-order-1 java  java -XX:+UseSerialGC -XX:NativeMemoryTracking=summary -Xms64M -Xmx64M -Xss256k  -Dloader.path="/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-lib/" -Xms64m -Xmx128m -jar -Dserver.port=8082  /www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-1/microservice-order.jar   --spring.config.location=/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-1/application.yml
@echo off 
docker run -d --restart=always  -p 8092:8092 -v /www/wwwroot/APIStore.Microservices/SpringCloudDemo:/www/wwwroot/APIStore.Microservices/SpringCloudDemo   --name microservice-order-2 java  java -XX:+UseSerialGC -XX:NativeMemoryTracking=summary -Xms64M -Xmx64M -Xss256k  -Dloader.path="/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-lib/" -Xms64m -Xmx128m -jar -Dserver.port=8092  /www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-2/microservice-order.jar   --spring.config.location=/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-2/application.yml
:: @echo off 
:: timeout /T 20 /NOBREAK
:: start java -Dloader.path="/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-lib/" -jar -Dserver.port=8012  /www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-3/microservice-order.jar     --spring.config.location=/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-3/application.yml
@echo off 
:: start java -Dloader.path="/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-lib/" -jar -Dserver.port=8022  /www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-4/microservice-order.jar     --spring.config.location=/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-4/application.yml
@echo off 



@echo off
timeout /T 20 /NOBREAK 
docker run -d --restart=always  -p 8086:8086 -v /www/wwwroot/APIStore.Microservices/SpringCloudDemo:/www/wwwroot/APIStore.Microservices/SpringCloudDemo   --name microservice-api-gateway-1 java  java -XX:+UseSerialGC -XX:NativeMemoryTracking=summary -Xms64M -Xmx64M -Xss256k  -Dloader.path="/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-api-gateway/microservice-api-gateway-lib/" -jar -Dserver.port=8086  /www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-api-gateway/microservice-api-gateway-1//microservice-api-gateway.jar   --spring.config.location=/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-api-gateway/microservice-api-gateway-1/bootstrap.yml
@echo off 
docker run -d --restart=always  -p 8087:8087 -v /www/wwwroot/APIStore.Microservices/SpringCloudDemo:/www/wwwroot/APIStore.Microservices/SpringCloudDemo   --name microservice-api-gateway-2 java  java -XX:+UseSerialGC -XX:NativeMemoryTracking=summary -Xms64M -Xmx64M -Xss256k  -Dloader.path="/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-api-gateway/microservice-api-gateway-lib/" -jar -Dserver.port=8087  /www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-api-gateway/microservice-api-gateway-2//microservice-api-gateway.jar   --spring.config.location=/www/wwwroot/APIStore.Microservices/SpringCloudDemo/microservice-api-gateway/microservice-api-gateway-2/bootstrap.yml
pause 

docker ps -a

docker container stop microservice-eureka-1 microservice-eureka-2 microservice-config-server-1 microservice-item-1 microservice-item-2 microservice-order-1 microservice-order-2 microservice-api-gateway-1 microservice-api-gateway-2

docker container rm -f microservice-eureka-1 microservice-eureka-2 microservice-config-server-1 microservice-item-1 microservice-item-2 microservice-order-1 microservice-order-2 microservice-api-gateway-1 microservice-api-gateway-2


 