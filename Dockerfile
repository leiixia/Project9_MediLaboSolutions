    FROM openjdk:17

    WORKDIR /Project9


    COPY .mvn/ .mvn
    COPY  pom.xml ./
    COPY src ./src


    ENV security.in.memory.username=username \
        security.in.memory.password=password

    EXPOSE 9010

    CMD ["spring-boot:run"]

