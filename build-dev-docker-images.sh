./mvnw clean package
# projenin oldugu ana dizinde calistiriyorum. Bizim örnegimizde; /home/ec2-user/petclinic-microservices-with-db
docker build --force-rm -t "petclinic-admin-server:dev" ./spring-petclinic-admin-server
# Dockerfile oldugum directory de olmadigi icin -f parameter ile Dockerfile in oldugu klasörü belirtiyorum
# --force-rm komutu intermediate image lari silmek ve bellekte yer edinmesini önlemek icin kullaniyoruz
# docker her bir satiri/layer i sirayla calistirir ve her bir layer da bir intermediate image olusturuyor
docker build --force-rm -t "petclinic-api-gateway:dev" ./spring-petclinic-api-gateway
docker build --force-rm -t "petclinic-config-server:dev" ./spring-petclinic-config-server
docker build --force-rm -t "petclinic-customers-service:dev" ./spring-petclinic-customers-service
docker build --force-rm -t "petclinic-discovery-server:dev" ./spring-petclinic-discovery-server
docker build --force-rm -t "petclinic-hystrix-dashboard:dev" ./spring-petclinic-hystrix-dashboard
docker build --force-rm -t "petclinic-vets-service:dev" ./spring-petclinic-vets-service
docker build --force-rm -t "petclinic-visits-service:dev" ./spring-petclinic-visits-service
docker build --force-rm -t "petclinic-grafana-server:dev" ./docker/grafana
docker build --force-rm -t "petclinic-prometheus-server:dev" ./docker/prometheus