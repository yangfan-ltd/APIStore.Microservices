@echo off
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-eureka/microservice-eureka-lib/" -jar -Dserver.port=8100  C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-eureka/microservice-eureka-1/microservice-eureka.jar   --spring.config.location=C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-eureka/microservice-eureka-1/application.yml
@echo off 
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-eureka/microservice-eureka-lib/" -jar -Dserver.port=9100  C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-eureka/microservice-eureka-2/microservice-eureka.jar   --spring.config.location=C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-eureka/microservice-eureka-2/application.yml

@echo off
timeout /T 20 /NOBREAK
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-config-server/microservice-config-server-lib/" -jar -Dserver.port=7788  C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-config-server/microservice-config-server-1/microservice-config-server.jar     --spring.config.location=C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-config-server/microservice-config-server-1/application.yml

@echo off
timeout /T 20 /NOBREAK
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-lib/" -jar -Dserver.port=8081  C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-1/microservice-item.jar     --spring.config.location=C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-1/application.yml
@echo off 
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-lib/" -jar -Dserver.port=8091  C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-2/microservice-item.jar     --spring.config.location=C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-2/application.yml
:: @echo off 
:: timeout /T 20 /NOBREAK
:: start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-lib/" -jar -Dserver.port=8011  C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-3/microservice-item.jar     --spring.config.location=C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-3/application.yml
@echo off 
:: start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-lib/" -jar -Dserver.port=8021  C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-4/microservice-item.jar     --spring.config.location=C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-item/microservice-item-4/application.yml


@echo off
timeout /T 20 /NOBREAK
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-lib/" -jar -Dserver.port=8082  C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-1/microservice-order.jar     --spring.config.location=C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-1/application.yml
@echo off 
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-lib/" -jar -Dserver.port=8092  C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-2/microservice-order.jar     --spring.config.location=C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-2/application.yml
:: @echo off 
:: timeout /T 20 /NOBREAK
:: start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-lib/" -jar -Dserver.port=8012  C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-3/microservice-order.jar     --spring.config.location=C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-3/application.yml
@echo off 
:: start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-lib/" -jar -Dserver.port=8022  C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-4/microservice-order.jar     --spring.config.location=C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-order/microservice-order-4/application.yml
@echo off 



@echo off
timeout /T 20 /NOBREAK
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-api-gateway/microservice-api-gateway-lib/" -jar -Dserver.port=8086  C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-api-gateway/microservice-api-gateway-1/microservice-api-gateway.jar     --spring.config.location=C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-api-gateway/microservice-api-gateway-1/bootstrap.yml
@echo off 
start java -Dloader.path="C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-api-gateway/microservice-api-gateway-lib/" -jar -Dserver.port=8087  C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-api-gateway/microservice-api-gateway-2/microservice-api-gateway.jar     --spring.config.location=C:/iWork/APIStore.Microservices/SpringCloudDemo/microservice-api-gateway/microservice-api-gateway-2/bootstrap.yml
pause 


 