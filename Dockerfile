FROM adoptopenjdk/openjdk11:ubi


EXPOSE 8080

ADD target/hello-worlddv.jar  hello-worlddv.jar



ENTRYPOINT ["java", "-jar", "hello-worlddv.jar"] 