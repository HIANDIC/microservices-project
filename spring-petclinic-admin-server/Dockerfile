FROM openjdk:11-jre
# uzerinde sadece run islemi yapilacagi icin jre yani java runtime environment kullaniyoruz
ARG DOCKERIZE_VERSION=v0.6.1
# ARG, argument demektir. Bu sayede versiyonu buradan, tek bir yerden kolayca yönetebiliriz, degistirebiliriz. Dockerfile a disaridan argument göndermemize olanak sagliyor.
ARG EXPOSED_PORT=9090
ENV SPRING_PROFILES_ACTIVE docker,mysql
# yukaridaki environment tanimi ile; profil tanimlamazsak local de calisir. Bunu nerden anliyoruz; "bootstrap.yml" file da bu belirtiliyor. Profil tanimlamazsak; local de calisiyor, profil i aktive edersek bu profile göre calisiyor. Burada belirtilen profil ler "bootstrap.yml" file dan geliyor. mysql profile ihtiyaci ise dokümantasyonda belirtiliyor ve docker kullaniyorsan mysql profili kullanmak zorunda oldugumuz belirtilmis. Bu nedenle buradaki profile mysql i de eklemis olduk.
ADD https://github.com/jwilder/dockerize/releases/download/${DOCKERIZE_VERSION}/dockerize-alpine-linux-amd64-${DOCKERIZE_VERSION}.tar.gz dockerize.tar.gz
RUN tar -xzf dockerize.tar.gz
RUN chmod +x dockerize
ADD ./target/*.jar /app.jar
EXPOSE ${EXPOSED_PORT}
# buradaki expose ile belirtilen port bilgi amacli sadece metadata icin, hicbir seye etkisi yok
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
# Linux sistemlerde "/dev/./urandom" file bulunuyor. urandom havuz dolmadan bize eldeki entropiden veri alir ve bize verir. random havuz dolmadan bize bir veri döndürmez. Ancak random urandom a göre daha kuvvetli ve güvenli sifre vermis oluyor.
# "-Djava.security.egd=file:/dev/./urandom" java nin security parametresi