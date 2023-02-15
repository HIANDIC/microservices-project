# jar file elde etmek icin app imizi package liyoruz (paketleme yapiyoruz)
# microservice lerin image larindan paketleme islemi yapiyoruz
# burada container olusturuyoruz ve olusan container da <mvn clean package> komutunu calistiriyoruz. bu komut calisanca da target klasörü altinda artifact leri olusturuyor (jar file, vb.)
# project imin root dizinini (diger bir ifade ile projemin ana klasörünü/proje nin bütün klasör ve file larini) container icerisindeki app folder ina mount ediyoruz.
# -w /app flag i ile de pom.xml file ini bulabilmesi icin /app folder ini working directory olarak tanimliyoruz
# maven:3.6-openjdk-11 image indan container i olusturuyoruz. Bu sekilde local host umuza/makinemize maven yüklemeden container icerisinde mvn komutunu calistirabildik
docker run --rm -v $HOME/.m2:/root/.m2 -v $WORKSPACE:/app -w /app maven:3.6-openjdk-11 mvn clean package