@echo off
timeout /T 20 /NOBREAK
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloud/microservice-eureka/microservice-eureka-lib/" -jar -Dserver.port=8100  C:/iWork/APIStore.Microservices/SpringCloud/microservice-eureka/target/microservice-eureka.jar
@echo off
timeout /T 20 /NOBREAK
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloud/microservice-eureka/microservice-eureka-lib/" -jar -Dserver.port=9100  C:/iWork/APIStore.Microservices/SpringCloud/microservice-eureka/target/microservice-eureka.jar
@echo off
timeout /T 20 /NOBREAK
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloud/microsrvice-api-gateway/microsrvice-api-gateway-lib/" -jar -Dserver.port=8086  C:/iWork/APIStore.Microservices/SpringCloud/microsrvice-api-gateway/target/microsrvice-api-gateway.jar
@echo off
timeout /T 20 /NOBREAK
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloud/microservice-config-server/microservice-config-server-lib/" -jar -Dserver.port=7788  C:/iWork/APIStore.Microservices/SpringCloud/microservice-config-server/target/microservice-config-server.jar
@echo off
timeout /T 20 /NOBREAK
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloud/microservice-item/microservice-item-lib/" -jar -Dserver.port=8081  C:/iWork/APIStore.Microservices/SpringCloud/microservice-item/target/microservice-item.jar
@echo off
timeout /T 20 /NOBREAK
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloud/microservice-item/microservice-item-lib/" -jar -Dserver.port=8091  C:/iWork/APIStore.Microservices/SpringCloud/microservice-item/target/microservice-item.jar 
@echo off
timeout /T 20 /NOBREAK
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloud/microservice-order/microservice-order-lib/" -jar -Dserver.port=8082  C:/iWork/APIStore.Microservices/SpringCloud/microservice-order/target/microservice-order.jar
@echo off 
pause 



@echo off
timeout /T 20 /NOBREAK
start java -jar -Dserver.port=8100  C:/iWork/APIStore.Microservices/SpringCloud/microservice-eureka/target/microservice-eureka.jar
@echo off
timeout /T 20 /NOBREAK
start java -jar -Dserver.port=9100  C:/iWork/APIStore.Microservices/SpringCloud/microservice-eureka/target/microservice-eureka.jar
@echo off
timeout /T 20 /NOBREAK
start java -jar -Dserver.port=8086  C:/iWork/APIStore.Microservices/SpringCloud/microsrvice-api-gateway/target/microsrvice-api-gateway.jar
@echo off
timeout /T 20 /NOBREAK
start java -jar -Dserver.port=7788  C:/iWork/APIStore.Microservices/SpringCloud/microservice-config-server/target/microservice-config-server.jar
@echo off
timeout /T 20 /NOBREAK
start java -jar -Dserver.port=8081  C:/iWork/APIStore.Microservices/SpringCloud/microservice-item/target/microservice-item.jar
@echo off
timeout /T 20 /NOBREAK
start java -jar -Dserver.port=8091  C:/iWork/APIStore.Microservices/SpringCloud/microservice-item/target/microservice-item.jar 
@echo off
timeout /T 20 /NOBREAK
start java -jar -Dserver.port=8082  C:/iWork/APIStore.Microservices/SpringCloud/microservice-order/target/microservice-order.jar
@echo off 
pause 